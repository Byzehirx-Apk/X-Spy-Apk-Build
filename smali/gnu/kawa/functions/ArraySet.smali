.class public Lgnu/kawa/functions/ArraySet;
.super Lgnu/mapping/ProcedureN;
.source "ArraySet.java"


# static fields
.field public static final arraySet:Lgnu/kawa/functions/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ArraySet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/ArraySet;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArraySet;->arraySet:Lgnu/kawa/functions/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArraySet;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "array":Lgnu/lists/Array;
    move-object v1, p1

    .local v1, "index":Lgnu/lists/Sequence;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v6, v1

    invoke-interface {v6}, Lgnu/lists/Sequence;->size()I

    move-result v6

    move v3, v6

    .line 15
    .local v3, "dims":I
    move v6, v3

    new-array v6, v6, [I

    move-object v4, v6

    .line 16
    .local v4, "indexes":[I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 18
    move-object v6, v4

    move v7, v5

    move-object v8, v1

    move v9, v5

    invoke-interface {v8, v9}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 16
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_0
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArraySet;
    move-object v1, p1

    .local v1, "arg0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/Sequence;

    if-eqz v4, :cond_0

    .line 28
    move-object v4, v1

    check-cast v4, Lgnu/lists/Array;

    move-object v5, v2

    check-cast v5, Lgnu/lists/Sequence;

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 29
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .line 32
    .end local v0    # "this":Lgnu/kawa/functions/ArraySet;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/ArraySet;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/mapping/ProcedureN;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArraySet;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lgnu/lists/Array;

    move-object v2, v6

    .line 40
    .local v2, "array":Lgnu/lists/Array;
    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 42
    move-object v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v3, v6

    .line 43
    .local v3, "arg1":Ljava/lang/Object;
    move-object v6, v3

    instance-of v6, v6, Lgnu/lists/Sequence;

    if-eqz v6, :cond_0

    .line 45
    move-object v6, v2

    move-object v7, v3

    check-cast v7, Lgnu/lists/Sequence;

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 46
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v6

    .line 56
    .end local v0    # "this":Lgnu/kawa/functions/ArraySet;
    .end local v3    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "this":Lgnu/kawa/functions/ArraySet;
    :cond_0
    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    .line 50
    .local v3, "dim":I
    move v6, v3

    new-array v6, v6, [I

    move-object v4, v6

    .line 51
    .local v4, "indexes":[I
    move v6, v3

    move v5, v6

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_1

    .line 53
    move-object v6, v4

    move v7, v5

    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aput v8, v6, v7

    goto :goto_1

    .line 55
    :cond_1
    move-object v6, v2

    move-object v7, v4

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-interface {v6, v7, v8}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v6

    goto :goto_0
.end method
