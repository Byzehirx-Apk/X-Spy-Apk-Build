.class public Landroidx/recyclerview/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRemainingScrollHorizontal:I

.field mRemainingScrollVertical:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12106
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12121
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 12132
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 12138
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 12150
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12156
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 12158
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 12165
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12167
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12169
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12175
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 12177
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 7

    .prologue
    .line 12112
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move v1, p1

    .local v1, "accepted":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 12113
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Layout state should be one of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    .line 12114
    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12115
    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12117
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 2

    .prologue
    .line 12338
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 12292
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 12293
    const/4 v2, 0x0

    move-object v0, v2

    .line 12295
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 12366
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v1, v2

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getRemainingScrollHorizontal()I
    .locals 2

    .prologue
    .line 12379
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public getRemainingScrollVertical()I
    .locals 2

    .prologue
    .line 12390
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public getTargetScrollPosition()I
    .locals 2

    .prologue
    .line 12321
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 3

    .prologue
    .line 12330
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMeasuring()Z
    .locals 2

    .prologue
    .line 12236
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public isPreLayout()Z
    .locals 2

    .prologue
    .line 12245
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4

    .prologue
    .line 12214
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12215
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 12216
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12217
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12218
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12219
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 12307
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 12308
    move-object v3, v0

    new-instance v4, Landroid/util/SparseArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 12310
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12311
    return-void
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 12276
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 12277
    .line 12280
    :goto_0
    return-void

    .line 12279
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 12280
    goto :goto_0
.end method

.method reset()Landroidx/recyclerview/widget/RecyclerView$State;
    .locals 3

    .prologue
    .line 12196
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 12197
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 12198
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12200
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 12201
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 12202
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12203
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12395
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State{mTargetPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mItemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsMeasuring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPreviousLayoutItemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mStructureChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mInPreLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRunSimpleAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRunPredictiveAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 2

    .prologue
    .line 12256
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 2

    .prologue
    .line 12267
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$State;
    return v0
.end method
