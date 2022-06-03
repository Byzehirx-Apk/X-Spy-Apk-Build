.class public final Landroidx/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 5637
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 5638
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5639
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5641
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5643
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5644
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5646
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5647
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 6039
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6040
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v3

    .line 6041
    .local v2, "itemView":Landroid/view/View;
    move-object v3, v2

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 6043
    move-object v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 6046
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6047
    move-object v3, v1

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6048
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 6049
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v4

    .line 6048
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 6052
    .end local v2    # "itemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 8

    .prologue
    .line 6061
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "invalidateThis":Z
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 6062
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 6063
    .local v4, "view":Landroid/view/View;
    move-object v5, v4

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 6064
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6061
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6067
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    move v5, v2

    if-nez v5, :cond_2

    .line 6068
    .line 6079
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 6071
    .restart local v3    # "i":I
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 6072
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6073
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6079
    .end local v3    # "i":I
    :goto_2
    goto :goto_1

    .line 6075
    .restart local v3    # "i":I
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    move v3, v5

    .line 6076
    .local v3, "visibility":I
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6077
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private invalidateDisplayListInt(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 6055
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 6056
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6058
    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 18
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5744
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v3, p2

    .local v3, "offsetPosition":I
    move/from16 v4, p3

    .local v4, "position":I
    move-wide/from16 v5, p4

    .local v5, "deadlineNs":J
    move-object v12, v2

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5745
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    move v7, v12

    .line 5746
    .local v7, "viewType":I
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    move-wide v8, v12

    .line 5747
    .local v8, "startBindNs":J
    move-wide v12, v5

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move v13, v7

    move-wide v14, v8

    move-wide/from16 v16, v5

    .line 5748
    invoke-virtual/range {v12 .. v17}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v12

    if-nez v12, :cond_0

    .line 5750
    const/4 v12, 0x0

    move v1, v12

    .line 5759
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :goto_0
    return v1

    .line 5752
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v13, v2

    move v14, v3

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 5753
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    move-wide v10, v12

    .line 5754
    .local v10, "endBindNs":J
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v13

    move-wide v14, v10

    move-wide/from16 v16, v8

    sub-long v14, v14, v16

    invoke-virtual {v12, v13, v14, v15}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5755
    move-object v12, v1

    move-object v13, v2

    invoke-direct {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5756
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5757
    move-object v12, v2

    move v13, v4

    iput v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5759
    :cond_1
    const/4 v12, 0x1

    move v1, v12

    goto :goto_0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 6250
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "dispatchRecycled":Z
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6251
    move-object v3, v1

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6252
    move-object v3, v1

    const/4 v4, 0x0

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6253
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 6255
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    .line 6256
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->dispatchViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6258
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6259
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6260
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5778
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p1

    .local v2, "view":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "position":I
    move-object v8, v2

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5779
    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 5780
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5782
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5784
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v5, v8

    .line 5785
    .local v5, "offsetPosition":I
    move v8, v5

    if-ltz v8, :cond_1

    move v8, v5

    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_2

    .line 5786
    :cond_1
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Inconsistency detected. Invalid item position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 5788
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5790
    :cond_2
    move-object v8, v1

    move-object v9, v4

    move v10, v5

    move v11, v3

    const-wide v12, 0x7fffffffffffffffL

    invoke-direct/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v8

    .line 5792
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v6, v8

    .line 5794
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v8, v6

    if-nez v8, :cond_3

    .line 5795
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 5796
    .local v7, "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5804
    :goto_0
    move-object v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5805
    move-object v8, v7

    move-object v9, v4

    iput-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5806
    move-object v8, v7

    move-object v9, v4

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5807
    return-void

    .line 5797
    .end local v7    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 5798
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 5799
    .restart local v7    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5801
    .end local v7    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_4
    move-object v8, v6

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .restart local v7    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    goto :goto_0

    .line 5806
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 5660
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5661
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5662
    return-void
.end method

.method clearOldPositions()V
    .locals 7

    .prologue
    .line 6627
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 6628
    .local v1, "cachedCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 6629
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 6630
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6628
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6632
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 6633
    .local v2, "scrapCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 6634
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6633
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6636
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 6637
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 6638
    .local v3, "changedScrapCount":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 6639
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6638
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6642
    .end local v3    # "changedScrapCount":I
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 2

    .prologue
    .line 6330
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6331
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6332
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6334
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 7

    .prologue
    .line 5828
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 5829
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "item count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 5830
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5832
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5833
    move v2, v1

    move v0, v2

    .line 5835
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method dispatchViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 6481
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 6482
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6484
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    .line 6485
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6487
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-eqz v2, :cond_2

    .line 6488
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6491
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 6339
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "position":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v2, v9

    .local v2, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 6340
    .end local v2    # "changedScrapSize":I
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 6364
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :goto_0
    return-object v0

    .line 6343
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .restart local v2    # "changedScrapSize":I
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_1
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 6344
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v4, v8

    .line 6345
    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_2

    .line 6346
    move-object v8, v4

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6347
    move-object v8, v4

    move-object v0, v8

    goto :goto_0

    .line 6343
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6351
    .end local v4    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6352
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v3, v8

    .line 6353
    .local v3, "offsetPosition":I
    move v8, v3

    if-lez v8, :cond_5

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 6354
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v8

    move-wide v4, v8

    .line 6355
    .local v4, "id":J
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_2
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_5

    .line 6356
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 6357
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 6358
    move-object v8, v7

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6359
    move-object v8, v7

    move-object v0, v8

    goto/16 :goto_0

    .line 6355
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6364
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_5
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 5

    .prologue
    .line 6585
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    .line 6586
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6588
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return-object v0
.end method

.method getScrapCount()I
    .locals 2

    .prologue
    .line 6322
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5692
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 15

    .prologue
    .line 6429
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move/from16 v4, p3

    .local v4, "type":I
    move/from16 v5, p4

    .local v5, "dryRun":Z
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v6, v10

    .line 6430
    .local v6, "count":I
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    if-ltz v10, :cond_3

    .line 6431
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v8, v10

    .line 6432
    .local v8, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v10, v8

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v10

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    move-object v10, v8

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-nez v10, :cond_2

    .line 6433
    move v10, v4

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 6434
    move-object v10, v8

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6435
    move-object v10, v8

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6444
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_0

    .line 6445
    move-object v10, v8

    const/4 v11, 0x2

    const/16 v12, 0xe

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6449
    :cond_0
    move-object v10, v8

    move-object v1, v10

    .line 6477
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .end local v7    # "i":I
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v1

    .line 6450
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .restart local v7    # "i":I
    .restart local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move v10, v5

    if-nez v10, :cond_2

    .line 6454
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 6455
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v8

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6456
    move-object v10, v1

    move-object v11, v8

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6430
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 6462
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v10

    .line 6463
    .local v7, "cacheSize":I
    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .local v8, "i":I
    :goto_2
    move v10, v8

    if-ltz v10, :cond_7

    .line 6464
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v9, v10

    .line 6465
    .local v9, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v10, v9

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v10

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 6466
    move v10, v4

    move-object v11, v9

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 6467
    move v10, v5

    if-nez v10, :cond_4

    .line 6468
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 6470
    :cond_4
    move-object v10, v9

    move-object v1, v10

    goto :goto_1

    .line 6471
    :cond_5
    move v10, v5

    if-nez v10, :cond_6

    .line 6472
    move-object v10, v1

    move v11, v8

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6473
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_1

    .line 6463
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 6477
    .end local v9    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_7
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_1
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .prologue
    .line 6375
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "dryRun":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 6378
    .local v3, "scrapCount":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 6379
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v7

    .line 6380
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_1

    move-object v7, v5

    .line 6381
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v7, :cond_0

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6382
    :cond_0
    move-object v7, v5

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6383
    move-object v7, v5

    move-object v0, v7

    .line 6424
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .end local v4    # "i":I
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v0

    .line 6378
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .restart local v4    # "i":I
    .restart local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6387
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move v7, v2

    if-nez v7, :cond_4

    .line 6388
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 6389
    .local v4, "view":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_4

    .line 6392
    move-object v7, v4

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v5, v7

    .line 6393
    .local v5, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6394
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 6395
    .local v6, "layoutIndex":I
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 6396
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6397
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6399
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6400
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6401
    move-object v7, v5

    const/16 v8, 0x2020

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6403
    move-object v7, v5

    move-object v0, v7

    goto :goto_1

    .line 6408
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v6    # "layoutIndex":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 6409
    .local v4, "cacheSize":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_7

    .line 6410
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v6, v7

    .line 6413
    .local v6, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_6

    .line 6414
    move v7, v2

    if-nez v7, :cond_5

    .line 6415
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 6421
    :cond_5
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_1

    .line 6409
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6424
    .end local v6    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_7
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 6326
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5854
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 5858
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "dryRun":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 7

    .prologue
    .line 6645
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 6646
    .local v1, "cachedCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 6647
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 6648
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v3

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v4, v5

    .line 6649
    .local v4, "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 6650
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6646
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6653
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 6611
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 6612
    .local v1, "cachedCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 6613
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v4

    .line 6614
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 6615
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6616
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6612
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6620
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6622
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6624
    :cond_3
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 6529
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "insertedAt":I
    move v2, p2

    .local v2, "count":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 6530
    .local v3, "cachedCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 6531
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v6

    .line 6532
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 6537
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6530
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6540
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 6501
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 6502
    move v9, v1

    move v3, v9

    .line 6503
    .local v3, "start":I
    move v9, v2

    move v4, v9

    .line 6504
    .local v4, "end":I
    const/4 v9, -0x1

    move v5, v9

    .line 6510
    .local v5, "inBetweenOffset":I
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 6511
    .local v6, "cachedCount":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_4

    .line 6512
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v8, v9

    .line 6513
    .local v8, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v3

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-le v9, v10, :cond_2

    .line 6514
    .line 6511
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6506
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "inBetweenOffset":I
    .end local v6    # "cachedCount":I
    .end local v7    # "i":I
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move v9, v2

    move v3, v9

    .line 6507
    .restart local v3    # "start":I
    move v9, v1

    move v4, v9

    .line 6508
    .restart local v4    # "end":I
    const/4 v9, 0x1

    move v5, v9

    .restart local v5    # "inBetweenOffset":I
    goto :goto_0

    .line 6516
    .restart local v6    # "cachedCount":I
    .restart local v7    # "i":I
    .restart local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 6517
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6519
    :cond_3
    move-object v9, v8

    move v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6526
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 11

    .prologue
    .line 6549
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "removedFrom":I
    move v2, p2

    .local v2, "count":I
    move v3, p3

    .local v3, "applyToPreLayout":Z
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 6550
    .local v4, "removedEnd":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 6551
    .local v5, "cachedCount":I
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    if-ltz v8, :cond_2

    .line 6552
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 6553
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 6554
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 6560
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6551
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 6561
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 6563
    move-object v8, v7

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6564
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 6568
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 8

    .prologue
    .line 6495
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, p2

    .local v2, "newAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move v3, p3

    .local v3, "compatibleWithPrevious":Z
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 6496
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 6497
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6268
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 6269
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 6270
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6271
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6272
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6273
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 5

    .prologue
    .line 6116
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 6117
    .local v1, "count":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 6118
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6117
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6120
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6121
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_1

    .line 6122
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 6124
    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 6

    .prologue
    .line 6141
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "cachedViewIndex":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v3

    .line 6145
    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6146
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 6147
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 6094
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 6095
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6096
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6098
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6099
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 6103
    :cond_1
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6104
    return-void

    .line 6100
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6101
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 15

    .prologue
    .line 6155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 6156
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    .line 6158
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " isAttached:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6159
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 6162
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6163
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6165
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6168
    :cond_3
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6169
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6171
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6174
    :cond_4
    move-object v10, v1

    .line 6175
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v10

    move v2, v10

    .line 6176
    .local v2, "transientStatePreventsRecycling":Z
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_c

    move v10, v2

    if-eqz v10, :cond_c

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v11, v1

    .line 6178
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    .line 6179
    .local v3, "forceRecycle":Z
    const/4 v10, 0x0

    move v4, v10

    .line 6180
    .local v4, "cached":Z
    const/4 v10, 0x0

    move v5, v10

    .line 6185
    .local v5, "recycled":Z
    move v10, v3

    if-nez v10, :cond_5

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6186
    :cond_5
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v10, :cond_9

    move-object v10, v1

    const/16 v11, 0x20e

    .line 6187
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 6192
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v6, v10

    .line 6193
    .local v6, "cachedViewSize":I
    move v10, v6

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v10, v11, :cond_6

    move v10, v6

    if-lez v10, :cond_6

    .line 6194
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6195
    add-int/lit8 v6, v6, -0x1

    .line 6198
    :cond_6
    move v10, v6

    move v7, v10

    .line 6199
    .local v7, "targetCacheIndex":I
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v10, :cond_8

    move v10, v6

    if-lez v10, :cond_8

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v11, v1

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6201
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 6203
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .line 6204
    .local v8, "cacheIndex":I
    :goto_2
    move v10, v8

    if-ltz v10, :cond_7

    .line 6205
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v10

    .line 6206
    .local v9, "cachedPos":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move v11, v9

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 6207
    .line 6211
    .end local v9    # "cachedPos":I
    :cond_7
    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v7, v10

    .line 6213
    .end local v8    # "cacheIndex":I
    :cond_8
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v11, v7

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6214
    const/4 v10, 0x1

    move v4, v10

    .line 6216
    .end local v6    # "cachedViewSize":I
    .end local v7    # "targetCacheIndex":I
    :cond_9
    move v10, v4

    if-nez v10, :cond_a

    .line 6217
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6218
    const/4 v10, 0x1

    move v5, v10

    .line 6235
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6236
    move v10, v4

    if-nez v10, :cond_b

    move v10, v5

    if-nez v10, :cond_b

    move v10, v2

    if-eqz v10, :cond_b

    .line 6237
    move-object v10, v1

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6239
    :cond_b
    return-void

    .line 6178
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6209
    .restart local v3    # "forceRecycle":Z
    .restart local v4    # "cached":Z
    .restart local v5    # "recycled":Z
    .restart local v6    # "cachedViewSize":I
    .restart local v7    # "targetCacheIndex":I
    .restart local v8    # "cacheIndex":I
    .restart local v9    # "cachedPos":I
    :cond_d
    add-int/lit8 v8, v8, -0x1

    .line 6210
    goto :goto_2
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 6112
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6113
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 6285
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 6286
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    .line 6287
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6288
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6289
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6291
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6293
    :cond_1
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6294
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 6302
    :goto_0
    return-void

    .line 6296
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 6297
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6299
    :cond_3
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6300
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 4

    .prologue
    .line 6575
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "pool":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v2, :cond_0

    .line 6576
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6578
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6579
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6580
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    .line 6582
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4

    .prologue
    .line 6571
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "extension":Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 6572
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 4

    .prologue
    .line 5670
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "viewCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5671
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5672
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 5882
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move/from16 v2, p1

    .local v2, "position":I
    move/from16 v3, p2

    .local v3, "dryRun":Z
    move-wide/from16 v4, p3

    .local v4, "deadlineNs":J
    move v14, v2

    if-ltz v14, :cond_0

    move v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v15

    if-lt v14, v15, :cond_1

    .line 5883
    :cond_0
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid item position "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "). Item count:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v17, v0

    .line 5884
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    .line 5885
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5887
    :cond_1
    const/4 v14, 0x0

    move v6, v14

    .line 5888
    .local v6, "fromScrapOrHiddenOrCache":Z
    const/4 v14, 0x0

    move-object v7, v14

    .line 5890
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5891
    move-object v14, v1

    move v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5892
    move-object v14, v7

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_0
    move v6, v14

    .line 5895
    :cond_2
    move-object v14, v7

    if-nez v14, :cond_5

    .line 5896
    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5897
    move-object v14, v7

    if-eqz v14, :cond_5

    .line 5898
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 5900
    move v14, v3

    if-nez v14, :cond_4

    .line 5903
    move-object v14, v7

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5904
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5905
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v15, v7

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5906
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5910
    :cond_3
    :goto_1
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5912
    :cond_4
    const/4 v14, 0x0

    move-object v7, v14

    .line 5918
    :cond_5
    :goto_2
    move-object v14, v7

    if-nez v14, :cond_11

    .line 5919
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v14

    move v8, v14

    .line 5920
    .local v8, "offsetPosition":I
    move v14, v8

    if-ltz v14, :cond_6

    move v14, v8

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v15

    if-lt v14, v15, :cond_a

    .line 5921
    :cond_6
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Inconsistency detected. Invalid item position "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "(offset:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "state:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v17, v0

    .line 5923
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5892
    .end local v8    # "offsetPosition":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 5907
    :cond_8
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 5908
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto/16 :goto_1

    .line 5914
    :cond_9
    const/4 v14, 0x1

    move v6, v14

    goto/16 :goto_2

    .line 5926
    .restart local v8    # "offsetPosition":I
    :cond_a
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v15, v8

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v14

    move v9, v14

    .line 5928
    .local v9, "type":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 5929
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v15

    move/from16 v17, v9

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v18}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5931
    move-object v14, v7

    if-eqz v14, :cond_b

    .line 5933
    move-object v14, v7

    move v15, v8

    iput v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5934
    const/4 v14, 0x1

    move v6, v14

    .line 5937
    :cond_b
    move-object v14, v7

    if-nez v14, :cond_d

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    if-eqz v14, :cond_d

    .line 5940
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v9

    .line 5941
    invoke-virtual/range {v14 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v14

    move-object v10, v14

    .line 5942
    .local v10, "view":Landroid/view/View;
    move-object v14, v10

    if-eqz v14, :cond_d

    .line 5943
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5944
    move-object v14, v7

    if-nez v14, :cond_c

    .line 5945
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    .line 5947
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5948
    :cond_c
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 5949
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    .line 5951
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5955
    .end local v10    # "view":Landroid/view/View;
    :cond_d
    move-object v14, v7

    if-nez v14, :cond_e

    .line 5960
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v14

    move v15, v9

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5961
    move-object v14, v7

    if-eqz v14, :cond_e

    .line 5962
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5963
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v14, :cond_e

    .line 5964
    move-object v14, v1

    move-object v15, v7

    invoke-direct {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5968
    :cond_e
    move-object v14, v7

    if-nez v14, :cond_11

    .line 5969
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    move-wide v10, v14

    .line 5970
    .local v10, "start":J
    move-wide v14, v4

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v14, v14, v16

    if-eqz v14, :cond_f

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    .line 5971
    invoke-virtual/range {v14 .. v19}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v14

    if-nez v14, :cond_f

    .line 5973
    const/4 v14, 0x0

    move-object v1, v14

    .line 6035
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .end local v8    # "offsetPosition":I
    .end local v9    # "type":I
    .end local v10    # "start":J
    :goto_3
    return-object v1

    .line 5975
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .restart local v8    # "offsetPosition":I
    .restart local v9    # "type":I
    .restart local v10    # "start":J
    :cond_f
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object v7, v14

    .line 5976
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v14, :cond_10

    .line 5978
    move-object v14, v7

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v14

    move-object v12, v14

    .line 5979
    .local v12, "innerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v14, v12

    if-eqz v14, :cond_10

    .line 5980
    move-object v14, v7

    new-instance v15, Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5984
    .end local v12    # "innerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_10
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    move-wide v12, v14

    .line 5985
    .local v12, "end":J
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move v15, v9

    move-wide/from16 v16, v12

    move-wide/from16 v18, v10

    sub-long v16, v16, v18

    invoke-virtual/range {v14 .. v17}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    .line 5995
    .end local v8    # "offsetPosition":I
    .end local v9    # "type":I
    .end local v10    # "start":J
    .end local v12    # "end":J
    :cond_11
    move v14, v6

    if-eqz v14, :cond_12

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v14

    if-nez v14, :cond_12

    move-object v14, v7

    const/16 v15, 0x2000

    .line 5996
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 5997
    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x2000

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5998
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v14, v14, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v14, :cond_12

    .line 5999
    move-object v14, v7

    .line 6000
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v14

    move v8, v14

    .line 6001
    .local v8, "changeFlags":I
    move v14, v8

    const/16 v15, 0x1000

    or-int/lit16 v14, v14, 0x1000

    move v8, v14

    .line 6002
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, v7

    .line 6003
    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v18

    .line 6002
    invoke-virtual/range {v14 .. v18}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v14

    move-object v9, v14

    .line 6004
    .local v9, "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v15, v7

    move-object/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 6008
    .end local v8    # "changeFlags":I
    .end local v9    # "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_12
    const/4 v14, 0x0

    move v8, v14

    .line 6009
    .local v8, "bound":Z
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 6011
    move-object v14, v7

    move v15, v2

    iput v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 6022
    :cond_13
    :goto_4
    move-object v14, v7

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object v9, v14

    .line 6024
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v14, v9

    if-nez v14, :cond_16

    .line 6025
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v10, v14

    .line 6026
    .local v10, "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v14, v7

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6033
    :goto_5
    move-object v14, v10

    move-object v15, v7

    iput-object v15, v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6034
    move-object v14, v10

    move v15, v6

    if-eqz v15, :cond_18

    move v15, v8

    if-eqz v15, :cond_18

    const/4 v15, 0x1

    :goto_6
    iput-boolean v15, v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6035
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_3

    .line 6012
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_14
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v14

    if-nez v14, :cond_15

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 6018
    :cond_15
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v14

    move v9, v14

    .line 6019
    .local v9, "offsetPosition":I
    move-object v14, v1

    move-object v15, v7

    move/from16 v16, v9

    move/from16 v17, v2

    move-wide/from16 v18, v4

    invoke-direct/range {v14 .. v19}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v14

    move v8, v14

    goto :goto_4

    .line 6027
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v15, v9

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v14

    if-nez v14, :cond_17

    .line 6028
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v15, v9

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v10, v14

    .line 6029
    .restart local v10    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v14, v7

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 6031
    .end local v10    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_17
    move-object v14, v9

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v10, v14

    .restart local v10    # "rvLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    goto :goto_5

    .line 6034
    :cond_18
    const/4 v15, 0x0

    goto :goto_6
.end method

.method unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 6311
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v2, :cond_0

    .line 6312
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 6316
    :goto_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 6317
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6318
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6319
    return-void

    .line 6314
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method updateViewCacheSize()V
    .locals 6

    .prologue
    .line 5675
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    :goto_0
    move v1, v3

    .line 5676
    .local v1, "extraCache":I
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5679
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 5680
    .local v2, "i":I
    :goto_1
    move v3, v2

    if-ltz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v3, v4, :cond_1

    .line 5681
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5680
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5675
    .end local v1    # "extraCache":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 5683
    .restart local v1    # "extraCache":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 9

    .prologue
    .line 5706
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5711
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    move v1, v4

    .line 5727
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :goto_0
    return v1

    .line 5713
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    :cond_0
    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v4, :cond_1

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 5714
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5715
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5717
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5719
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    move v3, v4

    .line 5720
    .local v3, "type":I
    move v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 5721
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 5724
    .end local v3    # "type":I
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5725
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 5727
    :cond_5
    const/4 v4, 0x1

    move v1, v4

    goto/16 :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 10

    .prologue
    .line 6592
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v3, v8

    .line 6593
    .local v3, "positionEnd":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 6594
    .local v4, "cachedCount":I
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 6595
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v6, v8

    .line 6596
    .local v6, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v6

    if-nez v8, :cond_1

    .line 6597
    .line 6594
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 6600
    :cond_1
    move-object v8, v6

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v8

    .line 6601
    .local v7, "pos":I
    move v8, v7

    move v9, v1

    if-lt v8, v9, :cond_0

    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 6602
    move-object v8, v6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6603
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 6608
    .end local v6    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_2
    return-void
.end method
