.class public final Landroidx/core/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListViewCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .locals 9
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "listView":Landroid/widget/ListView;
    move v1, p1

    .local v1, "direction":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_0

    .line 69
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v6

    move v0, v6

    .line 85
    .end local v0    # "listView":Landroid/widget/ListView;
    :goto_0
    return v0

    .line 72
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    move v2, v6

    .line 73
    .local v2, "childCount":I
    move v6, v2

    if-nez v6, :cond_1

    .line 74
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 77
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    move v3, v6

    .line 78
    .local v3, "firstPosition":I
    move v6, v1

    if-lez v6, :cond_4

    .line 79
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move v4, v6

    .line 80
    .local v4, "lastBottom":I
    move v6, v3

    move v7, v2

    add-int/2addr v6, v7

    move v5, v6

    .line 81
    .local v5, "lastPosition":I
    move v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-lt v6, v7, :cond_2

    move v6, v4

    move-object v7, v0

    .line 82
    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_3

    :cond_2
    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 84
    .end local v4    # "lastBottom":I
    .end local v5    # "lastPosition":I
    :cond_4
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v4, v6

    .line 85
    .local v4, "firstTop":I
    move v6, v3

    if-gtz v6, :cond_5

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v7

    if-ge v6, v7, :cond_6

    :cond_5
    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 8
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "listView":Landroid/widget/ListView;
    move v1, p1

    .local v1, "y":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 39
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    move v2, v5

    .line 43
    .local v2, "firstPosition":I
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 48
    .local v3, "firstView":Landroid/view/View;
    move-object v5, v3

    if-nez v5, :cond_2

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move v6, v1

    sub-int/2addr v5, v6

    move v4, v5

    .line 53
    .local v4, "newTop":I
    move-object v5, v0

    move v6, v2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
