.class public abstract Landroidx/viewpager/widget/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private final mObservable:Landroid/database/DataSetObservable;

.field private mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v1, v0

    new-instance v2, Landroid/database/DataSetObservable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, v1, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/View;
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "object":Ljava/lang/Object;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Required method destroyItem was not overridden"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "object":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    const/4 v2, -0x1

    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/PagerAdapter;
    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move v1, p1

    .local v1, "position":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/PagerAdapter;
    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 3

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move v1, p1

    .local v1, "position":I
    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/PagerAdapter;
    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/View;
    move v2, p2

    .local v2, "position":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Required method instantiateItem was not overridden"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/PagerAdapter;
    return-object v0
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 290
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_0

    .line 291
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    .line 293
    :cond_0
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v3}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1    # Landroid/database/DataSetObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "observer":Landroid/database/DataSetObserver;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/PagerAdapter;
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "object":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .locals 7

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "observer":Landroid/database/DataSetObserver;
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 317
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 318
    move-object v4, v2

    monitor-exit v4

    .line 319
    return-void

    .line 318
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

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "container":Landroid/view/ViewGroup;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1    # Landroid/database/DataSetObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, p1

    .local v1, "observer":Landroid/database/DataSetObserver;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 313
    return-void
.end method
