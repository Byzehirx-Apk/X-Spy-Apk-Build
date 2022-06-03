.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SET_PRIMARY_NAV:I = 0x8

.field static final OP_SHOW:I = 0x5

.field static final OP_UNSET_PRIMARY_NAV:I = 0x9

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "manager":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/FragmentTransaction;-><init>()V

    .line 209
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 217
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 220
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 229
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 333
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 334
    return-void
.end method

.method private doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 14
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerViewId":I
    move-object/from16 v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v3, p3

    .local v3, "tag":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "opcmd":I
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 397
    .local v5, "fragmentClass":Ljava/lang/Class;
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    move v6, v7

    .line 398
    .local v6, "modifiers":I
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v6

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    .line 399
    invoke-virtual {v7}, Ljava/lang/Class;->isMemberClass()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 400
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " must be a public static class to be  properly recreated from"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " instance state."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    :cond_1
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 407
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 408
    move-object v7, v2

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v7, v3

    move-object v8, v2

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 409
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t change tag of fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " now "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    :cond_2
    move-object v7, v2

    move-object v8, v3

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 416
    :cond_3
    move v7, v1

    if-eqz v7, :cond_6

    .line 417
    move v7, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 418
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t add fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to container view with no id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 421
    :cond_4
    move-object v7, v2

    iget v7, v7, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v7, :cond_5

    move-object v7, v2

    iget v7, v7, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v8, v1

    if-eq v7, v8, :cond_5

    .line 422
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t change container ID of fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " now "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 426
    :cond_5
    move-object v7, v2

    move-object v8, v2

    move v9, v1

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v8, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 429
    :cond_6
    move-object v7, v0

    new-instance v8, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move v10, v4

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v7, v8}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 430
    return-void
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/BackStackRecord$Op;)Z
    .locals 3

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v1, v2

    .line 1010
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    move-object v2, v1

    .line 1011
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    return v0

    .restart local v0    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerViewId":I
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 386
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerViewId":I
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 392
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "tag":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 380
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method addOp(Landroidx/fragment/app/BackStackRecord$Op;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 371
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    iput v3, v2, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    .line 372
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    iput v3, v2, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    .line 373
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iput v3, v2, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    .line 374
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    iput v3, v2, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    .line 375
    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 9

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "sharedElement":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->supportsTransition()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 515
    .local v3, "transitionName":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 516
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 520
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 521
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 530
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 531
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 533
    .end local v3    # "transitionName":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0

    .line 522
    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    .restart local v3    # "transitionName":Ljava/lang/String;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 523
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "A shared element with the target name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' has already been added to the transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "A shared element with the source name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has already been added to the transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v2, :cond_0

    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 549
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 550
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 480
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method bumpBackStackNesting(I)V
    .locals 9

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "amt":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v5, :cond_0

    .line 598
    .line 611
    :goto_0
    return-void

    .line 600
    :cond_0
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bump nesting in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 602
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 603
    .local v2, "numOps":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "opNum":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 604
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v4, v5

    .line 605
    .local v4, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 606
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    move v7, v1

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 607
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    iget v7, v7, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    .end local v4    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_3
    goto/16 :goto_0
.end method

.method public commit()I
    .locals 3

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 3

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method commitInternal(Z)I
    .locals 10

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "allowStateLoss":Z
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "commit already called"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    :cond_0
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 671
    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Commit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 672
    new-instance v4, Landroidx/core/util/LogWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 673
    .local v2, "logw":Landroidx/core/util/LogWriter;
    new-instance v4, Ljava/io/PrintWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v4

    .line 674
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v4, v0

    const-string/jumbo v5, "  "

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 675
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 677
    .end local v2    # "logw":Landroidx/core/util/LogWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 678
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_2

    .line 679
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I

    move-result v5

    iput v5, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 683
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 684
    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    move v0, v4

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0

    .line 681
    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    :cond_2
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public commitNow()V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 648
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 649
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 4

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 654
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 655
    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x6

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 473
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This transaction is already being added to the back stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 565
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 252
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 12

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "writer":Ljava/io/PrintWriter;
    move v3, p3

    .local v3, "full":Z
    move v9, v3

    if-eqz v9, :cond_8

    .line 256
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mName="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    move-object v9, v2

    const-string/jumbo v10, " mIndex="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    move-object v9, v2

    const-string/jumbo v10, " mCommitted="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    if-eqz v9, :cond_0

    .line 260
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mTransition=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    move-object v9, v2

    const-string/jumbo v10, " mTransitionStyle=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    if-nez v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    if-eqz v9, :cond_2

    .line 266
    :cond_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    move-object v9, v2

    const-string/jumbo v10, " mExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_2
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v9, :cond_3

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v9, :cond_4

    .line 272
    :cond_3
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mPopEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    move-object v9, v2

    const-string/jumbo v10, " mPopExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_4
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 278
    :cond_5
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mBreadCrumbTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    move-object v9, v2

    const-string/jumbo v10, " mBreadCrumbTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    :cond_6
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    .line 284
    :cond_7
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    move-object v9, v2

    const-string/jumbo v10, " mBreadCrumbShortTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 291
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 292
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "Operations:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 294
    .local v4, "innerPrefix":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v9

    .line 295
    .local v5, "numOps":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "opNum":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_d

    .line 296
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v9

    .line 298
    .local v7, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    packed-switch v9, :pswitch_data_0

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cmd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    iget v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 311
    .local v8, "cmdStr":Ljava/lang/String;
    :goto_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "  Op #"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    move-object v9, v2

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    move-object v9, v2

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v7

    iget-object v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    move v9, v3

    if-eqz v9, :cond_c

    .line 315
    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    if-nez v9, :cond_9

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v9, :cond_a

    .line 316
    :cond_9
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "enterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    move-object v9, v2

    move-object v10, v7

    iget v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    move-object v9, v2

    const-string/jumbo v10, " exitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    move-object v9, v2

    move-object v10, v7

    iget v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_a
    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v9, :cond_b

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v9, :cond_c

    .line 322
    :cond_b
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string/jumbo v10, "popEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    move-object v9, v2

    move-object v10, v7

    iget v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    move-object v9, v2

    const-string/jumbo v10, " popExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    move-object v9, v2

    move-object v10, v7

    iget v10, v10, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 299
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v9, "NULL"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 300
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v9, "ADD"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 301
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v9, "REPLACE"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 302
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v9, "REMOVE"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 303
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v9, "HIDE"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 304
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v9, "SHOW"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 305
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v9, "DETACH"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 306
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v9, "ATTACH"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 307
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v9, "SET_PRIMARY_NAV"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 308
    .end local v8    # "cmdStr":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v9, "UNSET_PRIMARY_NAV"

    move-object v8, v9

    .restart local v8    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 330
    .end local v4    # "innerPrefix":Ljava/lang/String;
    .end local v5    # "numOps":I
    .end local v6    # "opNum":I
    .end local v7    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v8    # "cmdStr":Ljava/lang/String;
    :cond_d
    return-void

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method executeOps()V
    .locals 10

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 756
    .local v1, "numOps":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "opNum":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 757
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v3, v5

    .line 758
    .local v3, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 759
    .local v4, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 760
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->setNextTransition(II)V

    .line 762
    :cond_0
    move-object v5, v3

    iget v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 794
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 764
    :pswitch_1
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 765
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 766
    .line 796
    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_1

    move-object v5, v3

    iget v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move-object v5, v4

    if-eqz v5, :cond_1

    .line 797
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 756
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :pswitch_2
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 769
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 770
    goto :goto_1

    .line 772
    :pswitch_3
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 773
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 774
    goto :goto_1

    .line 776
    :pswitch_4
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 777
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 778
    goto :goto_1

    .line 780
    :pswitch_5
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 781
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 782
    goto :goto_1

    .line 784
    :pswitch_6
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 785
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 786
    goto :goto_1

    .line 788
    :pswitch_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 789
    goto :goto_1

    .line 791
    :pswitch_8
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 792
    goto :goto_1

    .line 800
    .end local v3    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_3

    .line 802
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 804
    :cond_3
    return-void

    .line 762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method executePopOps(Z)V
    .locals 10

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "moveToState":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "opNum":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_2

    .line 815
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v3, v5

    .line 816
    .local v3, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 817
    .local v4, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 818
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v6}, Landroidx/fragment/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->setNextTransition(II)V

    .line 821
    :cond_0
    move-object v5, v3

    iget v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 853
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 823
    :pswitch_1
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 824
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 825
    .line 855
    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_1

    move-object v5, v3

    iget v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move-object v5, v4

    if-eqz v5, :cond_1

    .line 856
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 814
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 827
    :pswitch_2
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 828
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 829
    goto :goto_1

    .line 831
    :pswitch_3
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 832
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 833
    goto :goto_1

    .line 835
    :pswitch_4
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 836
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 837
    goto :goto_1

    .line 839
    :pswitch_5
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 840
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 841
    goto :goto_1

    .line 843
    :pswitch_6
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 844
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 845
    goto :goto_1

    .line 847
    :pswitch_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 848
    goto :goto_1

    .line 850
    :pswitch_8
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 851
    goto :goto_1

    .line 859
    .end local v3    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_3

    move v5, v1

    if-eqz v5, :cond_3

    .line 860
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 862
    :cond_3
    return-void

    .line 821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 888
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v2, p1

    .local v2, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    move-object/from16 v3, p2

    .local v3, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    const/4 v12, 0x0

    move v4, v12

    .local v4, "opNum":I
    :goto_0
    move v12, v4

    move-object v13, v1

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 889
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v5, v12

    .line 890
    .local v5, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v12, v5

    iget v12, v12, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 888
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 893
    :pswitch_1
    move-object v12, v2

    move-object v13, v5

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 894
    goto :goto_1

    .line 897
    :pswitch_2
    move-object v12, v2

    move-object v13, v5

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v12

    .line 898
    move-object v12, v5

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v13, v3

    if-ne v12, v13, :cond_0

    .line 899
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    new-instance v14, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 900
    add-int/lit8 v4, v4, 0x1

    .line 901
    const/4 v12, 0x0

    move-object v3, v12

    goto :goto_1

    .line 906
    :pswitch_3
    move-object v12, v5

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v6, v12

    .line 907
    .local v6, "f":Landroidx/fragment/app/Fragment;
    move-object v12, v6

    iget v12, v12, Landroidx/fragment/app/Fragment;->mContainerId:I

    move v7, v12

    .line 908
    .local v7, "containerId":I
    const/4 v12, 0x0

    move v8, v12

    .line 909
    .local v8, "alreadyAdded":Z
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    .local v9, "i":I
    :goto_2
    move v12, v9

    if-ltz v12, :cond_4

    .line 910
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/Fragment;

    move-object v10, v12

    .line 911
    .local v10, "old":Landroidx/fragment/app/Fragment;
    move-object v12, v10

    iget v12, v12, Landroidx/fragment/app/Fragment;->mContainerId:I

    move v13, v7

    if-ne v12, v13, :cond_1

    .line 912
    move-object v12, v10

    move-object v13, v6

    if-ne v12, v13, :cond_2

    .line 913
    const/4 v12, 0x1

    move v8, v12

    .line 909
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 917
    :cond_2
    move-object v12, v10

    move-object v13, v3

    if-ne v12, v13, :cond_3

    .line 918
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    new-instance v14, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v17}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 919
    add-int/lit8 v4, v4, 0x1

    .line 920
    const/4 v12, 0x0

    move-object v3, v12

    .line 922
    :cond_3
    new-instance v12, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    move-object v15, v10

    invoke-direct {v13, v14, v15}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    move-object v11, v12

    .line 923
    .local v11, "removeOp":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v12, v11

    move-object v13, v5

    iget v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    iput v13, v12, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    .line 924
    move-object v12, v11

    move-object v13, v5

    iget v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    iput v13, v12, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    .line 925
    move-object v12, v11

    move-object v13, v5

    iget v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    iput v13, v12, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    .line 926
    move-object v12, v11

    move-object v13, v5

    iget v13, v13, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    iput v13, v12, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    .line 927
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 928
    move-object v12, v2

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v12

    .line 929
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 933
    .end local v10    # "old":Landroidx/fragment/app/Fragment;
    .end local v11    # "removeOp":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_4
    move v12, v8

    if-eqz v12, :cond_5

    .line 934
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .line 935
    add-int/lit8 v4, v4, -0x1

    .line 941
    :goto_4
    goto/16 :goto_1

    .line 937
    :cond_5
    move-object v12, v5

    const/4 v13, 0x1

    iput v13, v12, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    .line 938
    move-object v12, v2

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_4

    .line 945
    .end local v6    # "f":Landroidx/fragment/app/Fragment;
    .end local v7    # "containerId":I
    .end local v8    # "alreadyAdded":Z
    .end local v9    # "i":I
    :pswitch_4
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v13, v4

    new-instance v14, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v17}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 946
    add-int/lit8 v4, v4, 0x1

    .line 948
    move-object v12, v5

    iget-object v12, v12, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v3, v12

    goto/16 :goto_1

    .line 953
    .end local v5    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_6
    move-object v12, v3

    move-object v1, v12

    .end local v1    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v1

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
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
    .line 698
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 699
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Run: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 702
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 703
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 704
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_1

    .line 705
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    .line 707
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v1, :cond_0

    .line 364
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 366
    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v1, :cond_0

    .line 355
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 357
    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public getTransition()I
    .locals 2

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public getTransitionStyle()I
    .locals 2

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 459
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method interactsWith(I)Z
    .locals 8

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerId":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 712
    .local v2, "numOps":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "opNum":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 713
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v4, v6

    .line 714
    .local v4, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_1
    move v5, v6

    .line 715
    .local v5, "fragContainer":I
    move v6, v5

    if-eqz v6, :cond_1

    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 716
    const/4 v6, 0x1

    move v0, v6

    .line 719
    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    .end local v4    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v5    # "fragContainer":I
    :goto_2
    return v0

    .line 714
    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    .restart local v4    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 712
    .restart local v5    # "fragContainer":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 719
    .end local v4    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v5    # "fragContainer":I
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 723
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v3, p1

    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move/from16 v4, p2

    .local v4, "startIndex":I
    move/from16 v5, p3

    .local v5, "endIndex":I
    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 724
    const/16 v17, 0x0

    move/from16 v2, v17

    .line 747
    .end local v2    # "this":Landroidx/fragment/app/BackStackRecord;
    :goto_0
    return v2

    .line 726
    .restart local v2    # "this":Landroidx/fragment/app/BackStackRecord;
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v6, v17

    .line 727
    .local v6, "numOps":I
    const/16 v17, -0x1

    move/from16 v7, v17

    .line 728
    .local v7, "lastContainer":I
    const/16 v17, 0x0

    move/from16 v8, v17

    .local v8, "opNum":I
    :goto_1
    move/from16 v17, v8

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 729
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v9, v17

    .line 730
    .local v9, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    move/from16 v17, v0

    :goto_2
    move/from16 v10, v17

    .line 731
    .local v10, "container":I
    move/from16 v17, v10

    if-eqz v17, :cond_5

    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 732
    move/from16 v17, v10

    move/from16 v7, v17

    .line 733
    move/from16 v17, v4

    move/from16 v11, v17

    .local v11, "i":I
    :goto_3
    move/from16 v17, v11

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 734
    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v12, v17

    .line 735
    .local v12, "record":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v13, v17

    .line 736
    .local v13, "numThoseOps":I
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "thoseOpIndex":I
    :goto_4
    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 737
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/fragment/app/BackStackRecord$Op;

    move-object/from16 v15, v17

    .line 738
    .local v15, "thatOp":Landroidx/fragment/app/BackStackRecord$Op;
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    move/from16 v17, v0

    :goto_5
    move/from16 v16, v17

    .line 740
    .local v16, "thatContainer":I
    move/from16 v17, v16

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 741
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 730
    .end local v10    # "container":I
    .end local v11    # "i":I
    .end local v12    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v13    # "numThoseOps":I
    .end local v14    # "thoseOpIndex":I
    .end local v15    # "thatOp":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v16    # "thatContainer":I
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 738
    .restart local v10    # "container":I
    .restart local v11    # "i":I
    .restart local v12    # "record":Landroidx/fragment/app/BackStackRecord;
    .restart local v13    # "numThoseOps":I
    .restart local v14    # "thoseOpIndex":I
    .restart local v15    # "thatOp":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_2
    const/16 v17, 0x0

    goto :goto_5

    .line 736
    .restart local v16    # "thatContainer":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 733
    .end local v15    # "thatOp":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v16    # "thatContainer":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 728
    .end local v11    # "i":I
    .end local v12    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v13    # "numThoseOps":I
    .end local v14    # "thoseOpIndex":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 747
    .end local v9    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v10    # "container":I
    :cond_6
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return v0
.end method

.method isPostponed()Z
    .locals 5

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "opNum":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 991
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v2, v3

    .line 992
    .local v2, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v3, v2

    invoke-static {v3}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/BackStackRecord$Op;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const/4 v3, 0x1

    move v0, v3

    .line 996
    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :goto_1
    return v0

    .line 990
    .restart local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    .restart local v2    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v2    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 452
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerViewId":I
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "containerViewId":I
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    move v4, v1

    if-nez v4, :cond_0

    .line 441
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Must use non-zero containerViewId"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 445
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "runnable cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 619
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 620
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 622
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 623
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public runOnCommitRunnables()V
    .locals 5

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 628
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .local v2, "N":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 629
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 633
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    return-void
.end method

.method public setAllowOptimization(Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "allowOptimization":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setBreadCrumbShortTitle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "res":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 585
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 586
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 592
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 593
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "res":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 571
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 572
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 578
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 579
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "enter":I
    move v2, p2

    .local v2, "exit":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/BackStackRecord;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "enter":I
    move v2, p2

    .local v2, "exit":I
    move v3, p3

    .local v3, "popEnter":I
    move v4, p4

    .local v4, "popExit":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 499
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 500
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 501
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 502
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 6

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "opNum":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1001
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v3, v4

    .line 1002
    .local v3, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v4, v3

    invoke-static {v4}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/BackStackRecord$Op;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1003
    move-object v4, v3

    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 1000
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    .end local v3    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_1
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x8

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 487
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "reorderingAllowed":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 660
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setTransition(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "transition":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 508
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public setTransitionStyle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move v1, p1

    .local v1, "styleRes":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    .line 539
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/BackStackRecord$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 466
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 236
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "BackStackEntry{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_0

    .line 239
    move-object v2, v1

    const-string/jumbo v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 243
    move-object v2, v1

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    move-object v2, p2

    .local v2, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "opNum":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 968
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v4, v5

    .line 969
    .local v4, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v5, v4

    iget v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 967
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 972
    :pswitch_1
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 973
    goto :goto_1

    .line 976
    :pswitch_2
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 977
    goto :goto_1

    .line 979
    :pswitch_3
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v2, v5

    .line 980
    goto :goto_1

    .line 982
    :pswitch_4
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_1

    .line 986
    .end local v4    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/BackStackRecord;
    return-object v0

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
