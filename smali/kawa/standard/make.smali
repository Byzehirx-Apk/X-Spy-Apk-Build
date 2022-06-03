.class public Lkawa/standard/make;
.super Lgnu/mapping/ProcedureN;
.source "make.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/make;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 12
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/make;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v9, v1

    array-length v9, v9

    move v2, v9

    .line 13
    .local v2, "nargs":I
    move v9, v2

    if-nez v9, :cond_0

    .line 14
    new-instance v9, Lgnu/mapping/WrongArguments;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move v12, v2

    invoke-direct {v10, v11, v12}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v9

    .line 15
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v3, v9

    .line 17
    .local v3, "arg_0":Ljava/lang/Object;
    move-object v9, v3

    instance-of v9, v9, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 18
    move-object v9, v3

    check-cast v9, Ljava/lang/Class;

    move-object v4, v9

    .line 23
    .local v4, "clas":Ljava/lang/Class;
    :goto_0
    move-object v9, v4

    if-nez v9, :cond_3

    .line 24
    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    const/4 v12, 0x1

    move-object v13, v3

    const-string/jumbo v14, "class"

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 19
    .end local v4    # "clas":Ljava/lang/Class;
    :cond_1
    move-object v9, v3

    instance-of v9, v9, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_2

    .line 20
    move-object v9, v3

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    move-object v4, v9

    .restart local v4    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 22
    .end local v4    # "clas":Ljava/lang/Class;
    :cond_2
    const/4 v9, 0x0

    move-object v4, v9

    .restart local v4    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 28
    :cond_3
    move-object v9, v4

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v5, v9

    .line 33
    .line 34
    .local v5, "result":Ljava/lang/Object;
    const/4 v9, 0x1

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_4

    .line 36
    move-object v9, v1

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v9, v9, v10

    check-cast v9, Lgnu/expr/Keyword;

    move-object v7, v9

    .line 37
    .local v7, "key":Lgnu/expr/Keyword;
    move-object v9, v1

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v9, v9, v10

    move-object v8, v9

    .line 38
    .local v8, "arg":Ljava/lang/Object;
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-static {v9, v10, v11}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 39
    goto :goto_1

    .line 30
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "key":Lgnu/expr/Keyword;
    .end local v8    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 32
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v9, Lgnu/mapping/WrappedException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    invoke-direct {v10, v11}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 40
    .restart local v5    # "result":Ljava/lang/Object;
    .local v6, "i":I
    :cond_4
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Lkawa/standard/make;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/make;
    const/16 v1, -0xfff

    move v0, v1

    .end local v0    # "this":Lkawa/standard/make;
    return v0
.end method
