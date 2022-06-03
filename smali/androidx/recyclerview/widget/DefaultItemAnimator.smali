.class public Landroidx/recyclerview/widget/DefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;,
        Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 43
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 45
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 46
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 52
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 53
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 54
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 55
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 13

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v5

    .line 200
    .local v3, "view":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-object v4, v5

    .line 201
    .local v4, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 202
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 217
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object v2, p2

    .local v2, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 401
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v4, v5

    .line 402
    .local v4, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    move-object v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 404
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 400
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 408
    .end local v4    # "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 5

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 412
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 414
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 415
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 417
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    move-object v2, p2

    .local v2, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x0

    move v3, v4

    .line 420
    .local v3, "oldItem":Z
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 421
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 428
    :goto_0
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 429
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 430
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 432
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :goto_1
    return v0

    .line 422
    .restart local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_1

    .line 423
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 424
    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    .line 426
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    sget-object v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v2, :cond_0

    .line 523
    new-instance v2, Landroid/animation/ValueAnimator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    sput-object v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 525
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 526
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 527
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 223
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 224
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 225
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    return v0
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 13

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v5

    .line 230
    .local v3, "view":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-object v4, v5

    .line 231
    .local v4, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 232
    move-object v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$5;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator$5;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 233
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 251
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 22

    .prologue
    .line 321
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object/from16 v1, p1

    .local v1, "oldHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v2, p2

    .local v2, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v3, p3

    .local v3, "fromX":I
    move/from16 v4, p4

    .local v4, "fromY":I
    move/from16 v5, p5

    .local v5, "toX":I
    move/from16 v6, p6

    .local v6, "toY":I
    move-object v12, v1

    move-object v13, v2

    if-ne v12, v13, :cond_0

    .line 324
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v12

    move v0, v12

    .line 344
    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :goto_0
    return v0

    .line 326
    .restart local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v12

    move v7, v12

    .line 327
    .local v7, "prevTranslationX":F
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v12

    move v8, v12

    .line 328
    .local v8, "prevTranslationY":F
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    move v9, v12

    .line 329
    .local v9, "prevAlpha":F
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 330
    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v7

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 331
    .local v10, "deltaX":I
    move v12, v6

    move v13, v4

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v8

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v11, v12

    .line 333
    .local v11, "deltaY":I
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 334
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v9

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 336
    move-object v12, v2

    if-eqz v12, :cond_1

    .line 338
    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 339
    move-object v12, v2

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v10

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    move-object v12, v2

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v11

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    move-object v12, v2

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 343
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-direct/range {v14 .. v20}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 344
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 15

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object/from16 v1, p1

    .local v1, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v7

    .line 349
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v2

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    move-object v3, v7

    .line 350
    .local v3, "view":Landroid/view/View;
    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v4, v7

    .line 351
    .local v4, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_1
    move-object v5, v7

    .line 352
    .local v5, "newView":Landroid/view/View;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 353
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-object v8, v0

    .line 354
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 353
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-object v6, v7

    .line 355
    .local v6, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 356
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 357
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 358
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 374
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 376
    .end local v6    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 377
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-object v6, v7

    .line 378
    .local v6, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 379
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Landroidx/recyclerview/widget/DefaultItemAnimator$8;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator$8;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 395
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 397
    .end local v6    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_1
    return-void

    .line 349
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v5    # "newView":Landroid/view/View;
    :cond_2
    move-object v7, v2

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto/16 :goto_0

    .line 351
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 18

    .prologue
    .line 257
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object/from16 v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v2, p2

    .local v2, "fromX":I
    move/from16 v3, p3

    .local v3, "fromY":I
    move/from16 v4, p4

    .local v4, "toX":I
    move/from16 v5, p5

    .local v5, "toY":I
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 258
    .local v6, "view":Landroid/view/View;
    move v9, v2

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v9, v10

    move v2, v9

    .line 259
    move v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v9, v10

    move v3, v9

    .line 260
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 261
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v7, v9

    .line 262
    .local v7, "deltaX":I
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v8, v9

    .line 263
    .local v8, "deltaY":I
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-nez v9, :cond_0

    .line 264
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 265
    const/4 v9, 0x0

    move v0, v9

    .line 274
    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :goto_0
    return v0

    .line 267
    .restart local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :cond_0
    move v9, v7

    if-eqz v9, :cond_1

    .line 268
    move-object v9, v6

    move v10, v7

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 270
    :cond_1
    move v9, v8

    if-eqz v9, :cond_2

    .line 271
    move-object v9, v6

    move v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 273
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v10, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 274
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 21

    .prologue
    .line 278
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object/from16 v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v3, p2

    .local v3, "fromX":I
    move/from16 v4, p3

    .local v4, "fromY":I
    move/from16 v5, p4

    .local v5, "toX":I
    move/from16 v6, p5

    .local v6, "toY":I
    move-object v11, v2

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v11

    .line 279
    .local v7, "view":Landroid/view/View;
    move v11, v5

    move v12, v3

    sub-int/2addr v11, v12

    move v8, v11

    .line 280
    .local v8, "deltaX":I
    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    move v9, v11

    .line 281
    .local v9, "deltaY":I
    move v11, v8

    if-eqz v11, :cond_0

    .line 282
    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 284
    :cond_0
    move v11, v9

    if-eqz v11, :cond_1

    .line 285
    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 290
    :cond_1
    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    move-object v10, v11

    .line 291
    .local v10, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 292
    move-object v11, v10

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v8

    move-object/from16 v17, v7

    move/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 315
    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 316
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 195
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 6
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
    .line 665
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 642
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 641
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 553
    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v7

    .line 439
    .local v2, "view":Landroid/view/View;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 441
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    .line 442
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v4, v7

    .line 443
    .local v4, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 444
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 445
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 446
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 447
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 441
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 450
    .end local v4    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 451
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 452
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 453
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 455
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 456
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 457
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 460
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_1
    move v7, v3

    if-ltz v7, :cond_5

    .line 461
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 462
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 463
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 464
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 460
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 467
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_2
    move v7, v3

    if-ltz v7, :cond_8

    .line 468
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 469
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "j":I
    :goto_3
    move v7, v5

    if-ltz v7, :cond_6

    .line 470
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v7

    .line 471
    .local v6, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v7, v6

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_7

    .line 472
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 474
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 475
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 476
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 477
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 467
    .end local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 469
    .restart local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 483
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    .end local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_4
    move v7, v3

    if-ltz v7, :cond_a

    .line 484
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 485
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 486
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 487
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 488
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 489
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 483
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 496
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 502
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 508
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 514
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 518
    :cond_e
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 519
    return-void
.end method

.method public endAnimations()V
    .locals 12

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 558
    .local v1, "count":I
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    .local v2, "i":I
    :goto_0
    move v9, v2

    if-ltz v9, :cond_0

    .line 559
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v3, v9

    .line 560
    .local v3, "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v9, v3

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v9

    .line 561
    .local v4, "view":Landroid/view/View;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 562
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 563
    move-object v9, v0

    move-object v10, v3

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 564
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 558
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 566
    .end local v3    # "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 567
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_1
    move v9, v2

    if-ltz v9, :cond_1

    .line 568
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 569
    .local v3, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 570
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 567
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 572
    .end local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 573
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_2
    move v9, v2

    if-ltz v9, :cond_2

    .line 574
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 575
    .restart local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v3

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 576
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 577
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 573
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 579
    .end local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 580
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_3
    move v9, v2

    if-ltz v9, :cond_3

    .line 581
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 580
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 583
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 584
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v9

    if-nez v9, :cond_4

    .line 585
    .line 638
    .end local v2    # "i":I
    :goto_4
    return-void

    .line 588
    .restart local v2    # "i":I
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 589
    .local v2, "listCount":I
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    .local v3, "i":I
    :goto_5
    move v9, v3

    if-ltz v9, :cond_7

    .line 590
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 591
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 592
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .local v5, "j":I
    :goto_6
    move v9, v5

    if-ltz v9, :cond_6

    .line 593
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v9

    .line 594
    .local v6, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v9, v6

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v9

    .line 595
    .local v7, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v7

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v9

    .line 596
    .local v8, "view":Landroid/view/View;
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 597
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 598
    move-object v9, v0

    move-object v10, v6

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 599
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 600
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 601
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 592
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 589
    .end local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v7    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 605
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 606
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_7
    move v9, v3

    if-ltz v9, :cond_a

    .line 607
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 608
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 609
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .restart local v5    # "j":I
    :goto_8
    move v9, v5

    if-ltz v9, :cond_9

    .line 610
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v6, v9

    .line 611
    .local v6, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v6

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v9

    .line 612
    .local v7, "view":Landroid/view/View;
    move-object v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 613
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 614
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 615
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 616
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 609
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 606
    .end local v6    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 620
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 621
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_9
    move v9, v3

    if-ltz v9, :cond_d

    .line 622
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 623
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 624
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .restart local v5    # "j":I
    :goto_a
    move v9, v5

    if-ltz v9, :cond_c

    .line 625
    move-object v9, v0

    move-object v10, v4

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 626
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 627
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 624
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 621
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 632
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v5    # "j":I
    :cond_d
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 633
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 634
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 635
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 637
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 638
    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 25

    .prologue
    .line 102
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v3, v18

    .line 103
    .local v3, "removalsPending":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x1

    :goto_1
    move/from16 v4, v18

    .line 104
    .local v4, "movesPending":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    const/16 v18, 0x1

    :goto_2
    move/from16 v5, v18

    .line 105
    .local v5, "changesPending":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_3
    move/from16 v6, v18

    .line 106
    .local v6, "additionsPending":Z
    move/from16 v18, v3

    if-nez v18, :cond_4

    move/from16 v18, v4

    if-nez v18, :cond_4

    move/from16 v18, v6

    if-nez v18, :cond_4

    move/from16 v18, v5

    if-nez v18, :cond_4

    .line 108
    .line 189
    :goto_4
    return-void

    .line 102
    .end local v3    # "removalsPending":Z
    .end local v4    # "movesPending":Z
    .end local v5    # "changesPending":Z
    .end local v6    # "additionsPending":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 103
    .restart local v3    # "removalsPending":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 104
    .restart local v4    # "movesPending":Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 105
    .restart local v5    # "changesPending":Z
    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    .line 111
    .restart local v6    # "additionsPending":Z
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v7, v18

    :goto_5
    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v8, v18

    .line 112
    .local v8, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 113
    goto :goto_5

    .line 114
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 116
    move/from16 v18, v4

    if-eqz v18, :cond_6

    .line 117
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v18

    .line 118
    .local v7, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v18

    .line 119
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 120
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 121
    new-instance v18, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v8, v18

    .line 132
    .local v8, "mover":Ljava/lang/Runnable;
    move/from16 v18, v3

    if-eqz v18, :cond_a

    .line 133
    move-object/from16 v18, v7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 134
    .local v9, "view":Landroid/view/View;
    move-object/from16 v18, v9

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    .line 140
    .end local v7    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v8    # "mover":Ljava/lang/Runnable;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    :goto_6
    move/from16 v18, v5

    if-eqz v18, :cond_7

    .line 141
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v18

    .line 142
    .local v7, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v18

    .line 143
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 144
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v18, Landroidx/recyclerview/widget/DefaultItemAnimator$2;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v8, v18

    .line 155
    .local v8, "changer":Ljava/lang/Runnable;
    move/from16 v18, v3

    if-eqz v18, :cond_b

    .line 156
    move-object/from16 v18, v7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 157
    .local v9, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 158
    .line 163
    .end local v7    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v8    # "changer":Ljava/lang/Runnable;
    .end local v9    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_7
    :goto_7
    move/from16 v18, v6

    if-eqz v18, :cond_9

    .line 164
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v18

    .line 165
    .local v7, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v18

    .line 166
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 167
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 168
    new-instance v18, Landroidx/recyclerview/widget/DefaultItemAnimator$3;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v8, v18

    .line 178
    .local v8, "adder":Ljava/lang/Runnable;
    move/from16 v18, v3

    if-nez v18, :cond_8

    move/from16 v18, v4

    if-nez v18, :cond_8

    move/from16 v18, v5

    if-eqz v18, :cond_f

    .line 179
    :cond_8
    move/from16 v18, v3

    if-eqz v18, :cond_c

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v18

    :goto_8
    move-wide/from16 v9, v18

    .line 180
    .local v9, "removeDuration":J
    move/from16 v18, v4

    if-eqz v18, :cond_d

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v18

    :goto_9
    move-wide/from16 v11, v18

    .line 181
    .local v11, "moveDuration":J
    move/from16 v18, v5

    if-eqz v18, :cond_e

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v18

    :goto_a
    move-wide/from16 v13, v18

    .line 182
    .local v13, "changeDuration":J
    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v15, v18

    .line 183
    .local v15, "totalDelay":J
    move-object/from16 v18, v7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 184
    .local v17, "view":Landroid/view/View;
    move-object/from16 v18, v17

    move-object/from16 v19, v8

    move-wide/from16 v20, v15

    invoke-static/range {v18 .. v21}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 185
    .line 189
    .end local v7    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v8    # "adder":Ljava/lang/Runnable;
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "changeDuration":J
    .end local v15    # "totalDelay":J
    .end local v17    # "view":Landroid/view/View;
    :cond_9
    :goto_b
    goto/16 :goto_4

    .line 136
    .local v7, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .local v8, "mover":Ljava/lang/Runnable;
    :cond_a
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 159
    .local v7, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .local v8, "changer":Ljava/lang/Runnable;
    :cond_b
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 179
    .local v7, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .local v8, "adder":Ljava/lang/Runnable;
    :cond_c
    const-wide/16 v18, 0x0

    goto :goto_8

    .line 180
    .restart local v9    # "removeDuration":J
    :cond_d
    const-wide/16 v18, 0x0

    goto :goto_9

    .line 181
    .restart local v11    # "moveDuration":J
    :cond_e
    const-wide/16 v18, 0x0

    goto :goto_a

    .line 186
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    :cond_f
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto :goto_b
.end method
