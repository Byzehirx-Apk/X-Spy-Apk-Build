.class public Lgnu/xquery/util/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Reduce;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/Reduce;->sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "zero":Ljava/lang/Object;
    move-object v6, v0

    instance-of v6, v6, Lgnu/mapping/Values;

    if-eqz v6, :cond_2

    .line 23
    move-object v6, v0

    check-cast v6, Lgnu/lists/TreeList;

    move-object v2, v6

    .line 24
    .local v2, "tlist":Lgnu/lists/TreeList;
    const/4 v6, 0x0

    move v3, v6

    .line 25
    .local v3, "pos":I
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 26
    .local v4, "next":Ljava/lang/Object;
    move-object v6, v4

    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    .line 27
    move-object v6, v1

    move-object v0, v6

    .line 40
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "pos":I
    .end local v4    # "next":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v2    # "tlist":Lgnu/lists/TreeList;
    .restart local v3    # "pos":I
    .restart local v4    # "next":Ljava/lang/Object;
    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 31
    .local v5, "result":Ljava/lang/Object;
    :goto_1
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v6

    move v3, v6

    .line 32
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 33
    move-object v6, v4

    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 34
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 35
    :cond_1
    move-object v6, v4

    invoke-static {v6}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 36
    const/4 v6, 0x1

    move-object v7, v5

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 40
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "pos":I
    .end local v4    # "next":Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    :cond_2
    move-object v6, v0

    invoke-static {v6}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    move-object v0, v6

    goto :goto_0
.end method
