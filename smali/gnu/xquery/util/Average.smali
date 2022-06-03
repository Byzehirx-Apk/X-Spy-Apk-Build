.class public Lgnu/xquery/util/Average;
.super Lgnu/mapping/Procedure1;
.source "Average.java"


# static fields
.field public static final avg:Lgnu/xquery/util/Average;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lgnu/xquery/util/Average;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "avg"

    invoke-direct {v1, v2}, Lgnu/xquery/util/Average;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/Average;->avg:Lgnu/xquery/util/Average;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Average;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Average;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v2, v7

    .line 22
    .local v2, "sum":Lgnu/mapping/Values;
    const/4 v7, 0x0

    move v3, v7

    .line 23
    .local v3, "count":I
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 25
    move-object v7, v1

    check-cast v7, Lgnu/lists/TreeList;

    move-object v4, v7

    .line 26
    .local v4, "tlist":Lgnu/lists/TreeList;
    const/4 v7, 0x0

    move v5, v7

    .line 29
    .end local v2    # "sum":Lgnu/mapping/Values;
    .local v5, "index":I
    :goto_0
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 30
    .local v6, "next":Ljava/lang/Object;
    move-object v7, v6

    sget-object v8, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    .line 31
    .line 36
    .line 42
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "next":Ljava/lang/Object;
    :goto_1
    move-object v7, v2

    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v7, v8, :cond_3

    .line 43
    move-object v7, v2

    move-object v0, v7

    .line 44
    .end local v0    # "this":Lgnu/xquery/util/Average;
    :goto_2
    return-object v0

    .line 32
    .restart local v0    # "this":Lgnu/xquery/util/Average;
    .restart local v4    # "tlist":Lgnu/lists/TreeList;
    .restart local v5    # "index":I
    .restart local v6    # "next":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    move-object v7, v2

    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v7, v8, :cond_1

    move-object v7, v6

    :goto_3
    move-object v2, v7

    .line 34
    .local v2, "sum":Ljava/lang/Object;
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v7

    move v5, v7

    .line 35
    goto :goto_0

    .line 33
    .end local v2    # "sum":Ljava/lang/Object;
    :cond_1
    sget-object v7, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 39
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "next":Ljava/lang/Object;
    .local v2, "sum":Lgnu/mapping/Values;
    :cond_2
    const/4 v7, 0x1

    move v3, v7

    .line 40
    move-object v7, v1

    move-object v2, v7

    .local v2, "sum":Ljava/lang/Object;
    goto :goto_1

    .line 44
    .end local v2    # "sum":Ljava/lang/Object;
    :cond_3
    sget-object v7, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    move-object v8, v2

    move v9, v3

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    .restart local v2    # "sum":Ljava/lang/Object;
    move-object v0, v7

    goto :goto_2
.end method
