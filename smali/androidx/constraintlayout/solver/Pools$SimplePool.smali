.class Landroidx/constraintlayout/solver/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/solver/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/solver/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    move v1, p1

    .local v1, "maxPoolSize":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 97
    move v2, v1

    if-gtz v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "The max pool size must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    if-ge v3, v4, :cond_1

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 153
    const/4 v3, 0x1

    move v0, v3

    .line 156
    .end local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :goto_1
    return v0

    .line 151
    .restart local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
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
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    if-lez v3, :cond_0

    .line 107
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 108
    .local v1, "lastPooledIndex":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 109
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 110
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 111
    move-object v3, v2

    move-object v0, v3

    .line 113
    .end local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :goto_0
    return-object v0

    .end local v1    # "lastPooledIndex":I
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 125
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 126
    const/4 v2, 0x1

    move v0, v2

    .line 128
    .end local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    move-object v1, p1

    .local v1, "variables":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "count":I
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-le v5, v6, :cond_0

    .line 134
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 136
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 137
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 143
    .local v4, "instance":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 144
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    move-object v7, v4

    aput-object v7, v5, v6

    .line 145
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 136
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "instance":Ljava/lang/Object;, "TT;"
    :cond_2
    return-void
.end method
