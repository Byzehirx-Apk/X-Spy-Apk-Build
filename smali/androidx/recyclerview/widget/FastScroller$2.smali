.class Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/FastScroller;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$2;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    move-object v6, v1

    .line 134
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    .line 133
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/FastScroller;->updateScrollPosition(II)V

    .line 135
    return-void
.end method
