.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 2456
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2457
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 2452
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2453
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 2464
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2465
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 2460
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2461
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 4

    .prologue
    .line 2468
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 2469
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 2

    .prologue
    .line 2500
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-nez v1, :cond_0

    .line 2501
    const/4 v1, -0x1

    move v0, v1

    .line 2503
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move v0, v1

    goto :goto_0
.end method

.method public isFullSpan()Z
    .locals 2

    .prologue
    .line 2490
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    return v0
.end method

.method public setFullSpan(Z)V
    .locals 4

    .prologue
    .line 2480
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move v1, p1

    .local v1, "fullSpan":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2481
    return-void
.end method
