.class public Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 11360
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11348
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11349
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11353
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11361
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 11356
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11348
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11349
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11353
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11357
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 11368
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11348
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11349
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11353
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11369
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 6

    .prologue
    .line 11364
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11348
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11349
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11353
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11365
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 6

    .prologue
    .line 11372
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11348
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11349
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11353
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11373
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 2

    .prologue
    .line 11444
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 2

    .prologue
    .line 11432
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public getViewPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11422
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public isItemChanged()Z
    .locals 2

    .prologue
    .line 11414
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public isItemRemoved()Z
    .locals 2

    .prologue
    .line 11403
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public isViewInvalid()Z
    .locals 2

    .prologue
    .line 11392
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 2

    .prologue
    .line 11382
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    return v0
.end method
