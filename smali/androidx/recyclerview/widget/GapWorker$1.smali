.class final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$1;
    move-object v1, p1

    .local v1, "lhs":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v2, p2

    .local v2, "rhs":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_3

    .line 193
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 209
    .end local v0    # "this":Landroidx/recyclerview/widget/GapWorker$1;
    :goto_3
    return v0

    .line 192
    .restart local v0    # "this":Landroidx/recyclerview/widget/GapWorker$1;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 193
    :cond_2
    const/4 v5, -0x1

    goto :goto_2

    .line 197
    :cond_3
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq v5, v6, :cond_5

    .line 198
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    :goto_4
    move v0, v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    goto :goto_4

    .line 202
    :cond_5
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 203
    .local v3, "deltaViewVelocity":I
    move v5, v3

    if-eqz v5, :cond_6

    move v5, v3

    move v0, v5

    goto :goto_3

    .line 206
    :cond_6
    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 207
    .local v4, "deltaDistanceToItem":I
    move v5, v4

    if-eqz v5, :cond_7

    move v5, v4

    move v0, v5

    goto :goto_3

    .line 209
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/GapWorker$1;
    return v0
.end method
