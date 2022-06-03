.class public abstract Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1401
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1408
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1385
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1421
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 6

    .prologue
    .line 1482
    move v0, p0

    .local v0, "flags":I
    move v1, p1

    .local v1, "layoutDirection":I
    move v3, v0

    const v4, 0xc0c0c

    and-int/2addr v3, v4

    move v2, v3

    .line 1483
    .local v2, "masked":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1484
    move v3, v0

    move v0, v3

    .line 1497
    .end local v0    # "flags":I
    :goto_0
    return v0

    .line 1486
    .restart local v0    # "flags":I
    :cond_0
    move v3, v0

    move v4, v2

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    move v0, v3

    .line 1487
    move v3, v1

    if-nez v3, :cond_1

    .line 1489
    move v3, v0

    move v4, v2

    const/4 v5, 0x2

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    move v0, v3

    .line 1490
    move v3, v0

    move v0, v3

    goto :goto_0

    .line 1493
    :cond_1
    move v3, v0

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const v5, -0xc0c0d

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v0, v3

    .line 1495
    move v3, v0

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const v5, 0xc0c0c

    and-int/2addr v4, v5

    const/4 v5, 0x2

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    move v0, v3

    .line 1497
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method public static getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1466
    sget-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 5

    .prologue
    .line 1901
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1902
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1905
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public static makeFlag(II)I
    .locals 5

    .prologue
    .line 1529
    move v0, p0

    .local v0, "actionState":I
    move v1, p1

    .local v1, "directions":I
    move v2, v1

    move v3, v0

    const/16 v4, 0x8

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    move v0, v2

    .end local v0    # "actionState":I
    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 5

    .prologue
    .line 1512
    move v0, p0

    .local v0, "dragFlags":I
    move v1, p1

    .local v1, "swipeFlags":I
    const/4 v2, 0x0

    move v3, v1

    move v4, v0

    or-int/2addr v3, v4

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    .line 1513
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x2

    move v4, v0

    .line 1514
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v3

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "dragFlags":I
    return v0
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1626
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "current":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, p3

    .local v3, "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 20
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
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 1802
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v3, p1

    .local v3, "selected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v4, p2

    .local v4, "dropTargets":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move/from16 v5, p3

    .local v5, "curX":I
    move/from16 v6, p4

    .local v6, "curY":I
    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v7, v18

    .line 1803
    .local v7, "right":I
    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v8, v18

    .line 1804
    .local v8, "bottom":I
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 1805
    .local v9, "winner":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/16 v18, -0x1

    move/from16 v10, v18

    .line 1806
    .local v10, "winnerScore":I
    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 1807
    .local v11, "dx":I
    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v12, v18

    .line 1808
    .local v12, "dy":I
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v13, v18

    .line 1809
    .local v13, "targetsSize":I
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_0
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1810
    move-object/from16 v18, v4

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v15, v18

    .line 1811
    .local v15, "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v18, v11

    if-lez v18, :cond_0

    .line 1812
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v19, v7

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1813
    .local v16, "diff":I
    move/from16 v18, v16

    if-gez v18, :cond_0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1814
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1815
    .local v17, "score":I
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1816
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1817
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1821
    .end local v16    # "diff":I
    .end local v17    # "score":I
    :cond_0
    move/from16 v18, v11

    if-gez v18, :cond_1

    .line 1822
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v19, v5

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1823
    .restart local v16    # "diff":I
    move/from16 v18, v16

    if-lez v18, :cond_1

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1824
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1825
    .restart local v17    # "score":I
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1826
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1827
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1831
    .end local v16    # "diff":I
    .end local v17    # "score":I
    :cond_1
    move/from16 v18, v12

    if-gez v18, :cond_2

    .line 1832
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v19, v6

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1833
    .restart local v16    # "diff":I
    move/from16 v18, v16

    if-lez v18, :cond_2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1834
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1835
    .restart local v17    # "score":I
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1836
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1837
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1842
    .end local v16    # "diff":I
    .end local v17    # "score":I
    :cond_2
    move/from16 v18, v12

    if-lez v18, :cond_3

    .line 1843
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1844
    .restart local v16    # "diff":I
    move/from16 v18, v16

    if-gez v18, :cond_3

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1845
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1846
    .restart local v17    # "score":I
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1847
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1848
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1809
    .end local v16    # "diff":I
    .end local v17    # "score":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v15    # "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    move-object/from16 v18, v9

    move-object/from16 v2, v18

    .end local v2    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return-object v2
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2038
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    sget-object v3, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 2039
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 7

    .prologue
    .line 1573
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move v1, p1

    .local v1, "flags":I
    move v2, p2

    .local v2, "layoutDirection":I
    move v4, v1

    const v5, 0x303030

    and-int/2addr v4, v5

    move v3, v4

    .line 1574
    .local v3, "masked":I
    move v4, v3

    if-nez v4, :cond_0

    .line 1575
    move v4, v1

    move v0, v4

    .line 1588
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :goto_0
    return v0

    .line 1577
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :cond_0
    move v4, v1

    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v1, v4

    .line 1578
    move v4, v2

    if-nez v4, :cond_1

    .line 1580
    move v4, v1

    move v5, v3

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    move v1, v4

    .line 1581
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 1584
    :cond_1
    move v4, v1

    move v5, v3

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    const v6, -0x303031

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    move v1, v4

    .line 1586
    move v4, v1

    move v5, v3

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    const v6, 0x303030

    and-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    move v1, v4

    .line 1588
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method final getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 7

    .prologue
    .line 1593
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1594
    .local v3, "flags":I
    move-object v4, v0

    move v5, v3

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2132
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "animationType":I
    move v3, p3

    .local v3, "animateDx":F
    move v4, p4

    .local v4, "animateDy":F
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    move-object v5, v6

    .line 2133
    .local v5, "itemAnimator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 2134
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    const-wide/16 v6, 0xc8

    :goto_0
    move-wide v0, v6

    .line 2138
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :goto_1
    return-wide v0

    .line 2134
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :cond_0
    const-wide/16 v6, 0xfa

    goto :goto_0

    .line 2137
    :cond_1
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v6

    .line 2138
    :goto_2
    move-wide v0, v6

    goto :goto_1

    .line 2137
    :cond_2
    move-object v6, v5

    .line 2138
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v6

    goto :goto_2
.end method

.method public getBoundingBoxMargin()I
    .locals 2

    .prologue
    .line 1690
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1720
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/high16 v2, 0x3f000000    # 0.5f

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public abstract getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 3

    .prologue
    .line 1746
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move v1, p1

    .local v1, "defaultValue":F
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1706
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/high16 v2, 0x3f000000    # 0.5f

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 3

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move v1, p1

    .local v1, "defaultValue":F
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1599
    .local v3, "flags":I
    move v4, v3

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1605
    .local v3, "flags":I
    move v4, v3

    const v5, 0xff00

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 21
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2166
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v3, p1

    .local v3, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move/from16 v4, p2

    .local v4, "viewSize":I
    move/from16 v5, p3

    .local v5, "viewSizeOutOfBounds":I
    move/from16 v6, p4

    .local v6, "totalSize":I
    move-wide/from16 v7, p5

    .local v7, "msSinceStartScroll":J
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v16

    move/from16 v9, v16

    .line 2167
    .local v9, "maxScroll":I
    move/from16 v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v10, v16

    .line 2168
    .local v10, "absOutOfBounds":I
    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 2170
    .local v11, "direction":I
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v18, v4

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v12, v16

    .line 2171
    .local v12, "outOfBoundsRatio":F
    move/from16 v16, v11

    move/from16 v17, v9

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v18, v12

    .line 2172
    invoke-interface/range {v17 .. v18}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v13, v16

    .line 2174
    .local v13, "cappedScroll":I
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x7d0

    cmp-long v16, v16, v18

    if-lez v16, :cond_0

    .line 2175
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v14, v16

    .line 2179
    .local v14, "timeRatio":F
    :goto_0
    move/from16 v16, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v18, v14

    .line 2180
    invoke-interface/range {v17 .. v18}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 2181
    .local v15, "value":I
    move/from16 v16, v15

    if-nez v16, :cond_2

    .line 2182
    move/from16 v16, v5

    if-lez v16, :cond_1

    const/16 v16, 0x1

    :goto_1
    move/from16 v2, v16

    .line 2184
    .end local v2    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :goto_2
    return v2

    .line 2177
    .end local v14    # "timeRatio":F
    .end local v15    # "value":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    :cond_0
    move-wide/from16 v16, v7

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x44fa0000    # 2000.0f

    div-float v16, v16, v17

    move/from16 v14, v16

    .restart local v14    # "timeRatio":F
    goto :goto_0

    .line 2182
    .restart local v15    # "value":I
    :cond_1
    const/16 v16, -0x1

    goto :goto_1

    .line 2184
    :cond_2
    move/from16 v16, v15

    move/from16 v2, v16

    goto :goto_2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 2

    .prologue
    .line 1678
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2071
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p3

    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v4, p4

    .local v4, "dX":F
    move/from16 v5, p5

    .local v5, "dY":F
    move/from16 v6, p6

    .local v6, "actionState":I
    move/from16 v7, p7

    .local v7, "isCurrentlyActive":Z
    sget-object v8, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-interface/range {v8 .. v15}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2073
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2105
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p3

    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v4, p4

    .local v4, "dX":F
    move/from16 v5, p5

    .local v5, "dY":F
    move/from16 v6, p6

    .local v6, "actionState":I
    move/from16 v7, p7

    .local v7, "isCurrentlyActive":Z
    sget-object v8, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-interface/range {v8 .. v15}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2107
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1978
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v2, p1

    .local v2, "c":Landroid/graphics/Canvas;
    move-object/from16 v3, p2

    .local v3, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v4, p3

    .local v4, "selected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v5, p4

    .local v5, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;>;"
    move/from16 v6, p5

    .local v6, "actionState":I
    move/from16 v7, p6

    .local v7, "dX":F
    move/from16 v8, p7

    .local v8, "dY":F
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v9, v13

    .line 1979
    .local v9, "recoverAnimSize":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_0

    .line 1980
    move-object v13, v5

    move v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v11, v13

    .line 1981
    .local v11, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1982
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v12, v13

    .line 1983
    .local v12, "count":I
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1985
    move-object v13, v2

    move v14, v12

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1979
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1987
    .end local v11    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v12    # "count":I
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_1

    .line 1988
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v10, v13

    .line 1989
    .local v10, "count":I
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v6

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1990
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1992
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1997
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v2, p1

    .local v2, "c":Landroid/graphics/Canvas;
    move-object/from16 v3, p2

    .local v3, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v4, p3

    .local v4, "selected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v5, p4

    .local v5, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;>;"
    move/from16 v6, p5

    .local v6, "actionState":I
    move/from16 v7, p6

    .local v7, "dX":F
    move/from16 v8, p7

    .local v8, "dY":F
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v9, v13

    .line 1998
    .local v9, "recoverAnimSize":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_0

    .line 1999
    move-object v13, v5

    move v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v11, v13

    .line 2000
    .local v11, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v12, v13

    .line 2001
    .local v12, "count":I
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2003
    move-object v13, v2

    move v14, v12

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1998
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2005
    .end local v11    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v12    # "count":I
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_1

    .line 2006
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v10, v13

    .line 2007
    .local v10, "count":I
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v6

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2008
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2010
    .end local v10    # "count":I
    :cond_1
    const/4 v13, 0x0

    move v10, v13

    .line 2011
    .local v10, "hasRunningAnimation":Z
    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    .local v11, "i":I
    :goto_1
    move v13, v11

    if-ltz v13, :cond_4

    .line 2012
    move-object v13, v5

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v12, v13

    .line 2013
    .local v12, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v13, v12

    iget-boolean v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v13, :cond_3

    move-object v13, v12

    iget-boolean v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v13, :cond_3

    .line 2014
    move-object v13, v5

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .line 2011
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 2015
    :cond_3
    move-object v13, v12

    iget-boolean v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v13, :cond_2

    .line 2016
    const/4 v13, 0x1

    move v10, v13

    goto :goto_2

    .line 2019
    .end local v12    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_4
    move v13, v10

    if-eqz v13, :cond_5

    .line 2020
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 2022
    :cond_5
    return-void
.end method

.method public abstract onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 16
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1944
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object/from16 v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v3, p3

    .local v3, "fromPos":I
    move-object/from16 v4, p4

    .local v4, "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v5, p5

    .local v5, "toPos":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v11

    move-object v8, v11

    .line 1945
    .local v8, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v11, v8

    instance-of v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    if-eqz v11, :cond_0

    .line 1946
    move-object v11, v8

    check-cast v11, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    move-object v12, v2

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v4

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v14, v6

    move v15, v7

    invoke-interface {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1948
    .line 1973
    :goto_0
    return-void

    .line 1952
    :cond_0
    move-object v11, v8

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1953
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1954
    .local v9, "minLeft":I
    move v11, v9

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    if-gt v11, v12, :cond_1

    .line 1955
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1957
    :cond_1
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1958
    .local v10, "maxRight":I
    move v11, v10

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_2

    .line 1959
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1963
    .end local v9    # "minLeft":I
    .end local v10    # "maxRight":I
    :cond_2
    move-object v11, v8

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1964
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1965
    .local v9, "minTop":I
    move v11, v9

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    if-gt v11, v12, :cond_3

    .line 1966
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1968
    :cond_3
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1969
    .local v10, "maxBottom":I
    move v11, v10

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_4

    .line 1970
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1973
    .end local v9    # "minTop":I
    .end local v10    # "maxBottom":I
    :cond_4
    goto :goto_0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1895
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "actionState":I
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1896
    sget-object v3, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1898
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
