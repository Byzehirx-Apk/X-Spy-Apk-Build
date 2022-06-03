.class public abstract Landroidx/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 44
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v1, p1

    .local v1, "x0":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, p2

    .local v2, "x1":Landroidx/recyclerview/widget/OrientationHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 5

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    new-instance v1, Landroidx/recyclerview/widget/OrientationHelper$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    move-object v0, v1

    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method

.method public static createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "invalid orientation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :pswitch_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    .line 245
    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :pswitch_1
    move-object v2, v0

    invoke-static {v2}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 5

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    new-instance v1, Landroidx/recyclerview/widget/OrientationHelper$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    move-object v0, v1

    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper;
    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper;
    const/high16 v1, -0x80000000

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 65
    return-void
.end method
