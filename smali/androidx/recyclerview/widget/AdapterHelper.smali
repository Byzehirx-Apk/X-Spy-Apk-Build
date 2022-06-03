.class Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/AdapterHelper$Callback;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/AdapterHelper$Callback;
    move v2, p2

    .local v2, "disableRecycler":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v3, v0

    new-instance v4, Landroidx/core/util/Pools$SimplePool;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 57
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 59
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 69
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 76
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 77
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    .line 78
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/OpReorderer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    .line 79
    return-void
.end method

.method private applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 433
    return-void
.end method

.method private applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 131
    return-void
.end method

.method private applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 15

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object/from16 v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v10, v1

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v2, v10

    .line 135
    .local v2, "tmpStart":I
    const/4 v10, 0x0

    move v3, v10

    .line 136
    .local v3, "tmpCount":I
    move-object v10, v1

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    move v4, v10

    .line 137
    .local v4, "tmpEnd":I
    const/4 v10, -0x1

    move v5, v10

    .line 138
    .local v5, "type":I
    move-object v10, v1

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v10

    .local v6, "position":I
    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 139
    const/4 v10, 0x0

    move v7, v10

    .line 140
    .local v7, "typeChanged":Z
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move v11, v6

    invoke-interface {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    move-object v8, v10

    .line 141
    .local v8, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v10, v8

    if-nez v10, :cond_0

    move-object v10, v0

    move v11, v6

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 148
    :cond_0
    move v10, v5

    if-nez v10, :cond_1

    .line 151
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v9, v10

    .line 152
    .local v9, "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 153
    const/4 v10, 0x1

    move v7, v10

    .line 155
    .end local v9    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v10, 0x1

    move v5, v10

    .line 168
    :goto_1
    move v10, v7

    if-eqz v10, :cond_4

    .line 169
    move v10, v6

    move v11, v3

    sub-int/2addr v10, v11

    move v6, v10

    .line 170
    move v10, v4

    move v11, v3

    sub-int/2addr v10, v11

    move v4, v10

    .line 171
    const/4 v10, 0x1

    move v3, v10

    .line 138
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    :cond_2
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 162
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v9, v10

    .line 163
    .restart local v9    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 164
    const/4 v10, 0x1

    move v7, v10

    .line 166
    .end local v9    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v10, 0x0

    move v5, v10

    goto :goto_1

    .line 173
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_5
    move v10, v3

    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v10, v11, :cond_6

    .line 177
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 178
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v1, v10

    .line 180
    :cond_6
    move v10, v5

    if-nez v10, :cond_7

    .line 181
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 185
    :goto_3
    return-void

    .line 183
    :cond_7
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 14

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v2, v9

    .line 189
    .local v2, "tmpStart":I
    const/4 v9, 0x0

    move v3, v9

    .line 190
    .local v3, "tmpCount":I
    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v1

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v10

    move v4, v9

    .line 191
    .local v4, "tmpEnd":I
    const/4 v9, -0x1

    move v5, v9

    .line 192
    .local v5, "type":I
    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v9

    .local v6, "position":I
    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_4

    .line 193
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move v10, v6

    invoke-interface {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v7, v9

    .line 194
    .local v7, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v7

    if-nez v9, :cond_0

    move-object v9, v0

    move v10, v6

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 195
    :cond_0
    move v9, v5

    if-nez v9, :cond_1

    .line 196
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v8, v9

    .line 198
    .local v8, "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 199
    const/4 v9, 0x0

    move v3, v9

    .line 200
    move v9, v6

    move v2, v9

    .line 202
    .end local v8    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v9, 0x1

    move v5, v9

    .line 213
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 204
    :cond_2
    move v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 205
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v8, v9

    .line 207
    .restart local v8    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 208
    const/4 v9, 0x0

    move v3, v9

    .line 209
    move v9, v6

    move v2, v9

    .line 211
    .end local v8    # "newOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v9, 0x0

    move v5, v9

    goto :goto_1

    .line 215
    .end local v7    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    move v9, v3

    move-object v10, v1

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v9, v10, :cond_5

    .line 216
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object v6, v9

    .line 217
    .local v6, "payload":Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 218
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v1, v9

    .line 220
    .end local v6    # "payload":Ljava/lang/Object;
    :cond_5
    move v9, v5

    if-nez v9, :cond_6

    .line 221
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 225
    :goto_2
    return-void

    .line 223
    :cond_6
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 11

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "position":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 412
    .local v2, "count":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 413
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v4, v7

    .line 414
    .local v4, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 415
    move-object v7, v0

    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_2

    .line 416
    const/4 v7, 0x1

    move v0, v7

    .line 428
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .end local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_1
    return v0

    .line 418
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .restart local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_0
    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 420
    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    move v5, v7

    .line 421
    .local v5, "end":I
    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v7

    .local v6, "pos":I
    :goto_2
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 422
    move-object v7, v0

    move v8, v6

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 423
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 421
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 412
    .end local v5    # "end":I
    .end local v6    # "pos":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 17

    .prologue
    .line 231
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object/from16 v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 232
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "should not dispatch add or move for pre layout"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 245
    :cond_1
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v11

    move v2, v11

    .line 249
    .local v2, "tmpStart":I
    const/4 v11, 0x1

    move v3, v11

    .line 250
    .local v3, "tmpCnt":I
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v4, v11

    .line 252
    .local v4, "offsetPositionForPartial":I
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op should be remove or update."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 254
    :pswitch_1
    const/4 v11, 0x1

    move v5, v11

    .line 262
    .local v5, "positionMultiplier":I
    :goto_0
    const/4 v11, 0x1

    move v6, v11

    .local v6, "p":I
    :goto_1
    move v11, v6

    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v11, v12, :cond_6

    .line 263
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v12, v5

    move v13, v6

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    move v7, v11

    .line 264
    .local v7, "pos":I
    move-object v11, v0

    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v11

    move v8, v11

    .line 268
    .local v8, "updatedPos":I
    const/4 v11, 0x0

    move v9, v11

    .line 269
    .local v9, "continuous":Z
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_1

    .line 277
    :goto_2
    :pswitch_2
    move v11, v9

    if-eqz v11, :cond_4

    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 262
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 257
    .end local v5    # "positionMultiplier":I
    .end local v6    # "p":I
    .end local v7    # "pos":I
    .end local v8    # "updatedPos":I
    .end local v9    # "continuous":Z
    :pswitch_3
    const/4 v11, 0x0

    move v5, v11

    .line 258
    .restart local v5    # "positionMultiplier":I
    goto :goto_0

    .line 271
    .restart local v6    # "p":I
    .restart local v7    # "pos":I
    .restart local v8    # "updatedPos":I
    .restart local v9    # "continuous":Z
    :pswitch_4
    move v11, v8

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_4
    move v9, v11

    .line 272
    goto :goto_2

    .line 271
    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    .line 274
    :pswitch_5
    move v11, v8

    move v12, v2

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_5
    move v9, v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_5

    .line 281
    :cond_4
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    move v13, v2

    move v14, v3

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    move-object v10, v11

    .line 285
    .local v10, "tmp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v11, v0

    move-object v12, v10

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 286
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 287
    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 288
    move v11, v4

    move v12, v3

    add-int/2addr v11, v12

    move v4, v11

    .line 290
    :cond_5
    move v11, v8

    move v2, v11

    .line 291
    const/4 v11, 0x1

    move v3, v11

    goto :goto_3

    .line 294
    .end local v7    # "pos":I
    .end local v8    # "updatedPos":I
    .end local v9    # "continuous":Z
    .end local v10    # "tmp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_6
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object v6, v11

    .line 295
    .local v6, "payload":Ljava/lang/Object;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 296
    move v11, v3

    if-lez v11, :cond_7

    .line 297
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    move v13, v2

    move v14, v3

    move-object v15, v6

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    move-object v7, v11

    .line 301
    .local v7, "tmp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v11, v0

    move-object v12, v7

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 302
    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 312
    .end local v7    # "tmp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_7
    return-void

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 7

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 440
    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 455
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown update op type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 443
    .line 457
    :goto_0
    return-void

    .line 445
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 446
    goto :goto_0

    .line 448
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 450
    goto :goto_0

    .line 452
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 453
    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 12

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "cmd":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v8

    .line 331
    .local v3, "count":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    if-ltz v8, :cond_d

    .line 332
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v5, v8

    .line 333
    .local v5, "postponed":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    .line 335
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v8, v9, :cond_2

    .line 336
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v8

    .line 337
    .local v6, "start":I
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v8

    .line 342
    .local v7, "end":I
    :goto_1
    move v8, v1

    move v9, v6

    if-lt v8, v9, :cond_7

    move v8, v1

    move v9, v7

    if-gt v8, v9, :cond_7

    .line 344
    move v8, v6

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v8, v9, :cond_4

    .line 345
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 346
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 351
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 371
    .line 331
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 339
    :cond_2
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v6, v8

    .line 340
    .restart local v6    # "start":I
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v8

    .restart local v7    # "end":I
    goto :goto_1

    .line 347
    :cond_3
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 348
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 353
    :cond_4
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 354
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 359
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 355
    :cond_6
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 356
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 361
    :cond_7
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v8, v9, :cond_1

    .line 363
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 364
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 366
    :cond_8
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 367
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 368
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 372
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_9
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v9, v1

    if-gt v8, v9, :cond_b

    .line 373
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 374
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v8, v9

    move v1, v8

    goto/16 :goto_3

    .line 375
    :cond_a
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 376
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    move v1, v8

    goto/16 :goto_3

    .line 379
    :cond_b
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 380
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_3

    .line 381
    :cond_c
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 382
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_3

    .line 395
    .end local v5    # "postponed":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_5
    move v8, v4

    if-ltz v8, :cond_11

    .line 396
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v5, v8

    .line 397
    .local v5, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_10

    .line 398
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v8, v9, :cond_e

    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v8, :cond_f

    .line 399
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 400
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 395
    :cond_f
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 402
    :cond_10
    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v8, :cond_f

    .line 403
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 404
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 407
    .end local v5    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_11
    move v8, v1

    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return v0
.end method


# virtual methods
.method varargs addUpdateOp([Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)Landroidx/recyclerview/widget/AdapterHelper;
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "ops":[Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return-object v0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 8

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 589
    .local v2, "size":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 590
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v4, v6

    .line 591
    .local v4, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v6, :sswitch_data_0

    .line 589
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    :sswitch_0
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 594
    move v6, v1

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 598
    :sswitch_1
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 599
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v5, v6

    .line 600
    .local v5, "end":I
    move v6, v5

    move v7, v1

    if-le v6, v7, :cond_1

    .line 601
    const/4 v6, -0x1

    move v0, v6

    .line 620
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .end local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .end local v5    # "end":I
    :goto_2
    return v0

    .line 603
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .restart local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .restart local v5    # "end":I
    :cond_1
    move v6, v1

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    move v1, v6

    .line 604
    goto :goto_1

    .line 607
    .end local v5    # "end":I
    :sswitch_2
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ne v6, v7, :cond_2

    .line 608
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v1, v6

    goto :goto_1

    .line 610
    :cond_2
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ge v6, v7, :cond_3

    .line 611
    add-int/lit8 v1, v1, -0x1

    .line 613
    :cond_3
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    .end local v4    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_4
    move v6, v1

    move v0, v6

    goto :goto_2

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 120
    .local v1, "count":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 121
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 124
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 125
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 8

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 558
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 559
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v3, v4

    .line 561
    .local v3, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 579
    :goto_1
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 580
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 564
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 565
    goto :goto_1

    .line 567
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 568
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 569
    goto :goto_1

    .line 571
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 572
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v7, v3

    iget-object v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 573
    goto :goto_1

    .line 575
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 576
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 583
    .end local v3    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 584
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 585
    return-void

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 8

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move v2, p2

    .local v2, "offsetStart":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 316
    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 324
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move v4, v2

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 319
    .line 327
    :goto_0
    return-void

    .line 321
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    move v4, v2

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 322
    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 5

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return v0
.end method

.method findPositionOffset(II)I
    .locals 9

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "firstPostponedItem":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 473
    .local v3, "count":I
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_6

    .line 474
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 475
    .local v5, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 476
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 477
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v1, v6

    .line 473
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    :cond_1
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ge v6, v7, :cond_2

    .line 480
    add-int/lit8 v1, v1, -0x1

    .line 482
    :cond_2
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 486
    :cond_3
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 487
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 488
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_4

    .line 489
    const/4 v6, -0x1

    move v0, v6

    .line 497
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .end local v5    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_2
    return v0

    .line 491
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    .restart local v5    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_4
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 492
    :cond_5
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 493
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 497
    .end local v5    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_6
    move v6, v1

    move v0, v6

    goto :goto_2
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "updateTypes":I
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasUpdates()Z
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 13

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "cmd":I
    move v2, p2

    .local v2, "positionStart":I
    move/from16 v3, p3

    .local v3, "itemCount":I
    move-object/from16 v4, p4

    .local v4, "payload":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v6}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 728
    .local v5, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 729
    new-instance v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v5, v6

    .line 736
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    return-object v0

    .line 731
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    move-object v6, v5

    move v7, v1

    iput v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 732
    move-object v6, v5

    move v7, v2

    iput v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 733
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 734
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 11

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move v4, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 505
    const/4 v4, 0x0

    move v0, v4

    .line 509
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :goto_0
    return v0

    .line 507
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x4

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 508
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 509
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method onItemRangeInserted(II)Z
    .locals 10

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 517
    const/4 v3, 0x0

    move v0, v3

    .line 521
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :goto_0
    return v0

    .line 519
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x1

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 520
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 521
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onItemRangeMoved(III)Z
    .locals 11

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move v3, p3

    .local v3, "itemCount":I
    move v4, v1

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 541
    const/4 v4, 0x0

    move v0, v4

    .line 548
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :goto_0
    return v0

    .line 543
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 544
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "Moving more than 1 item is not supported yet"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 546
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v5, v0

    const/16 v6, 0x8

    move v7, v1

    move v8, v2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 547
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 548
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 10

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 529
    const/4 v3, 0x0

    move v0, v3

    .line 533
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :goto_0
    return v0

    .line 531
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x2

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 532
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 533
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method preProcess()V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 94
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 95
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 96
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v3, v4

    .line 97
    .local v3, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 111
    :goto_1
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 112
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :pswitch_1
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 103
    goto :goto_1

    .line 105
    :pswitch_3
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 106
    goto :goto_1

    .line 108
    :pswitch_4
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 115
    .end local v3    # "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v2, :cond_0

    .line 742
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 743
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 745
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, p1

    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 749
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 750
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 749
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 752
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 753
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 90
    return-void
.end method
