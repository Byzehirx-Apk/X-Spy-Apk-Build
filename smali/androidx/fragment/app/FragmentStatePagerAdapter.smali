.class public abstract Landroidx/fragment/app/FragmentStatePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapt"


# instance fields
.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 73
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 74
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 78
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 79
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "object":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 135
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v5, :cond_0

    .line 136
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    iput-object v6, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 140
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    if-gt v5, v6, :cond_1

    .line 141
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 143
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    move v6, v2

    move-object v7, v4

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v8, v4

    .line 144
    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v7

    .line 143
    :goto_1
    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 145
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 148
    return-void

    .line 144
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 169
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 171
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    if-le v5, v6, :cond_0

    .line 102
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v3, v5

    .line 103
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 104
    move-object v5, v3

    move-object v0, v5

    .line 128
    .end local v0    # "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .line 108
    .restart local v0    # "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v5, :cond_1

    .line 109
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    iput-object v6, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 112
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentStatePagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    move-object v3, v5

    .line 114
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    if-le v5, v6, :cond_2

    .line 115
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment$SavedState;

    move-object v4, v5

    .line 116
    .local v4, "fss":Landroidx/fragment/app/Fragment$SavedState;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 117
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 120
    .end local v4    # "fss":Landroidx/fragment/app/Fragment$SavedState;
    :cond_2
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    if-gt v5, v6, :cond_3

    .line 121
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 123
    :cond_3
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 124
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 125
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 126
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 128
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "object":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 14

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object/from16 v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v10, v1

    if-eqz v10, :cond_4

    .line 203
    move-object v10, v1

    check-cast v10, Landroid/os/Bundle;

    move-object v3, v10

    .line 204
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 205
    move-object v10, v3

    const-string/jumbo v11, "states"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    move-object v4, v10

    .line 206
    .local v4, "fss":[Landroid/os/Parcelable;
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 207
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 208
    move-object v10, v4

    if-eqz v10, :cond_0

    .line 209
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v4

    array-length v11, v11

    if-ge v10, v11, :cond_0

    .line 210
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    move-object v11, v4

    move v12, v5

    aget-object v11, v11, v12

    check-cast v11, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    .end local v5    # "i":I
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    move-object v5, v10

    .line 214
    .local v5, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object v10, v5

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_1
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 215
    .local v7, "key":Ljava/lang/String;
    move-object v10, v7

    const-string/jumbo v11, "f"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 216
    move-object v10, v7

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 217
    .local v8, "index":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v10

    move-object v9, v10

    .line 218
    .local v9, "f":Landroidx/fragment/app/Fragment;
    move-object v10, v9

    if-eqz v10, :cond_3

    .line 219
    :goto_2
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    if-gt v10, v11, :cond_1

    .line 220
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    .line 222
    :cond_1
    move-object v10, v9

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 223
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    move v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 228
    .end local v8    # "index":I
    .end local v9    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    :goto_3
    goto :goto_1

    .line 225
    .restart local v8    # "index":I
    .restart local v9    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    const-string/jumbo v10, "FragmentStatePagerAdapt"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Bad fragment at key "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 230
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "fss":[Landroid/os/Parcelable;
    .end local v5    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "f":Landroidx/fragment/app/Fragment;
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    const/4 v5, 0x0

    move-object v1, v5

    .line 181
    .local v1, "state":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 182
    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v5

    .line 183
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroidx/fragment/app/Fragment$SavedState;

    move-object v2, v5

    .line 184
    .local v2, "fss":[Landroidx/fragment/app/Fragment$SavedState;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 185
    move-object v5, v1

    const-string/jumbo v6, "states"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 187
    .end local v2    # "fss":[Landroidx/fragment/app/Fragment$SavedState;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 188
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v3, v5

    .line 189
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    move-object v5, v1

    if-nez v5, :cond_1

    .line 191
    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v5

    .line 193
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 194
    .local v4, "key":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v6, v1

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 187
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "object":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 154
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v5, v6, :cond_1

    .line 155
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 156
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 157
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 159
    :cond_0
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 160
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 161
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 163
    :cond_1
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentStatePagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ViewPager with adapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires a view id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    return-void
.end method
