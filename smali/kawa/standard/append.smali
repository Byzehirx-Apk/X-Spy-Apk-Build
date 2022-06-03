.class public Lkawa/standard/append;
.super Lgnu/mapping/ProcedureN;
.source "append.java"


# static fields
.field public static final append:Lkawa/standard/append;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/append;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/append;-><init>()V

    sput-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 13
    sget-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    const-string/jumbo v1, "append"

    invoke-virtual {v0, v1}, Lkawa/standard/append;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lkawa/standard/append;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 22
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v9, v0

    array-length v9, v9

    move v1, v9

    .line 23
    .local v1, "count":I
    move v9, v1

    if-nez v9, :cond_0

    .line 24
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v9

    .line 50
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 25
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    move-object v9, v0

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v2, v9

    .line 26
    .local v2, "result":Ljava/lang/Object;
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    .end local v2    # "result":Ljava/lang/Object;
    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v9, v3

    if-ltz v9, :cond_5

    .line 28
    move-object v9, v0

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .line 29
    .local v4, "list":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v5, v9

    .line 30
    .local v5, "copy":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v6, v9

    .line 31
    .end local v5    # "copy":Ljava/lang/Object;
    .local v6, "last":Lgnu/lists/Pair;
    :goto_2
    move-object v9, v4

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_2

    .line 33
    move-object v9, v4

    check-cast v9, Lgnu/lists/Pair;

    move-object v7, v9

    .line 34
    .local v7, "list_pair":Lgnu/lists/Pair;
    new-instance v9, Lgnu/lists/Pair;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v7

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    .line 35
    .local v8, "new_pair":Lgnu/lists/Pair;
    move-object v9, v6

    if-nez v9, :cond_1

    .line 36
    move-object v9, v8

    move-object v5, v9

    .line 39
    :goto_3
    move-object v9, v8

    move-object v6, v9

    .line 40
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 41
    goto :goto_2

    .line 38
    :cond_1
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_3

    .line 42
    .end local v7    # "list_pair":Lgnu/lists/Pair;
    .end local v8    # "new_pair":Lgnu/lists/Pair;
    :cond_2
    move-object v9, v4

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_3

    .line 43
    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    sget-object v11, Lkawa/standard/append;->append:Lkawa/standard/append;

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v0

    move v14, v3

    aget-object v13, v13, v14

    const-string/jumbo v14, "list"

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 44
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_4

    .line 46
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 47
    move-object v9, v5

    move-object v2, v9

    .line 49
    :cond_4
    goto :goto_1

    .line 50
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "last":Lgnu/lists/Pair;
    :cond_5
    move-object v9, v2

    move-object v0, v9

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lkawa/standard/append;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/append;
    return-object v0
.end method
