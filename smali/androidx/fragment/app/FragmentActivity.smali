.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$HostCallbacks;,
        Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroidx/fragment/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z

.field private mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 82
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentActivity$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v2, v1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 96
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v2}, Landroidx/fragment/app/FragmentController;->createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 102
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 957
    return-void
.end method

.method private allocateRequestIndex(Landroidx/fragment/app/Fragment;)I
    .locals 7

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    const v4, 0xfffe

    if-lt v3, v4, :cond_0

    .line 920
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Too many pending Fragment activity results."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 924
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v3, v4}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 925
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const v5, 0xfffe

    rem-int/2addr v4, v5

    iput v4, v3, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 929
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    move v2, v3

    .line 930
    .local v2, "requestIndex":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 931
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const v5, 0xfffe

    rem-int/2addr v4, v5

    iput v4, v3, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 934
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return v0
.end method

.method static checkForValidRequestCode(I)V
    .locals 5

    .prologue
    .line 805
    move v0, p0

    .local v0, "requestCode":I
    move v1, v0

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Can only use lower 16 bits for requestCode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_0
    return-void
.end method

.method private markFragmentsCreated()V
    .locals 4

    .prologue
    .line 1051
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    move v1, v2

    .line 1052
    .local v1, "reiterate":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 1053
    return-void
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 10

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "manager":Landroidx/fragment/app/FragmentManager;
    move-object v1, p1

    .local v1, "state":Landroidx/lifecycle/Lifecycle$State;
    const/4 v7, 0x0

    move v2, v7

    .line 1057
    .local v2, "hadNotMarked":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 1058
    .local v3, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/Fragment;>;"
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v5, v7

    .line 1059
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 1060
    goto :goto_0

    .line 1062
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v7, v8}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1063
    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 1064
    const/4 v7, 0x1

    move v2, v7

    .line 1067
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    move-object v6, v7

    .line 1068
    .local v6, "childFragmentManager":Landroidx/fragment/app/FragmentManager;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 1069
    move v7, v2

    move-object v8, v6

    move-object v9, v1

    invoke-static {v8, v9}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v8

    or-int/2addr v7, v8

    move v2, v7

    .line 1071
    :cond_2
    goto :goto_0

    .line 1072
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v6    # "childFragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_3
    move v7, v2

    move v0, v7

    .end local v0    # "manager":Landroidx/fragment/app/FragmentManager;
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object/from16 v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroidx/core/app/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 694
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string/jumbo v7, "Local FragmentActivity "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    move-object v6, v3

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    move-object v6, v3

    const-string/jumbo v7, " State:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 698
    .local v5, "innerPrefix":Ljava/lang/String;
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string/jumbo v7, "mCreated="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string/jumbo v7, " mResumed="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string/jumbo v7, " mStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 703
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 704
    move-object v6, v0

    invoke-static {v6}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v6

    move-object v7, v5

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 706
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v0

    .line 663
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    move-object v1, v2

    .line 664
    .local v1, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-nez v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v2, :cond_2

    .line 304
    move-object v2, v0

    .line 305
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    move-object v1, v2

    .line 306
    .local v1, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 308
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v3, v2, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 310
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v2, :cond_2

    .line 311
    move-object v2, v0

    new-instance v3, Landroidx/lifecycle/ViewModelStore;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 314
    .end local v1    # "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "requestCode":I
    move v2, p2

    .local v2, "resultCode":I
    move-object/from16 v3, p3

    .local v3, "data":Landroid/content/Intent;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 146
    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    move v4, v7

    .line 147
    .local v4, "requestIndex":I
    move v7, v4

    if-eqz v7, :cond_2

    .line 148
    add-int/lit8 v4, v4, -0x1

    .line 150
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 151
    .local v5, "who":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 152
    move-object v7, v5

    if-nez v7, :cond_0

    .line 153
    const-string/jumbo v7, "FragmentActivity"

    const-string/jumbo v8, "Activity result delivered for unknown Fragment."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 154
    .line 173
    .end local v5    # "who":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    .restart local v5    # "who":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 157
    .local v6, "targetFragment":Landroidx/fragment/app/Fragment;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 158
    const-string/jumbo v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Activity result no fragment exists for who: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 162
    :goto_1
    goto :goto_0

    .line 160
    :cond_1
    move-object v7, v6

    move v8, v1

    const v9, 0xffff

    and-int/2addr v8, v9

    move v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 166
    .end local v5    # "who":Ljava/lang/String;
    .end local v6    # "targetFragment":Landroidx/fragment/app/Fragment;
    :cond_2
    invoke-static {}, Landroidx/core/app/ActivityCompat;->getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    move-result-object v7

    move-object v5, v7

    .line 167
    .local v5, "delegate":Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v5

    move-object v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v3

    invoke-interface {v7, v8, v9, v10, v11}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    goto :goto_0

    .line 172
    :cond_3
    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/core/app/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    goto :goto_0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 722
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v1, v3

    .line 182
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v3

    move v2, v3

    .line 183
    .local v2, "isStateSaved":Z
    move v3, v2

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_0

    .line 188
    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    :cond_1
    move-object v3, v0

    invoke-super {v3}, Landroidx/core/app/ComponentActivity;->onBackPressed()V

    .line 193
    :cond_2
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/app/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 286
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentController;->attachHost(Landroidx/fragment/app/Fragment;)V

    .line 335
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 337
    move-object v7, v0

    .line 338
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    move-object v2, v7

    .line 339
    .local v2, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v7, :cond_0

    .line 340
    move-object v7, v0

    move-object v8, v2

    iget-object v8, v8, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v8, v7, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 342
    :cond_0
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 343
    move-object v7, v1

    const-string/jumbo v8, "android:support:fragments"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v3, v7

    .line 344
    .local v3, "p":Landroid/os/Parcelable;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v8, v3

    move-object v9, v2

    if-eqz v9, :cond_4

    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    :goto_0
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 347
    move-object v7, v1

    const-string/jumbo v8, "android:support:next_request_index"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    move-object v7, v0

    move-object v8, v1

    const-string/jumbo v9, "android:support:next_request_index"

    .line 349
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 350
    move-object v7, v1

    const-string/jumbo v8, "android:support:request_indicies"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    move-object v4, v7

    .line 351
    .local v4, "requestCodes":[I
    move-object v7, v1

    const-string/jumbo v8, "android:support:request_fragment_who"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 352
    .local v5, "fragmentWhos":[Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v4

    array-length v7, v7

    move-object v8, v5

    array-length v8, v8

    if-eq v7, v8, :cond_5

    .line 354
    :cond_1
    const-string/jumbo v7, "FragmentActivity"

    const-string/jumbo v8, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 364
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    .end local v5    # "fragmentWhos":[Ljava/lang/String;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    if-nez v7, :cond_3

    .line 365
    move-object v7, v0

    new-instance v8, Landroidx/collection/SparseArrayCompat;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v8, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 366
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 369
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentController;->dispatchCreate()V

    .line 370
    return-void

    .line 344
    .restart local v3    # "p":Landroid/os/Parcelable;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 356
    .restart local v4    # "requestCodes":[I
    .restart local v5    # "fragmentWhos":[Ljava/lang/String;
    :cond_5
    move-object v7, v0

    new-instance v8, Landroidx/collection/SparseArrayCompat;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    array-length v10, v10

    invoke-direct {v9, v10}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v8, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 357
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 358
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 357
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move v4, v1

    if-nez v4, :cond_0

    .line 378
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v3, v4

    .line 379
    .local v3, "show":Z
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 380
    move v4, v3

    move v0, v4

    .line 382
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    .end local v3    # "show":Z
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 388
    .local v5, "v":Landroid/view/View;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 389
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroidx/core/app/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    .line 391
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 397
    .local v4, "v":Landroid/view/View;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 398
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroidx/core/app/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .line 400
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onDestroy()V

    .line 415
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 419
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchDestroy()V

    .line 420
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onLowMemory()V

    .line 428
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchLowMemory()V

    .line 429
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/app/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const/4 v3, 0x1

    move v0, v3

    .line 448
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    return v0

    .line 440
    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 448
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 442
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 445
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "isInMultiWindowMode":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 262
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/app/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 492
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 493
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 462
    :goto_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/app/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 463
    return-void

    .line 459
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onPause()V

    .line 471
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 472
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 476
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchPause()V

    .line 477
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "isInPictureInPictureMode":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 277
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onPostResume()V

    .line 526
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 528
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 529
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v3, v4, v5, v6}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "menu":Landroid/view/Menu;
    move v5, v1

    if-nez v5, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    .line 547
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 548
    .local v4, "goforit":Z
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 549
    move v5, v4

    move v0, v5

    .line 551
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    .end local v4    # "goforit":Z
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 12
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "requestCode":I
    move-object v2, p2

    .local v2, "permissions":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "grantResults":[I
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 846
    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    const v8, 0xffff

    and-int/2addr v7, v8

    move v4, v7

    .line 847
    .local v4, "index":I
    move v7, v4

    if-eqz v7, :cond_1

    .line 848
    add-int/lit8 v4, v4, -0x1

    .line 850
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 851
    .local v5, "who":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 852
    move-object v7, v5

    if-nez v7, :cond_0

    .line 853
    const-string/jumbo v7, "FragmentActivity"

    const-string/jumbo v8, "Activity result delivered for unknown Fragment."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 854
    .line 863
    .end local v5    # "who":Ljava/lang/String;
    :goto_0
    return-void

    .line 856
    .restart local v5    # "who":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 857
    .local v6, "frag":Landroidx/fragment/app/Fragment;
    move-object v7, v6

    if-nez v7, :cond_2

    .line 858
    const-string/jumbo v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Activity result no fragment exists for who: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 863
    .end local v5    # "who":Ljava/lang/String;
    .end local v6    # "frag":Landroidx/fragment/app/Fragment;
    :cond_1
    :goto_1
    goto :goto_0

    .line 860
    .restart local v5    # "who":Ljava/lang/String;
    .restart local v6    # "frag":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v7, v6

    move v8, v1

    const v9, 0xffff

    and-int/2addr v8, v9

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onResume()V

    .line 515
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 516
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 517
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 518
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchResume()V

    .line 539
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 571
    .local v1, "custom":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentController;->retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v4

    move-object v2, v4

    .line 573
    .local v2, "fragments":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_0

    .line 574
    const/4 v4, 0x0

    move-object v0, v4

    .line 581
    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    return-object v0

    .line 577
    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity;
    :cond_0
    new-instance v4, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    move-object v3, v4

    .line 578
    .local v3, "nci":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 579
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v5, v4, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 580
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 581
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 590
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 591
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v6

    move-object v2, v6

    .line 592
    .local v2, "p":Landroid/os/Parcelable;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 593
    move-object v6, v1

    const-string/jumbo v7, "android:support:fragments"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 595
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 596
    move-object v6, v1

    const-string/jumbo v7, "android:support:next_request_index"

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v6

    new-array v6, v6, [I

    move-object v3, v6

    .line 599
    .local v3, "requestCodes":[I
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 600
    .local v4, "fragmentWhos":[Ljava/lang/String;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v7}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 601
    move-object v6, v3

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v8

    aput v8, v6, v7

    .line 602
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 600
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 604
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, "android:support:request_indicies"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 605
    move-object v6, v1

    const-string/jumbo v7, "android:support:request_fragment_who"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    .end local v3    # "requestCodes":[I
    .end local v4    # "fragmentWhos":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onStart()V

    .line 616
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 618
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v1, :cond_0

    .line 619
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 620
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchActivityCreated()V

    .line 623
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 624
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 628
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchStart()V

    .line 629
    return-void
.end method

.method public onStateNotSaved()V
    .locals 2

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 501
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/core/app/ComponentActivity;->onStop()V

    .line 638
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 639
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 641
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchStop()V

    .line 642
    return-void
.end method

.method requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 11

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "permissions":[Ljava/lang/String;
    move v3, p3

    .local v3, "requestCode":I
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 943
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 944
    .line 955
    :goto_0
    return-void

    .line 946
    :cond_0
    move v6, v3

    invoke-static {v6}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 948
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 949
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v6

    move v4, v6

    .line 950
    .local v4, "requestIndex":I
    move-object v6, v0

    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x10

    shl-int/lit8 v8, v8, 0x10

    move v9, v3

    const v10, 0xffff

    and-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 954
    .line 955
    goto :goto_0

    .line 953
    .end local v4    # "requestIndex":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    move-object v6, v5

    throw v6
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 218
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/app/SharedElementCallback;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 231
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 6

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v3, :cond_0

    .line 750
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 751
    move v3, v2

    invoke-static {v3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 754
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 755
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, p3

    .local v3, "options":Landroid/os/Bundle;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v4, :cond_0

    .line 763
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 764
    move v4, v2

    invoke-static {v4}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 767
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 768
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 871
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 12
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object/from16 v4, p4

    .local v4, "options":Landroid/os/Bundle;
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 880
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 881
    move-object v7, v0

    move-object v8, v2

    const/4 v9, -0x1

    move-object v10, v4

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 882
    .line 891
    :goto_0
    return-void

    .line 884
    :cond_0
    move v7, v3

    :try_start_1
    invoke-static {v7}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 885
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v7

    move v5, v7

    .line 886
    .local v5, "requestIndex":I
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    move v10, v3

    const v11, 0xffff

    and-int/2addr v10, v11

    add-int/2addr v9, v10

    move-object v10, v4

    invoke-static {v7, v8, v9, v10}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 890
    .line 891
    goto :goto_0

    .line 889
    .end local v5    # "requestIndex":I
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    move-object v7, v6

    throw v7
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 14
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
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, p1

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
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v7, :cond_0

    .line 777
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 778
    move v7, v2

    invoke-static {v7}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 781
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 783
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
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
    .line 791
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
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

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v8, :cond_0

    .line 792
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 793
    move v8, v2

    invoke-static {v8}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 796
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-super/range {v8 .. v15}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 798
    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 19
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 899
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object/from16 v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v2, p2

    .local v2, "intent":Landroid/content/IntentSender;
    move/from16 v3, p3

    .local v3, "requestCode":I
    move-object/from16 v4, p4

    .local v4, "fillInIntent":Landroid/content/Intent;
    move/from16 v5, p5

    .local v5, "flagsMask":I
    move/from16 v6, p6

    .local v6, "flagsValues":I
    move/from16 v7, p7

    .local v7, "extraFlags":I
    move-object/from16 v8, p8

    .local v8, "options":Landroid/os/Bundle;
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 901
    move v11, v3

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 902
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    :try_start_0
    invoke-static/range {v11 .. v18}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 904
    .line 914
    :goto_0
    return-void

    .line 906
    :cond_0
    move v11, v3

    :try_start_1
    invoke-static {v11}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 907
    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v11

    move v9, v11

    .line 908
    .local v9, "requestIndex":I
    move-object v11, v0

    move-object v12, v2

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    move v14, v3

    const v15, 0xffff

    and-int/2addr v14, v15

    add-int/2addr v13, v14

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-static/range {v11 .. v18}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 913
    .line 914
    goto :goto_0

    .line 912
    .end local v9    # "requestIndex":I
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    move-object v11, v10

    throw v11
.end method

.method public supportFinishAfterTransition()V
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 679
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 239
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 4

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity;
    move v1, p1

    .local v1, "requestCode":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v2, :cond_0

    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 821
    move v2, v1

    invoke-static {v2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 823
    :cond_0
    return-void
.end method
