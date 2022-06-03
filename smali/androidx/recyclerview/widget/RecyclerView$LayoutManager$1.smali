.class Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 4

    .prologue
    .line 7305
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 7318
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 7308
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7340
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 7341
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 7342
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return v0
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7333
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 7334
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 7335
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return v0
.end method

.method public getParent()Landroid/view/View;
    .locals 2

    .prologue
    .line 7313
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return-object v0
.end method

.method public getParentEnd()I
    .locals 3

    .prologue
    .line 7328
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return v0
.end method

.method public getParentStart()I
    .locals 2

    .prologue
    .line 7323
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
    return v0
.end method
