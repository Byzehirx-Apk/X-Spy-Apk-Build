.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$AnimationInfo;,
        Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mMenuVisible:Z

.field mParentFragment:Landroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mViewModelStore:Landroidx/lifecycle/ViewModelStore;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    .line 90
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 108
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 120
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    .line 199
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 218
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 247
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/LifecycleRegistry;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 254
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 411
    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;
    .locals 5

    .prologue
    .line 2747
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2748
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/Fragment$AnimationInfo;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 2750
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 10
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    :try_start_0
    sget-object v5, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    move-object v3, v5

    .line 438
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v3

    if-nez v5, :cond_0

    .line 440
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 441
    sget-object v5, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 443
    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 444
    .local v4, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 445
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 446
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 448
    :cond_1
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 449
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 450
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Landroidx/fragment/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 453
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 454
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Landroidx/fragment/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 457
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 458
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Landroidx/fragment/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 461
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 462
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Landroidx/fragment/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": could not find Fragment constructor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 464
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v5

    move-object v3, v5

    .line 465
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Landroidx/fragment/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": calling Fragment constructor caused an exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v2, v3

    .line 481
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 483
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 484
    sget-object v3, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 486
    :cond_0
    const-class v3, Landroidx/fragment/app/Fragment;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 488
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v0

    .line 487
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 488
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method callStartTransitionListener()V
    .locals 4

    .prologue
    .line 2272
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v2, :cond_1

    .line 2273
    const/4 v2, 0x0

    move-object v1, v2

    .line 2279
    .local v1, "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2280
    move-object v2, v1

    invoke-interface {v2}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2282
    :cond_0
    return-void

    .line 2275
    .end local v1    # "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2276
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    move-object v1, v2

    .line 2277
    .restart local v1    # "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 2294
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mFragmentId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2295
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    move-object v5, v3

    const-string/jumbo v6, " mContainerId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    move-object v5, v3

    const-string/jumbo v6, " mTag="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2300
    move-object v5, v3

    const-string/jumbo v6, " mIndex="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2301
    move-object v5, v3

    const-string/jumbo v6, " mWho="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    move-object v5, v3

    const-string/jumbo v6, " mBackStackNesting="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2303
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mAdded="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2304
    move-object v5, v3

    const-string/jumbo v6, " mRemoving="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2305
    move-object v5, v3

    const-string/jumbo v6, " mFromLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2306
    move-object v5, v3

    const-string/jumbo v6, " mInLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2307
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mHidden="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2308
    move-object v5, v3

    const-string/jumbo v6, " mDetached="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2309
    move-object v5, v3

    const-string/jumbo v6, " mMenuVisible="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2310
    move-object v5, v3

    const-string/jumbo v6, " mHasMenu="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2311
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mRetainInstance="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2312
    move-object v5, v3

    const-string/jumbo v6, " mRetaining="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mRetaining:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2313
    move-object v5, v3

    const-string/jumbo v6, " mUserVisibleHint="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2314
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 2315
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mFragmentManager="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2316
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v5, :cond_1

    .line 2319
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mHost="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2322
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 2323
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mParentFragment="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 2327
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mArguments="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2329
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 2330
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mSavedFragmentState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2333
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    .line 2334
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mSavedViewState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_6

    .line 2338
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mTarget="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2339
    move-object v5, v3

    const-string/jumbo v6, " mTargetRequestCode="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2342
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v5

    if-eqz v5, :cond_7

    .line 2343
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mNextAnim="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2345
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 2346
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mContainer="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2348
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 2349
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2351
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 2352
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mInnerView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2354
    :cond_a
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2355
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2356
    move-object v5, v3

    const-string/jumbo v6, "mAnimatingAway="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2358
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    move-object v5, v3

    const-string/jumbo v6, "mStateAfterAnimating="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2362
    :cond_b
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2363
    move-object v5, v0

    invoke-static {v5}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2365
    :cond_c
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_d

    .line 2366
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2369
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .prologue
    .line 2372
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "who":Ljava/lang/String;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2373
    move-object v2, v0

    move-object v0, v2

    .line 2378
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .line 2375
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2376
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2378
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 2

    .prologue
    .line 2178
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2179
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .line 2178
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2179
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 2

    .prologue
    .line 2203
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2204
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .line 2203
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2204
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 2

    .prologue
    .line 2805
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2806
    const/4 v1, 0x0

    move-object v0, v1

    .line 2808
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    move-object v0, v1

    goto :goto_0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 2820
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2821
    const/4 v1, 0x0

    move-object v0, v1

    .line 2823
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 845
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 846
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 847
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 856
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0

    .line 848
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 849
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 850
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 851
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 852
    :cond_3
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 853
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1961
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 1962
    const/4 v1, 0x0

    move-object v0, v1

    .line 1964
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 2

    .prologue
    .line 2791
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2792
    const/4 v1, 0x0

    move-object v0, v1

    .line 2794
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    move-object v0, v1

    goto :goto_0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2040
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2041
    const/4 v1, 0x0

    move-object v0, v1

    .line 2043
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 2

    .prologue
    .line 2798
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2799
    const/4 v1, 0x0

    move-object v0, v1

    .line 2801
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getId()I
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 1292
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 1293
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v0, v1

    .line 1295
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    goto :goto_0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedFragmentState":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 1327
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1330
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 1331
    .local v2, "result":Landroid/view/LayoutInflater;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 1332
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1333
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method getNextAnim()I
    .locals 2

    .prologue
    .line 2754
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2755
    const/4 v1, 0x0

    move v0, v1

    .line 2757
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    move v0, v1

    goto :goto_0
.end method

.method getNextTransition()I
    .locals 2

    .prologue
    .line 2768
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2769
    const/4 v1, 0x0

    move v0, v1

    .line 2771
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    move v0, v1

    goto :goto_0
.end method

.method getNextTransitionStyle()I
    .locals 2

    .prologue
    .line 2784
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2785
    const/4 v1, 0x0

    move v0, v1

    .line 2787
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    move v0, v1

    goto :goto_0
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2078
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2079
    const/4 v1, 0x0

    move-object v0, v1

    .line 2081
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 2

    .prologue
    .line 982
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2001
    const/4 v1, 0x0

    move-object v0, v1

    .line 2003
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    goto :goto_1
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2111
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2112
    const/4 v1, 0x0

    move-object v0, v1

    .line 2114
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2149
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2150
    const/4 v1, 0x0

    move-object v0, v1

    .line 2153
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .line 2152
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 2153
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    goto :goto_1
.end method

.method getStateAfterAnimating()I
    .locals 2

    .prologue
    .line 2827
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2828
    const/4 v1, 0x0

    move v0, v1

    .line 2830
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    move v0, v1

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "formatArgs":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 2

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v1, :cond_1

    .line 331
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/ViewModelStore;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 333
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    .line 1743
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 1744
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 1745
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1746
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1747
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 1748
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1749
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 1750
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 1751
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1752
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1753
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1754
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 1755
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1756
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 1757
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1758
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1759
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 1760
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 7

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_0

    .line 2383
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Fragment has not been attached yet."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2385
    :cond_0
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2386
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    new-instance v3, Landroidx/fragment/app/Fragment$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 2406
    return-void
.end method

.method public final isAdded()Z
    .locals 2

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 2

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mDetached:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final isHidden()Z
    .locals 2

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method isHideReplaced()Z
    .locals 2

    .prologue
    .line 2845
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2846
    const/4 v1, 0x0

    move v0, v1

    .line 2848
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    move v0, v1

    goto :goto_0
.end method

.method final isInBackStack()Z
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 2

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method isPostponed()Z
    .locals 2

    .prologue
    .line 2838
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_0

    .line 2839
    const/4 v1, 0x0

    move v0, v1

    .line 2841
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    move v0, v1

    goto :goto_0
.end method

.method public final isRemoving()Z
    .locals 2

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public final isResumed()Z
    .locals 3

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isStateSaved()Z
    .locals 2

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 605
    const/4 v1, 0x0

    move v0, v1

    .line 607
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 928
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method noteStateNotSaved()V
    .locals 2

    .prologue
    .line 2514
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2515
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2517
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1596
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1135
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1436
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1419
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 1420
    .local v2, "hostActivity":Landroid/app/Activity;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1421
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1422
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1424
    :cond_0
    return-void

    .line 1419
    .end local v2    # "hostActivity":Landroid/app/Activity;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    goto :goto_0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 1410
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1680
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1911
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1497
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1498
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v3, 0x1

    .line 1499
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1500
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1502
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    .line 1454
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "transit":I
    move v2, p2

    .local v2, "enter":Z
    move v3, p3

    .local v3, "nextAnim":I
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 5

    .prologue
    .line 1474
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "transit":I
    move v2, p2

    .local v2, "enter":Z
    move v3, p3

    .local v3, "nextAnim":I
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    .line 1865
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "menu":Landroid/view/ContextMenu;
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    move-object v3, p3

    .local v3, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1866
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1785
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1553
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, p2

    .local v2, "container":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public onDestroy()V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1728
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1729
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object v1, v3

    .line 1730
    .local v1, "activity":Landroidx/fragment/app/FragmentActivity;
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1731
    .local v2, "isChangingConfigurations":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    .line 1732
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v3}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 1734
    :cond_0
    return-void

    .line 1730
    .end local v2    # "isChangingConfigurations":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1812
    return-void
.end method

.method public onDestroyView()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1720
    return-void
.end method

.method public onDetach()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1768
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1769
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 961
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1398
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1380
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1381
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move-object v4, v5

    .line 1382
    .local v4, "hostActivity":Landroid/app/Activity;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1383
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1384
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1386
    :cond_0
    return-void

    .line 1381
    .end local v4    # "hostActivity":Landroid/app/Activity;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v5

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1706
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1665
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1833
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1844
    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1689
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1690
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 1674
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1802
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1237
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1633
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1655
    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1621
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1622
    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1699
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1700
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1567
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1612
    return-void
.end method

.method peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 2455
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2456
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2458
    :cond_0
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    .line 2459
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2460
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2461
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 2462
    new-instance v2, Landroidx/fragment/app/SuperNotCalledException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " did not call through to super.onActivityCreated()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2465
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_2

    .line 2466
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2468
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 2534
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2535
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2536
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2538
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2601
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2602
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2603
    const/4 v2, 0x1

    move v0, v2

    .line 2611
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .line 2605
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2606
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2607
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2611
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 2409
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2410
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2412
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    .line 2413
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2414
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2415
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2416
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 2417
    new-instance v2, Landroidx/fragment/app/SuperNotCalledException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " did not call through to super.onCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2420
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2421
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .prologue
    .line 2557
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, p2

    .local v2, "inflater":Landroid/view/MenuInflater;
    const/4 v4, 0x0

    move v3, v4

    .line 2558
    .local v3, "show":Z
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v4, :cond_1

    .line 2559
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_0

    .line 2560
    const/4 v4, 0x1

    move v3, v4

    .line 2561
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2563
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v4, :cond_1

    .line 2564
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2567
    :cond_1
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2425
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, p2

    .local v2, "container":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v4, :cond_0

    .line 2426
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2428
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2429
    move-object v4, v0

    new-instance v5, Landroidx/fragment/app/Fragment$3;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2438
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2439
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2440
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 2442
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    .line 2444
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2452
    :goto_0
    return-void

    .line 2446
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v4, :cond_2

    .line 2447
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2450
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    goto :goto_0
.end method

.method performDestroy()V
    .locals 6

    .prologue
    .line 2692
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2693
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2694
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2696
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2697
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2698
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2699
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2700
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2701
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2704
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2705
    return-void
.end method

.method performDestroyView()V
    .locals 6

    .prologue
    .line 2670
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2671
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2673
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2674
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2676
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2677
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2678
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2679
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_2

    .line 2680
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onDestroyView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2687
    :cond_2
    move-object v1, v0

    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->markForRedelivery()V

    .line 2688
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2689
    return-void
.end method

.method performDetach()V
    .locals 6

    .prologue
    .line 2708
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2709
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2710
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2711
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_0

    .line 2712
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onDetach()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2719
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2720
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_1

    .line 2721
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Child FragmentManager of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2724
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2725
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2727
    :cond_2
    return-void
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 1309
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1310
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method performLowMemory()V
    .locals 2

    .prologue
    .line 2541
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2542
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2543
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2545
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 4

    .prologue
    .line 2520
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "isInMultiWindowMode":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2521
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2522
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2524
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2585
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2586
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2587
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2588
    const/4 v2, 0x1

    move v0, v2

    .line 2597
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .line 2591
    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2592
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2593
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2597
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 4

    .prologue
    .line 2615
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2616
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2617
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2619
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2620
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2623
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 6

    .prologue
    .line 2636
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2637
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2639
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2640
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2641
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 2643
    :cond_1
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2644
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2645
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2646
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_2

    .line 2647
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2650
    :cond_2
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 4

    .prologue
    .line 2527
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "isInPictureInPictureMode":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2528
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2529
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2531
    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 2571
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    const/4 v3, 0x0

    move v2, v3

    .line 2572
    .local v2, "show":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    .line 2573
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 2574
    const/4 v3, 0x1

    move v2, v3

    .line 2575
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2577
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v3, :cond_1

    .line 2578
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 2581
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return v0
.end method

.method performResume()V
    .locals 6

    .prologue
    .line 2492
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2493
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2494
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2496
    :cond_0
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2497
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2498
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2499
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2500
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onResume()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2503
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2504
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 2505
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2507
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2508
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2509
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2511
    :cond_3
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 2626
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2627
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 2628
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 2629
    .local v2, "p":Landroid/os/Parcelable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2630
    move-object v3, v1

    const-string/jumbo v4, "android:support:fragments"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2633
    .end local v2    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 6

    .prologue
    .line 2471
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2472
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2473
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2475
    :cond_0
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2476
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2477
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2478
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2479
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onStart()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2482
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2483
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 2485
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2486
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2487
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2489
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 6

    .prologue
    .line 2653
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2654
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2656
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2657
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2658
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 2660
    :cond_1
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 2661
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2662
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2663
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v1, :cond_2

    .line 2664
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onStop()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2667
    :cond_2
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 3

    .prologue
    .line 2238
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2239
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1879
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1880
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1211
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "permissions":[Ljava/lang/String;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 1212
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1215
    return-void
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v1, v2

    .line 723
    .local v1, "activity":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 724
    new-instance v2, Ljava/lang/IllegalStateException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not attached to an activity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 695
    .local v1, "context":Landroid/content/Context;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 696
    new-instance v2, Ljava/lang/IllegalStateException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not attached to a context."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    move-object v1, v2

    .line 831
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 832
    new-instance v2, Ljava/lang/IllegalStateException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not associated with a fragment manager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 749
    .local v1, "host":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 750
    new-instance v2, Ljava/lang/IllegalStateException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not attached to a host."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1517
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 1518
    move-object v3, v1

    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 1520
    .local v2, "p":Landroid/os/Parcelable;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1521
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v3, :cond_0

    .line 1522
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 1524
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 1525
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 1526
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1529
    .end local v2    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 494
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 495
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 497
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 498
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 499
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 500
    new-instance v2, Landroidx/fragment/app/SuperNotCalledException;

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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 504
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 506
    :cond_2
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 2166
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "allow":Z
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2167
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 2191
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "allow":Z
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2192
    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2812
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    .line 2813
    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 2816
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    .line 2817
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "args":Landroid/os/Bundle;
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment already active and state has been saved"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 584
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1922
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 1923
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1947
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 1948
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1933
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 1934
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2023
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2024
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 4

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "hasMenu":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 994
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 995
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 996
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 999
    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 4

    .prologue
    .line 2852
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "replaced":Z
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2853
    return-void
.end method

.method final setIndex(ILandroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "parent":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 510
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 511
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android:fragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment$SavedState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "state":Landroidx/fragment/app/Fragment$SavedState;
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 620
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment already active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 624
    return-void

    .line 622
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "menuVisible":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1012
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 1013
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1014
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1017
    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 4

    .prologue
    .line 2761
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "animResourceId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    .line 2762
    .line 2765
    :goto_0
    return-void

    .line 2764
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 2765
    goto :goto_0
.end method

.method setNextTransition(II)V
    .locals 5

    .prologue
    .line 2775
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "nextTransition":I
    move v2, p2

    .local v2, "nextTransitionStyle":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    .line 2776
    .line 2781
    :goto_0
    return-void

    .line 2778
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v3

    .line 2779
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    move v4, v1

    iput v4, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2780
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    move v4, v2

    iput v4, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 2781
    goto :goto_0
.end method

.method setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 7

    .prologue
    .line 2730
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    .line 2731
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne v2, v3, :cond_0

    .line 2732
    .line 2744
    :goto_0
    return-void

    .line 2734
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-eqz v2, :cond_1

    .line 2735
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2738
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v2, :cond_2

    .line 2739
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2741
    :cond_2
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 2742
    move-object v2, v1

    invoke-interface {v2}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 2744
    :cond_3
    goto :goto_0
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2062
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2063
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 4

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "retain":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 979
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1983
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 1984
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2097
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2098
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2132
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2133
    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 4

    .prologue
    .line 2834
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2835
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 11
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "requestCode":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v3, v6

    .line 644
    .local v3, "mine":Landroidx/fragment/app/FragmentManager;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    :goto_0
    move-object v4, v6

    .line 645
    .local v4, "theirs":Landroidx/fragment/app/FragmentManager;
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v3

    move-object v7, v4

    if-eq v6, v7, :cond_1

    .line 646
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 644
    .end local v4    # "theirs":Landroidx/fragment/app/FragmentManager;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 651
    .restart local v4    # "theirs":Landroidx/fragment/app/FragmentManager;
    :cond_1
    move-object v6, v1

    move-object v5, v6

    .local v5, "check":Landroidx/fragment/app/Fragment;
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 652
    move-object v6, v5

    move-object v7, v0

    if-ne v6, v7, :cond_2

    .line 653
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " as the target of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " would create a target cycle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 651
    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 657
    :cond_3
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 658
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 659
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 5

    .prologue
    .line 1036
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move v1, p1

    .local v1, "isVisibleToUser":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1037
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v2, :cond_0

    .line 1038
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1040
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1041
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    move v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1042
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1045
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1047
    :cond_1
    return-void

    .line 1041
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v2, :cond_0

    .line 1261
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1263
    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1073
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1074
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p2

    .local v2, "options":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 1082
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1084
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    const/4 v6, -0x1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1085
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1093
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, p3

    .local v3, "options":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v4, :cond_0

    .line 1101
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not attached to Activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1103
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1104
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 18
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1113
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object/from16 v1, p1

    .local v1, "intent":Landroid/content/IntentSender;
    move/from16 v2, p2

    .local v2, "requestCode":I
    move-object/from16 v3, p3

    .local v3, "fillInIntent":Landroid/content/Intent;
    move/from16 v4, p4

    .local v4, "flagsMask":I
    move/from16 v5, p5

    .local v5, "flagsValues":I
    move/from16 v6, p6

    .local v6, "extraFlags":I
    move-object/from16 v7, p7

    .local v7, "options":Landroid/os/Bundle;
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v8, :cond_0

    .line 1114
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not attached to Activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1116
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Landroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1118
    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 6

    .prologue
    .line 2252
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_1

    .line 2253
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2264
    :goto_0
    return-void

    .line 2254
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 2255
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/Fragment$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0

    .line 2262
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->callStartTransitionListener()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 538
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 539
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 540
    move-object v2, v1

    const-string/jumbo v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 543
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_1

    .line 544
    move-object v2, v1

    const-string/jumbo v3, " id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 547
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 548
    move-object v2, v1

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 549
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 551
    :cond_2
    move-object v2, v1

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1890
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1891
    return-void
.end method
