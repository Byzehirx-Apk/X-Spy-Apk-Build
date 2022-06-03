.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2840
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3074
    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .locals 9

    .prologue
    .line 2983
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v7, :cond_0

    .line 2984
    const/4 v7, -0x1

    move v0, v7

    .line 3005
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :goto_0
    return v0

    .line 2986
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    move-object v2, v7

    .line 2988
    .local v2, "item":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 2989
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 2991
    :cond_1
    const/4 v7, -0x1

    move v3, v7

    .line 2992
    .local v3, "nextFsiIndex":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 2993
    .local v4, "count":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 2994
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v6, v7

    .line 2995
    .local v6, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v7, v6

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v1

    if-lt v7, v8, :cond_3

    .line 2996
    move v7, v5

    move v3, v7

    .line 3000
    .end local v6    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 3001
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v7

    .line 3002
    .local v5, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 3003
    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v0, v7

    goto :goto_0

    .line 2993
    .local v5, "i":I
    .restart local v6    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3005
    .end local v6    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_4
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private offsetFullSpansForAddition(II)V
    .locals 9

    .prologue
    .line 2966
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2967
    .line 2976
    :goto_0
    return-void

    .line 2969
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 2970
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 2971
    .local v4, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 2972
    .line 2969
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2974
    :cond_1
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2976
    .end local v4    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    goto :goto_0
.end method

.method private offsetFullSpansForRemoval(II)V
    .locals 10

    .prologue
    .line 2936
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v6, :cond_0

    .line 2937
    .line 2951
    :goto_0
    return-void

    .line 2939
    :cond_0
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v3, v6

    .line 2940
    .local v3, "end":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    if-ltz v6, :cond_3

    .line 2941
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v6

    .line 2942
    .local v5, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 2943
    .line 2940
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2945
    :cond_1
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 2946
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 2948
    :cond_2
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v2

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2951
    .end local v5    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method public addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 9

    .prologue
    .line 3009
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move-object v1, p1

    .local v1, "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 3010
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 3012
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 3013
    .local v2, "size":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 3014
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 3015
    .local v4, "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v5, v6, :cond_1

    .line 3019
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 3022
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v5, v6, :cond_2

    .line 3023
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3024
    .line 3029
    .end local v4    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :goto_1
    return-void

    .line 3013
    .restart local v4    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3028
    .end local v4    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3029
    goto :goto_1
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2917
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_0

    .line 2918
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2920
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2921
    return-void
.end method

.method ensureSize(I)V
    .locals 8

    .prologue
    .line 2905
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_1

    .line 2906
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2907
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2914
    :cond_0
    :goto_0
    return-void

    .line 2908
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2909
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v2, v3

    .line 2910
    .local v2, "old":[I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2911
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v2

    array-length v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method forceInvalidateAfter(I)I
    .locals 6

    .prologue
    .line 2851
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2852
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2853
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 2854
    .local v3, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-lt v4, v5, :cond_0

    .line 2855
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 2852
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2859
    .end local v2    # "i":I
    .end local v3    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    return v0
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 3053
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "minPos":I
    move v2, p2

    .local v2, "maxPos":I
    move v3, p3

    .local v3, "gapDir":I
    move v4, p4

    .local v4, "hasUnwantedGapAfter":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v8, :cond_0

    .line 3054
    const/4 v8, 0x0

    move-object v0, v8

    .line 3068
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :goto_0
    return-object v0

    .line 3056
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 3057
    .local v5, "limit":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 3058
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v7, v8

    .line 3059
    .local v7, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v2

    if-lt v8, v9, :cond_1

    .line 3060
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 3062
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_3

    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    move v9, v3

    if-eq v8, v9, :cond_2

    move v8, v4

    if-eqz v8, :cond_3

    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-eqz v8, :cond_3

    .line 3065
    :cond_2
    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 3057
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3068
    .end local v7    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 6

    .prologue
    .line 3032
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v4, :cond_0

    .line 3033
    const/4 v4, 0x0

    move-object v0, v4

    .line 3041
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :goto_0
    return-object v0

    .line 3035
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 3036
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 3037
    .local v3, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 3038
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 3035
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3041
    .end local v3    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method getSpan(I)I
    .locals 4

    .prologue
    .line 2884
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2885
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 2887
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method invalidateAfter(I)I
    .locals 7

    .prologue
    .line 2866
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_0

    .line 2867
    const/4 v3, -0x1

    move v0, v3

    .line 2879
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :goto_0
    return v0

    .line 2869
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2870
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 2872
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v3

    move v2, v3

    .line 2873
    .local v2, "endPosition":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2874
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2875
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v0, v3

    goto :goto_0

    .line 2878
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2879
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method offsetForAddition(II)V
    .locals 9

    .prologue
    .line 2954
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2955
    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2957
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2958
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2960
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2962
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    .line 2963
    goto :goto_0
.end method

.method offsetForRemoval(II)V
    .locals 9

    .prologue
    .line 2924
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2925
    .line 2933
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2928
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2930
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2932
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    .line 2933
    goto :goto_0
.end method

.method setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V
    .locals 6

    .prologue
    .line 2892
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "span":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2893
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v5, v3, v4

    .line 2894
    return-void
.end method

.method sizeForPosition(I)I
    .locals 5

    .prologue
    .line 2897
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v2, v3

    .line 2898
    .local v2, "len":I
    :goto_0
    move v3, v2

    move v4, v1

    if-gt v3, v4, :cond_0

    .line 2899
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 2901
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
    return v0
.end method
