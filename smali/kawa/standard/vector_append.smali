.class public Lkawa/standard/vector_append;
.super Lgnu/mapping/ProcedureN;
.source "vector_append.java"


# static fields
.field public static final vectorAppend:Lkawa/standard/vector_append;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/vector_append;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "vector-append"

    invoke-direct {v1, v2}, Lkawa/standard/vector_append;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lkawa/standard/vector_append;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 17

    .prologue
    .line 27
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    const/4 v10, 0x0

    move v1, v10

    .line 28
    .local v1, "length":I
    move-object v10, v0

    array-length v10, v10

    move v2, v10

    .line 29
    .local v2, "args_length":I
    move v10, v2

    move v3, v10

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    if-ltz v10, :cond_2

    .line 31
    move-object v10, v0

    move v11, v3

    aget-object v10, v10, v11

    move-object v4, v10

    .line 32
    .local v4, "arg":Ljava/lang/Object;
    move-object v10, v4

    instance-of v10, v10, Lgnu/lists/FVector;

    if-eqz v10, :cond_0

    .line 33
    move v10, v1

    move-object v11, v4

    check-cast v11, Lgnu/lists/FVector;

    invoke-virtual {v11}, Lgnu/lists/FVector;->size()I

    move-result v11

    add-int/2addr v10, v11

    move v1, v10

    .line 41
    :goto_1
    goto :goto_0

    .line 36
    :cond_0
    move-object v10, v4

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v10

    move v5, v10

    .line 37
    .local v5, "n":I
    move v10, v5

    if-gez v10, :cond_1

    .line 38
    new-instance v10, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    sget-object v12, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    move v13, v3

    move-object v14, v4

    const-string/jumbo v15, "list or vector"

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v10

    .line 39
    :cond_1
    move v10, v1

    move v11, v5

    add-int/2addr v10, v11

    move v1, v10

    goto :goto_1

    .line 42
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "n":I
    :cond_2
    move v10, v1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v3, v10

    .line 43
    .local v3, "result":[Ljava/lang/Object;
    const/4 v10, 0x0

    move v4, v10

    .line 44
    .local v4, "position":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_2
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_5

    .line 46
    move-object v10, v0

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 47
    .local v6, "arg":Ljava/lang/Object;
    move-object v10, v6

    instance-of v10, v10, Lgnu/lists/FVector;

    if-eqz v10, :cond_4

    .line 49
    move-object v10, v6

    check-cast v10, Lgnu/lists/FVector;

    move-object v7, v10

    .line 50
    .local v7, "vec":Lgnu/lists/FVector;
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/FVector;->size()I

    move-result v10

    move v8, v10

    .line 51
    .local v8, "vec_length":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_3
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_3

    .line 52
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v7

    move v13, v9

    invoke-virtual {v12, v13}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 51
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 53
    .line 44
    .end local v7    # "vec":Lgnu/lists/FVector;
    .end local v8    # "vec_length":I
    .end local v9    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 54
    :cond_4
    move-object v10, v6

    instance-of v10, v10, Lgnu/lists/Pair;

    if-eqz v10, :cond_3

    .line 56
    :goto_4
    move-object v10, v6

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v10, v11, :cond_3

    .line 58
    move-object v10, v6

    check-cast v10, Lgnu/lists/Pair;

    move-object v7, v10

    .line 59
    .local v7, "pair":Lgnu/lists/Pair;
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 60
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 61
    goto :goto_4

    .line 64
    .end local v6    # "arg":Ljava/lang/Object;
    .end local v7    # "pair":Lgnu/lists/Pair;
    :cond_5
    new-instance v10, Lgnu/lists/FVector;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    invoke-direct {v11, v12}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object v0, v10

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lkawa/standard/vector_append;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/standard/vector_append;->apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/vector_append;
    return-object v0
.end method
