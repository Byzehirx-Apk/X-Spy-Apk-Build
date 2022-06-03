.class Landroidx/recyclerview/widget/SnapHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SnapHelper;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/SnapHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/SnapHelper$1;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$1;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "newState":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 49
    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    if-eqz v3, :cond_0

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 51
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SnapHelper$1;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 53
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$1;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move v4, v2

    if-nez v4, :cond_0

    move v4, v3

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 60
    :cond_1
    return-void
.end method
