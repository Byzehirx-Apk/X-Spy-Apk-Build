.class public Lgnu/kawa/functions/ArrayRef;
.super Lgnu/mapping/ProcedureN;
.source "ArrayRef.java"


# static fields
.field public static final arrayRef:Lgnu/kawa/functions/ArrayRef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ArrayRef;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/ArrayRef;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArrayRef;->arrayRef:Lgnu/kawa/functions/ArrayRef;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArrayRef;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "array":Lgnu/lists/Array;
    move-object v1, p1

    .local v1, "index":Lgnu/lists/Sequence;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/lists/Sequence;->size()I

    move-result v5

    move v2, v5

    .line 15
    .local v2, "dims":I
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 16
    .local v3, "indexes":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 18
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 16
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-interface {v5, v6}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "array":Lgnu/lists/Array;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArrayRef;
    move-object v1, p1

    .local v1, "arg0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/lists/Sequence;

    if-eqz v3, :cond_0

    .line 27
    move-object v3, v1

    check-cast v3, Lgnu/lists/Array;

    move-object v4, v2

    check-cast v4, Lgnu/lists/Sequence;

    invoke-static {v3, v4}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 28
    .end local v0    # "this":Lgnu/kawa/functions/ArrayRef;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/ArrayRef;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArrayRef;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lgnu/lists/Array;

    move-object v2, v5

    .line 36
    .local v2, "array":Lgnu/lists/Array;
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 38
    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 39
    .local v3, "arg1":Ljava/lang/Object;
    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Sequence;

    if-eqz v5, :cond_0

    .line 40
    move-object v5, v2

    move-object v6, v3

    check-cast v6, Lgnu/lists/Sequence;

    invoke-static {v5, v6}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 47
    .end local v0    # "this":Lgnu/kawa/functions/ArrayRef;
    .end local v3    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "this":Lgnu/kawa/functions/ArrayRef;
    :cond_0
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [I

    move-object v3, v5

    .line 43
    .local v3, "indexes":[I
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_1

    .line 45
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 47
    :cond_1
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v5, v6}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
