.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 832
    move-object v1, v0

    new-instance v2, Landroid/util/SparseIntArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 834
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 8

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move v1, p1

    .local v1, "position":I
    const/4 v6, 0x0

    move v2, v6

    .line 941
    .local v2, "lo":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .line 943
    .local v3, "hi":I
    :goto_0
    move v6, v2

    move v7, v3

    if-gt v6, v7, :cond_1

    .line 944
    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 945
    .local v4, "mid":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v5, v6

    .line 946
    .local v5, "midVal":I
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 947
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v2, v6

    .line 951
    :goto_1
    goto :goto_0

    .line 949
    :cond_0
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    goto :goto_1

    .line 952
    .end local v4    # "mid":I
    .end local v5    # "midVal":I
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 953
    .local v4, "index":I
    move v6, v4

    if-ltz v6, :cond_2

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 954
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v0, v6

    .line 956
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :goto_2
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_2
.end method

.method getCachedSpanIndex(II)I
    .locals 8

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "spanCount":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v5, :cond_0

    .line 874
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v0, v5

    .line 882
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :goto_0
    return v0

    .line 876
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move v3, v5

    .line 877
    .local v3, "existing":I
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 878
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 880
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v4, v5

    .line 881
    .local v4, "value":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public getSpanGroupIndex(II)I
    .locals 10

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move v1, p1

    .local v1, "adapterPosition":I
    move v2, p2

    .local v2, "spanCount":I
    const/4 v8, 0x0

    move v3, v8

    .line 971
    .local v3, "span":I
    const/4 v8, 0x0

    move v4, v8

    .line 972
    .local v4, "group":I
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v5, v8

    .line 973
    .local v5, "positionSpanSize":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 974
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 975
    .local v7, "size":I
    move v8, v3

    move v9, v7

    add-int/2addr v8, v9

    move v3, v8

    .line 976
    move v8, v3

    move v9, v2

    if-ne v8, v9, :cond_1

    .line 977
    const/4 v8, 0x0

    move v3, v8

    .line 978
    add-int/lit8 v4, v4, 0x1

    .line 973
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 979
    :cond_1
    move v8, v3

    move v9, v2

    if-le v8, v9, :cond_0

    .line 981
    move v8, v7

    move v3, v8

    .line 982
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 985
    .end local v7    # "size":I
    :cond_2
    move v8, v3

    move v9, v5

    add-int/2addr v8, v9

    move v9, v2

    if-le v8, v9, :cond_3

    .line 986
    add-int/lit8 v4, v4, 0x1

    .line 988
    :cond_3
    move v8, v4

    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    return v0
.end method

.method public getSpanIndex(II)I
    .locals 11

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "spanCount":I
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v3, v8

    .line 910
    .local v3, "positionSpanSize":I
    move v8, v3

    move v9, v2

    if-ne v8, v9, :cond_0

    .line 911
    const/4 v8, 0x0

    move v0, v8

    .line 936
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :goto_0
    return v0

    .line 913
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    .line 914
    .local v4, "span":I
    const/4 v8, 0x0

    move v5, v8

    .line 916
    .local v5, "startPos":I
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 917
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v8

    move v6, v8

    .line 918
    .local v6, "prevKey":I
    move v8, v6

    if-ltz v8, :cond_1

    .line 919
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 920
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 923
    .end local v6    # "prevKey":I
    :cond_1
    move v8, v5

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 924
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 925
    .local v7, "size":I
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 926
    move v8, v4

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 927
    const/4 v8, 0x0

    move v4, v8

    .line 923
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 928
    :cond_3
    move v8, v4

    move v9, v2

    if-le v8, v9, :cond_2

    .line 930
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 933
    .end local v7    # "size":I
    :cond_4
    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    move v9, v2

    if-gt v8, v9, :cond_5

    .line 934
    move v8, v4

    move v0, v8

    goto :goto_0

    .line 936
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 2

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 861
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 2

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move v1, p1

    .local v1, "cacheSpanIndices":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 853
    return-void
.end method
