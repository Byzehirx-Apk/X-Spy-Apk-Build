.class public abstract Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 12483
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12539
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12540
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 12543
    move-object v1, v0

    const-wide/16 v2, 0x78

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 12544
    move-object v1, v0

    const-wide/16 v2, 0x78

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12545
    move-object v1, v0

    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12546
    move-object v1, v0

    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 13151
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 6

    .prologue
    .line 12868
    move-object v0, p0

    .local v0, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v5, 0xe

    and-int/lit8 v4, v4, 0xe

    move v1, v4

    .line 12869
    .local v1, "flags":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12870
    const/4 v4, 0x4

    move v0, v4

    .line 12879
    .end local v0    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_0
    return v0

    .line 12872
    .restart local v0    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move v4, v1

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    .line 12873
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v4

    move v2, v4

    .line 12874
    .local v2, "oldPos":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    move v3, v4

    .line 12875
    .local v3, "pos":I
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 12876
    move v4, v1

    const/16 v5, 0x800

    or-int/lit16 v4, v4, 0x800

    move v1, v4

    .line 12879
    .end local v2    # "oldPos":I
    .end local v3    # "pos":I
    :cond_1
    move v4, v1

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
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
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
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
.end method

.method public abstract animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
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
.end method

.method public abstract animatePersistence(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
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
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13057
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 13087
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return v0
.end method

.method public final dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12952
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12953
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v2, :cond_0

    .line 12954
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12956
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12993
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->onAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12994
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 5

    .prologue
    .line 13095
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 13096
    .local v1, "count":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 13097
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 13096
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13099
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 13100
    return-void
.end method

.method public abstract endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 3

    .prologue
    .line 12572
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 3

    .prologue
    .line 12608
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 3

    .prologue
    .line 12554
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 3

    .prologue
    .line 12590
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13024
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v3

    move v2, v3

    .line 13025
    .local v2, "running":Z
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 13026
    move v3, v2

    if-nez v3, :cond_1

    .line 13027
    move-object v3, v1

    invoke-interface {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 13032
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return v0

    .line 13029
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 13113
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-object v0
.end method

.method public onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12967
    return-void
.end method

.method public onAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13005
    return-void
.end method

.method public recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 12697
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-object v0
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 12668
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v3, p3

    .local v3, "changeFlags":I
    move-object v4, p4

    .local v4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 7

    .prologue
    .line 12581
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-wide v1, p1

    .local v1, "addDuration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 12582
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 7

    .prologue
    .line 12617
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-wide v1, p1

    .local v1, "changeDuration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 12618
    return-void
.end method

.method setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 4

    .prologue
    .line 12629
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12630
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 7

    .prologue
    .line 12563
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-wide v1, p1

    .local v1, "moveDuration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12564
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 7

    .prologue
    .line 12599
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-wide v1, p1

    .local v1, "removeDuration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12600
    return-void
.end method
