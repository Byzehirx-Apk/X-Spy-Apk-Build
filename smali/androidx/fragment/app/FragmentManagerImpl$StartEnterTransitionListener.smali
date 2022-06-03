.class Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field final mIsBack:Z

.field private mNumPostponed:I

.field final mRecord:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroidx/fragment/app/BackStackRecord;Z)V
    .locals 5

    .prologue
    .line 3873
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v1, p1

    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    move v2, p2

    .local v2, "isBack":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3874
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3875
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 3876
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 6

    .prologue
    .line 3934
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    .line 3935
    return-void
.end method

.method public completeTransaction()V
    .locals 11

    .prologue
    .line 3916
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .line 3917
    .local v1, "canceled":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v6

    .line 3918
    .local v2, "manager":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v6, v2

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 3919
    .local v3, "numAdded":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 3920
    move-object v6, v2

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v5, v6

    .line 3921
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3922
    move v6, v1

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3923
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    .line 3919
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3916
    .end local v1    # "canceled":Z
    .end local v2    # "manager":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v3    # "numAdded":I
    .end local v4    # "i":I
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3926
    .restart local v1    # "canceled":Z
    .restart local v2    # "manager":Landroidx/fragment/app/FragmentManagerImpl;
    .restart local v3    # "numAdded":I
    .restart local v4    # "i":I
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    move v9, v1

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    .line 3927
    return-void

    .line 3926
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 3906
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartEnterTransition()V
    .locals 5

    .prologue
    .line 3885
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3886
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v1, :cond_0

    .line 3887
    .line 3890
    :goto_0
    return-void

    .line 3889
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 3890
    goto :goto_0
.end method

.method public startListening()V
    .locals 5

    .prologue
    .line 3899
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3900
    return-void
.end method
