.class public abstract Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_SET_A11Y_ITEM_DELEGATE:I = 0x4000

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10831
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p1

    .local v2, "itemView":Landroid/view/View;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 10692
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10693
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10694
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10695
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 10696
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10699
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10701
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10806
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10807
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10809
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10813
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 10815
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10819
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10822
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10832
    move-object v3, v2

    if-nez v3, :cond_0

    .line 10833
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "itemView may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10835
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10836
    return-void
.end method

.method private createPayloadsIfNeeded()V
    .locals 5

    .prologue
    .line 11050
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v1, :cond_0

    .line 11051
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11052
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11054
    :cond_0
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 11041
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, p1

    .local v1, "payload":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 11042
    move-object v2, v0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11047
    :cond_0
    :goto_0
    return-void

    .line 11043
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, 0x400

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 11044
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11045
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 6

    .prologue
    .line 11037
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11038
    return-void
.end method

.method clearOldPosition()V
    .locals 3

    .prologue
    .line 10861
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10862
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10863
    return-void
.end method

.method clearPayload()V
    .locals 4

    .prologue
    .line 11057
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 11058
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11060
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x401

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11061
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 4

    .prologue
    .line 10988
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x21

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10989
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 4

    .prologue
    .line 10992
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x101

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10993
    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .locals 3

    .prologue
    .line 11195
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 7

    .prologue
    .line 10839
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "mNewPosition":I
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "applyToPreLayout":Z
    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 10840
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 10841
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10842
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 3

    .prologue
    .line 10937
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 10938
    const/4 v1, -0x1

    move v0, v1

    .line 10940
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 3

    .prologue
    .line 10965
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 2

    .prologue
    .line 10972
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0
.end method

.method public final getLayoutPosition()I
    .locals 3

    .prologue
    .line 10911
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 2

    .prologue
    .line 10955
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0
.end method

.method public final getPosition()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10885
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11064
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 11065
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 11067
    :cond_0
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    .line 11073
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v0

    .line 11070
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    .line 11073
    :cond_2
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 4

    .prologue
    .line 11021
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 3

    .prologue
    .line 11029
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 3

    .prologue
    .line 11013
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 3

    .prologue
    .line 11005
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 3

    .prologue
    .line 11178
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11179
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 3

    .prologue
    .line 11017
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 2

    .prologue
    .line 10976
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 3

    .prologue
    .line 11025
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 3

    .prologue
    .line 11199
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 3

    .prologue
    .line 11009
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 7

    .prologue
    .line 10845
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "applyToPreLayout":Z
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 10846
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10848
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 10849
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10851
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 10852
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10854
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10855
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10856
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10858
    :cond_3
    return-void
.end method

.method onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 11097
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 11098
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11103
    :goto_0
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result v2

    .line 11105
    return-void

    .line 11100
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11101
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0
.end method

.method onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 11111
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result v2

    .line 11113
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11114
    return-void
.end method

.method resetInternal()V
    .locals 4

    .prologue
    .line 11078
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11079
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11080
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11081
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11082
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11083
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11084
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11085
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11086
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11087
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11088
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11089
    move-object v1, v0

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11090
    return-void
.end method

.method saveOldPosition()V
    .locals 3

    .prologue
    .line 10866
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 10867
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10869
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 7

    .prologue
    .line 11033
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "flags":I
    move v2, p2

    .local v2, "mask":I
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11034
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 6

    .prologue
    .line 11153
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v1, p1

    .local v1, "recyclable":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11154
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v2, :cond_2

    .line 11155
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11160
    const-string/jumbo v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 11170
    :cond_0
    :goto_1
    return-void

    .line 11153
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11162
    :cond_2
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 11163
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 11164
    :cond_3
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v2, :cond_0

    .line 11165
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 5

    .prologue
    .line 11000
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "isChangeScrap":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11001
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11002
    return-void
.end method

.method shouldBeKeptAsChild()Z
    .locals 3

    .prologue
    .line 11187
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method shouldIgnore()Z
    .locals 3

    .prologue
    .line 10872
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 4

    .prologue
    .line 10996
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x81

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10997
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 11118
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ViewHolder{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 11119
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", oldPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pLpos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 11121
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11122
    move-object v3, v2

    const-string/jumbo v4, " scrap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "[changeScrap]"

    .line 11123
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11125
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    const-string/jumbo v4, " invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11126
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    const-string/jumbo v4, " unbound"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11127
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    const-string/jumbo v4, " update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11128
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    const-string/jumbo v4, " removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11129
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    const-string/jumbo v4, " ignored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11130
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    const-string/jumbo v4, " tmpDetached"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11131
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-nez v3, :cond_7

    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " not recyclable("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11132
    :cond_7
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v2

    const-string/jumbo v4, " undefined adapter position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11134
    :cond_8
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v3, v2

    const-string/jumbo v4, " no parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11135
    :cond_9
    move-object v3, v2

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11136
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return-object v1

    .line 11122
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_a
    const-string/jumbo v4, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 3

    .prologue
    .line 10980
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10981
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 3

    .prologue
    .line 10984
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
