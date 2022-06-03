.class Landroidx/recyclerview/widget/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ChildHelper$Callback;,
        Landroidx/recyclerview/widget/ChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field final mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChildHelper$Callback;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ChildHelper$Callback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 50
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 51
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 52
    return-void
.end method

.method private getOffset(I)I
    .locals 9

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "index":I
    move v6, v1

    if-gez v6, :cond_0

    .line 115
    const/4 v6, -0x1

    move v0, v6

    .line 131
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :goto_0
    return v0

    .line 117
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v6}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v6

    move v2, v6

    .line 118
    .local v2, "limit":I
    move v6, v1

    move v3, v6

    .line 119
    .local v3, "offset":I
    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 120
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v6

    move v4, v6

    .line 121
    .local v4, "removedBefore":I
    move v6, v1

    move v7, v3

    move v8, v4

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    move v5, v6

    .line 122
    .local v5, "diff":I
    move v6, v5

    if-nez v6, :cond_2

    .line 123
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    :cond_1
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 128
    :cond_2
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    .line 130
    goto :goto_1

    .line 131
    .end local v4    # "removedBefore":I
    .end local v5    # "diff":I
    :cond_3
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 61
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 72
    const/4 v2, 0x1

    move v0, v2

    .line 74
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "hidden":Z
    move v5, v2

    if-gez v5, :cond_1

    .line 99
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v5}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v5

    move v4, v5

    .line 103
    .local v4, "offset":I
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 104
    move v5, v3

    if-eqz v5, :cond_0

    .line 105
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 107
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v6, v1

    move v7, v4

    invoke-interface {v5, v6, v7}, Landroidx/recyclerview/widget/ChildHelper$Callback;->addView(Landroid/view/View;I)V

    .line 111
    return-void

    .line 101
    .end local v4    # "offset":I
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result v5

    move v4, v5

    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method addView(Landroid/view/View;Z)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "hidden":Z
    move-object v3, v0

    move-object v4, v1

    const/4 v5, -0x1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 86
    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 10

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move v4, p4

    .local v4, "hidden":Z
    move v6, v2

    if-gez v6, :cond_1

    .line 231
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v6}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v6

    move v5, v6

    .line 235
    .local v5, "offset":I
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v7, v5

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 236
    move v6, v4

    if-eqz v6, :cond_0

    .line 237
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 239
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v7, v1

    move v8, v5

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Landroidx/recyclerview/widget/ChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void

    .line 233
    .end local v5    # "offset":I
    :cond_1
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result v6

    move v5, v6

    .restart local v5    # "offset":I
    goto :goto_0
.end method

.method detachViewFromParent(I)V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result v3

    move v2, v3

    .line 283
    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v3

    .line 284
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v4, v2

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->detachViewFromParent(I)V

    .line 288
    return-void
.end method

.method findHiddenNonRemovedView(I)Landroid/view/View;
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v2, v6

    .line 207
    .local v2, "count":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 208
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 209
    .local v4, "view":Landroid/view/View;
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v7, v4

    invoke-interface {v6, v7}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 210
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    .line 211
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    .line 212
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    .line 213
    move-object v6, v4

    move-object v0, v6

    .line 216
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v0

    .line 207
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result v3

    move v2, v3

    .line 181
    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v4, v2

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return-object v0
.end method

.method getChildCount()I
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return-object v0
.end method

.method getUnfilteredChildCount()I
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return v0
.end method

.method hide(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 329
    .local v2, "offset":I
    move v3, v2

    if-gez v3, :cond_0

    .line 330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view is not a child, cannot hide "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 336
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method indexOfChild(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 298
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 299
    const/4 v3, -0x1

    move v0, v3

    .line 309
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :goto_0
    return v0

    .line 301
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 309
    :cond_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return v0
.end method

.method removeAllViewsUnfiltered()V
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    .line 189
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 190
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeAllViews()V

    .line 197
    return-void
.end method

.method removeView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 141
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    .line 142
    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v3

    .line 147
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v4, v2

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 151
    goto :goto_0
.end method

.method removeViewAt(I)V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result v4

    move v2, v4

    .line 161
    .local v2, "offset":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v5, v2

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 162
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 163
    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v4

    .line 168
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v5, v2

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 172
    goto :goto_0
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 374
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 375
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 389
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :goto_0
    return v0

    .line 380
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v3

    .line 382
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 386
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move v4, v2

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 387
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 389
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hidden list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper;
    return-object v0
.end method

.method unhide(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 351
    .local v2, "offset":I
    move v3, v2

    if-gez v3, :cond_0

    .line 352
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view is not a child, cannot hide "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to unhide a view that was not hidden"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    .line 358
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v3

    .line 359
    return-void
.end method
