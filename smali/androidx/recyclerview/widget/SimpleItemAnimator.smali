.class public abstract Landroidx/recyclerview/widget/SimpleItemAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 41
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "preLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v3, p3

    .local v3, "postLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v5, :cond_0

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v4, v5, :cond_1

    .line 120
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v8, v3

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    move v0, v4

    .line 126
    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 16
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object/from16 v1, p1

    .local v1, "oldHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v2, p2

    .local v2, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v3, p3

    .local v3, "preInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object/from16 v4, p4

    .local v4, "postInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v5, v9

    .line 152
    .local v5, "fromLeft":I
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, v9

    .line 154
    .local v6, "fromTop":I
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 155
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v7, v9

    .line 156
    .local v7, "toLeft":I
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v8, v9

    .line 161
    .local v8, "toTop":I
    :goto_0
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v9

    move v0, v9

    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    return v0

    .line 158
    .end local v7    # "toLeft":I
    .end local v8    # "toTop":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :cond_0
    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v7, v9

    .line 159
    .restart local v7    # "toLeft":I
    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v8, v9

    .restart local v8    # "toTop":I
    goto :goto_0
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 15
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object/from16 v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v2, p2

    .local v2, "preLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object/from16 v3, p3

    .local v3, "postLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v4, v9

    .line 91
    .local v4, "oldLeft":I
    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, v9

    .line 92
    .local v5, "oldTop":I
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 93
    .local v6, "disappearingItemView":Landroid/view/View;
    move-object v9, v3

    if-nez v9, :cond_1

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    :goto_0
    move v7, v9

    .line 94
    .local v7, "newLeft":I
    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    :goto_1
    move v8, v9

    .line 95
    .local v8, "newTop":I
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v4

    move v10, v7

    if-ne v9, v10, :cond_0

    move v9, v5

    move v10, v8

    if-eq v9, v10, :cond_3

    .line 96
    :cond_0
    move-object v9, v6

    move v10, v7

    move v11, v8

    move v12, v7

    move-object v13, v6

    .line 97
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v13, v8

    move-object v14, v6

    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 96
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 102
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    move v12, v5

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v9

    move v0, v9

    .line 107
    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :goto_2
    return v0

    .line 93
    .end local v7    # "newLeft":I
    .end local v8    # "newTop":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :cond_1
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    .line 94
    .restart local v7    # "newLeft":I
    :cond_2
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_1

    .line 107
    .restart local v8    # "newTop":I
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    move v0, v9

    goto :goto_2
.end method

.method public abstract animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "preInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v3, p3

    .local v3, "postInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v5, :cond_0

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v4, v5, :cond_1

    .line 138
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v8, v3

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    move v0, v4

    .line 142
    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :goto_0
    return v0

    .line 141
    .restart local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 142
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public abstract animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 302
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 303
    return-void
.end method

.method public final dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 345
    return-void
.end method

.method public final dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 6

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "oldItem":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 317
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 318
    return-void
.end method

.method public final dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 6

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "oldItem":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 358
    return-void
.end method

.method public final dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 292
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 293
    return-void
.end method

.method public final dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 336
    return-void
.end method

.method public final dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 277
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 278
    return-void
.end method

.method public final dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 327
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    return v0
.end method

.method public onAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 404
    return-void
.end method

.method public onAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 393
    return-void
.end method

.method public onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 454
    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 441
    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 427
    return-void
.end method

.method public onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 416
    return-void
.end method

.method public onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 381
    return-void
.end method

.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .prologue
    .line 370
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SimpleItemAnimator;
    move v1, p1

    .local v1, "supportsChangeAnimations":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 72
    return-void
.end method
