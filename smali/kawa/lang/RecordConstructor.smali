.class public Lkawa/lang/RecordConstructor;
.super Lgnu/mapping/ProcedureN;
.source "RecordConstructor.java"


# instance fields
.field fields:[Lgnu/bytecode/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 29
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object/from16 v2, p2

    .local v2, "fieldsList":Ljava/lang/Object;
    move-object v9, v0

    invoke-direct {v9}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 60
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 61
    move-object v9, v2

    if-nez v9, :cond_1

    .line 62
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 85
    :cond_0
    return-void

    .line 65
    :cond_1
    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v9

    move v3, v9

    .line 66
    .local v3, "nfields":I
    move-object v9, v0

    move v10, v3

    new-array v10, v10, [Lgnu/bytecode/Field;

    iput-object v10, v9, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 67
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v9

    move-object v4, v9

    .line 68
    .local v4, "list":Lgnu/bytecode/Field;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 70
    move-object v9, v2

    check-cast v9, Lgnu/lists/Pair;

    move-object v6, v9

    .line 71
    .local v6, "pair":Lgnu/lists/Pair;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 72
    .local v7, "fname":Ljava/lang/String;
    move-object v9, v4

    move-object v8, v9

    .line 74
    .local v8, "fld":Lgnu/bytecode/Field;
    :goto_1
    move-object v9, v8

    if-nez v9, :cond_2

    .line 75
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no such field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 76
    :cond_2
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    if-ne v9, v10, :cond_3

    .line 78
    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    move v10, v5

    move-object v11, v8

    aput-object v11, v9, v10

    .line 79
    .line 82
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_3
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v9

    move-object v8, v9

    goto :goto_1
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "fields":[Lgnu/bytecode/Field;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 13
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 14
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    invoke-direct {v2, v3}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "fieldsList":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lgnu/bytecode/Field;)V
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "fields":[Lgnu/bytecode/Field;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V

    .line 20
    return-void
.end method

.method private init(Lgnu/bytecode/ClassType;)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 35
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v2, v6

    .line 36
    .local v2, "list":Lgnu/bytecode/Field;
    const/4 v6, 0x0

    move v3, v6

    .line 37
    .local v3, "count":I
    move-object v6, v2

    move-object v4, v6

    .local v4, "fld":Lgnu/bytecode/Field;
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 39
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v6

    const/16 v7, 0x9

    and-int/lit8 v6, v6, 0x9

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 37
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 43
    :cond_1
    move-object v6, v0

    move v7, v3

    new-array v7, v7, [Lgnu/bytecode/Field;

    iput-object v7, v6, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 44
    const/4 v6, 0x0

    move v4, v6

    .line 45
    .local v4, "i":I
    move-object v6, v2

    move-object v5, v6

    .local v5, "fld":Lgnu/bytecode/Field;
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 47
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v6

    const/16 v7, 0x9

    and-int/lit8 v6, v6, 0x9

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 49
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v5

    aput-object v8, v6, v7

    .line 45
    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 51
    :cond_3
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move-object v2, v6

    .line 112
    .line 113
    .local v2, "obj":Ljava/lang/Object;
    move-object v6, v1

    array-length v6, v6

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v7, v7

    if-eq v6, v7, :cond_0

    .line 114
    new-instance v6, Lgnu/mapping/WrongArguments;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    array-length v9, v9

    invoke-direct {v7, v8, v9}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v6

    .line 105
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 107
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v6, Lkawa/lang/GenericError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 109
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 111
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Lkawa/lang/GenericError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 120
    .local v4, "fld":Lgnu/bytecode/Field;
    move-object v6, v4

    :try_start_1
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v7, v2

    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 125
    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 124
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Lgnu/mapping/WrappedException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal access for field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 127
    .end local v4    # "fld":Lgnu/bytecode/Field;
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/RecordConstructor;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/RecordConstructor;
    return-object v0
.end method

.method public numArgs()I
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lkawa/lang/RecordConstructor;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v2, v2

    move v1, v2

    .line 90
    .local v1, "nargs":I
    move v2, v1

    const/16 v3, 0xc

    shl-int/lit8 v2, v2, 0xc

    move v3, v1

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lkawa/lang/RecordConstructor;
    return v0
.end method
