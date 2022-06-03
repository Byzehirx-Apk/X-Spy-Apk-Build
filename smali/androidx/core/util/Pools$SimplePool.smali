.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    move v1, p1

    .local v1, "maxPoolSize":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 95
    move v2, v1

    if-gtz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "The max pool size must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-ge v3, v4, :cond_1

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 130
    const/4 v3, 0x1

    move v0, v3

    .line 133
    .end local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :goto_1
    return v0

    .line 128
    .restart local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    move-object v3, v0

    iget v3, v3, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-lez v3, :cond_0

    .line 105
    move-object v3, v0

    iget v3, v3, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 106
    .local v1, "lastPooledIndex":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 107
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 108
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    .line 109
    move-object v3, v2

    move-object v0, v3

    .line 111
    .end local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :goto_0
    return-object v0

    .end local v1    # "lastPooledIndex":I
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/core/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Already in the pool!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 121
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    .line 122
    const/4 v2, 0x1

    move v0, v2

    .line 124
    .end local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/util/Pools$SimplePool;, "Landroidx/core/util/Pools$SimplePool<TT;>;"
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
