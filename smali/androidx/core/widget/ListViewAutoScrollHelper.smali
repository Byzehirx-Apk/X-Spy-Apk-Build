.class public Landroidx/core/widget/ListViewAutoScrollHelper;
.super Landroidx/core/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 4
    .param p1    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    move-object v1, p1

    .local v1, "target":Landroid/widget/ListView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/core/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 35
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 36
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    move v1, p1

    .local v1, "direction":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 11

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    move v1, p1

    .local v1, "direction":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    move-object v2, v8

    .line 52
    .local v2, "target":Landroid/widget/ListView;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    move v3, v8

    .line 53
    .local v3, "itemCount":I
    move v8, v3

    if-nez v8, :cond_0

    .line 54
    const/4 v8, 0x0

    move v0, v8

    .line 83
    .end local v0    # "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    :goto_0
    return v0

    .line 57
    .restart local v0    # "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    move v4, v8

    .line 58
    .local v4, "childCount":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    move v5, v8

    .line 59
    .local v5, "firstPosition":I
    move v8, v5

    move v9, v4

    add-int/2addr v8, v9

    move v6, v8

    .line 61
    .local v6, "lastPosition":I
    move v8, v1

    if-lez v8, :cond_2

    .line 63
    move v8, v6

    move v9, v3

    if-lt v8, v9, :cond_1

    .line 64
    move-object v8, v2

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 65
    .local v7, "lastView":Landroid/view/View;
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 66
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 68
    .line 83
    .end local v7    # "lastView":Landroid/view/View;
    :cond_1
    :goto_1
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 69
    :cond_2
    move v8, v1

    if-gez v8, :cond_4

    .line 71
    move v8, v5

    if-gtz v8, :cond_1

    .line 72
    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 73
    .local v7, "firstView":Landroid/view/View;
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    if-ltz v8, :cond_3

    .line 74
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 76
    :cond_3
    goto :goto_1

    .line 80
    .end local v7    # "firstView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public scrollTargetBy(II)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListViewAutoScrollHelper;
    move v1, p1

    .local v1, "deltaX":I
    move v2, p2

    .local v2, "deltaY":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    .line 41
    return-void
.end method
