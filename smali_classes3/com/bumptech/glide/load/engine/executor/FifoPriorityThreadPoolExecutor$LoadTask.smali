.class Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;
.super Ljava/util/concurrent/FutureTask;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final order:I

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "result":Ljava/lang/Object;, "TT;"
    move v3, p3

    .local v3, "order":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    move-object v4, v1

    instance-of v4, v4, Lcom/bumptech/glide/load/engine/executor/Prioritized;

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_0
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/engine/executor/Prioritized;

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/executor/Prioritized;->getPriority()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    .line 138
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    .line 139
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    move-object v1, p1

    .local v1, "loadTask":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<*>;"
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 161
    .local v2, "result":I
    move v3, v2

    if-nez v3, :cond_0

    .line 162
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 164
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->compareTo(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    if-eqz v3, :cond_1

    .line 145
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    move-object v2, v3

    .line 146
    .local v2, "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 148
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    :goto_1
    return v0

    .line 146
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    .restart local v2    # "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 148
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    move v1, v2

    .line 154
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    add-int/2addr v2, v3

    move v1, v2

    .line 155
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    return v0
.end method
