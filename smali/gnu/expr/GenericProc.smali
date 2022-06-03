.class public Lgnu/expr/GenericProc;
.super Lgnu/mapping/MethodProc;
.source "GenericProc.java"


# instance fields
.field count:I

.field maxArgs:I

.field protected methods:[Lgnu/mapping/MethodProc;

.field minArgs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static make([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 5

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v2, Lgnu/expr/GenericProc;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/expr/GenericProc;-><init>()V

    move-object v1, v2

    .line 301
    .local v1, "result":Lgnu/expr/GenericProc;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 302
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs makeWithoutSorting([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 10

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v5, Lgnu/expr/GenericProc;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lgnu/expr/GenericProc;-><init>()V

    move-object v1, v5

    .line 309
    .local v1, "result":Lgnu/expr/GenericProc;
    move-object v5, v0

    array-length v5, v5

    move v2, v5

    .line 310
    .local v2, "alen":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 312
    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 313
    .local v4, "arg":Ljava/lang/Object;
    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/Keyword;

    if-eqz v5, :cond_0

    .line 314
    move-object v5, v1

    move-object v6, v4

    check-cast v6, Lgnu/expr/Keyword;

    move-object v7, v0

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    .line 310
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_0
    move-object v5, v1

    move-object v6, v4

    check-cast v6, Lgnu/mapping/MethodProc;

    invoke-virtual {v5, v6}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 319
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lgnu/mapping/MethodProc;)V
    .locals 12

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "method":Lgnu/mapping/MethodProc;
    move-object v11, p0

    monitor-enter v11

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lgnu/expr/GenericProc;->count:I

    move v2, v5

    .line 76
    .local v2, "oldCount":I
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    .line 78
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 80
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v5

    move-object v4, v5

    .line 81
    .local v4, "best":Lgnu/mapping/MethodProc;
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 83
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v2

    move v10, v3

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v6, v3

    move-object v7, v1

    aput-object v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 88
    .end local v4    # "best":Lgnu/mapping/MethodProc;
    :cond_0
    monitor-exit v11

    return-void

    .line 78
    .restart local v4    # "best":Lgnu/mapping/MethodProc;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "oldCount":I
    .end local v3    # "i":I
    .end local v4    # "best":Lgnu/mapping/MethodProc;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lgnu/expr/GenericProc;
    throw v0
.end method

.method protected declared-synchronized add([Lgnu/mapping/MethodProc;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "procs":[Lgnu/mapping/MethodProc;
    move-object v7, p0

    monitor-enter v7

    move-object v4, v1

    :try_start_0
    array-length v4, v4

    move v2, v4

    .line 44
    .local v2, "n":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v4, :cond_0

    .line 45
    move-object v4, v0

    move v5, v2

    new-array v5, v5, [Lgnu/mapping/MethodProc;

    iput-object v5, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 46
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 47
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    monitor-exit v7

    return-void

    .line 43
    .end local v2    # "n":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/expr/GenericProc;
    throw v0
.end method

.method public declared-synchronized addAtEnd(Lgnu/mapping/MethodProc;)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "method":Lgnu/mapping/MethodProc;
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lgnu/expr/GenericProc;->count:I

    move v2, v4

    .line 53
    .local v2, "oldCount":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v4, :cond_5

    .line 54
    move-object v4, v0

    const/16 v5, 0x8

    new-array v5, v5, [Lgnu/mapping/MethodProc;

    iput-object v5, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 62
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    .line 64
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v4

    move v3, v4

    .line 65
    .local v3, "n":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/expr/GenericProc;->minArgs:I

    if-lt v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lgnu/expr/GenericProc;->count:I

    if-nez v4, :cond_2

    .line 66
    :cond_1
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/expr/GenericProc;->minArgs:I

    .line 67
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v4

    move v3, v4

    .line 68
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/expr/GenericProc;->maxArgs:I

    if-le v4, v5, :cond_4

    .line 69
    :cond_3
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/expr/GenericProc;->maxArgs:I

    .line 70
    :cond_4
    move-object v4, v0

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    iput v5, v4, Lgnu/expr/GenericProc;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v9

    return-void

    .line 55
    .end local v3    # "n":I
    :cond_5
    move v4, v2

    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 57
    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v5, v5

    mul-int/2addr v4, v5

    new-array v4, v4, [Lgnu/mapping/MethodProc;

    move-object v3, v4

    .line 58
    .local v3, "copy":[Lgnu/mapping/MethodProc;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v2    # "oldCount":I
    .end local v3    # "copy":[Lgnu/mapping/MethodProc;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lgnu/expr/GenericProc;
    throw v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v6, v0

    iget v6, v6, Lgnu/expr/GenericProc;->count:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 112
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 120
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return-object v0

    .line 113
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v6, v7}, Lgnu/expr/GenericProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 114
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v2, v6

    .line 115
    .local v2, "ctx":Lgnu/mapping/CallContext;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/expr/GenericProc;->count:I

    if-ge v6, v7, :cond_2

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 118
    .local v4, "method":Lgnu/mapping/MethodProc;
    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v5, v6

    .line 119
    .local v5, "m":I
    move v6, v5

    if-nez v6, :cond_1

    .line 120
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v4    # "method":Lgnu/mapping/MethodProc;
    .end local v5    # "m":I
    :cond_2
    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v6
.end method

.method public getMethod(I)Lgnu/mapping/MethodProc;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/expr/GenericProc;->count:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/GenericProc;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v3, v1

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public getMethodCount()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/GenericProc;->count:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/GenericProc;
    return v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "args":[Lgnu/bytecode/Type;
    const/4 v6, -0x1

    move v2, v6

    .line 128
    .local v2, "best":I
    move-object v6, v0

    iget v6, v6, Lgnu/expr/GenericProc;->count:I

    move v3, v6

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-ltz v6, :cond_2

    .line 130
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 131
    .local v4, "method":Lgnu/mapping/MethodProc;
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v6

    move v5, v6

    .line 132
    .local v5, "result":I
    move v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 133
    const/4 v6, 0x1

    move v0, v6

    .line 137
    .end local v0    # "this":Lgnu/expr/GenericProc;
    .end local v4    # "method":Lgnu/mapping/MethodProc;
    .end local v5    # "result":I
    :goto_1
    return v0

    .line 134
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    .restart local v4    # "method":Lgnu/mapping/MethodProc;
    .restart local v5    # "result":I
    :cond_0
    move v6, v5

    if-nez v6, :cond_1

    .line 135
    const/4 v6, 0x0

    move v2, v6

    .line 136
    :cond_1
    goto :goto_0

    .line 137
    .end local v4    # "method":Lgnu/mapping/MethodProc;
    .end local v5    # "result":I
    :cond_2
    move v6, v2

    move v0, v6

    goto :goto_1
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    iget v5, v5, Lgnu/expr/GenericProc;->count:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 143
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 152
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 144
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/expr/GenericProc;->count:I

    if-ge v5, v6, :cond_2

    .line 146
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 147
    .local v3, "method":Lgnu/mapping/MethodProc;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v5

    move v4, v5

    .line 148
    .local v4, "code":I
    move v5, v4

    if-nez v5, :cond_1

    .line 149
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 144
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "method":Lgnu/mapping/MethodProc;
    .end local v4    # "code":I
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 152
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    iget v6, v6, Lgnu/expr/GenericProc;->count:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 158
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 167
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 159
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/expr/GenericProc;->count:I

    if-ge v6, v7, :cond_2

    .line 161
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 162
    .local v4, "method":Lgnu/mapping/MethodProc;
    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v5, v6

    .line 163
    .local v5, "code":I
    move v6, v5

    if-nez v6, :cond_1

    .line 164
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v4    # "method":Lgnu/mapping/MethodProc;
    .end local v5    # "code":I
    :cond_2
    move-object v6, v2

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 167
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    iget v7, v7, Lgnu/expr/GenericProc;->count:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 173
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    .line 182
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 174
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/expr/GenericProc;->count:I

    if-ge v7, v8, :cond_2

    .line 176
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 177
    .local v5, "method":Lgnu/mapping/MethodProc;
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v6, v7

    .line 178
    .local v6, "code":I
    move v7, v6

    if-nez v7, :cond_1

    .line 179
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 174
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "method":Lgnu/mapping/MethodProc;
    .end local v6    # "code":I
    :cond_2
    move-object v7, v3

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 182
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v0

    iget v8, v8, Lgnu/expr/GenericProc;->count:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 188
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v0, v8

    .line 197
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 189
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/expr/GenericProc;->count:I

    if-ge v8, v9, :cond_2

    .line 191
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 192
    .local v6, "method":Lgnu/mapping/MethodProc;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v7, v8

    .line 193
    .local v7, "code":I
    move v8, v7

    if-nez v8, :cond_1

    .line 194
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 189
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    .end local v6    # "method":Lgnu/mapping/MethodProc;
    .end local v7    # "code":I
    :cond_2
    move-object v8, v4

    const/4 v9, 0x0

    iput-object v9, v8, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 197
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 15

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object/from16 v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v0

    iget v9, v9, Lgnu/expr/GenericProc;->count:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 204
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    move v0, v9

    .line 213
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 205
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move-object v10, v0

    iget v10, v10, Lgnu/expr/GenericProc;->count:I

    if-ge v9, v10, :cond_2

    .line 207
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 208
    .local v7, "method":Lgnu/mapping/MethodProc;
    move-object v9, v7

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    move v8, v9

    .line 209
    .local v8, "code":I
    move v9, v8

    if-nez v9, :cond_1

    .line 210
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 205
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 212
    .end local v7    # "method":Lgnu/mapping/MethodProc;
    .end local v8    # "code":I
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    iput-object v10, v9, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 213
    const/4 v9, -0x1

    move v0, v9

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 16

    .prologue
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v13, v0

    iget v13, v13, Lgnu/expr/GenericProc;->count:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 219
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v13

    move v0, v13

    .line 270
    .end local v0    # "this":Lgnu/expr/GenericProc;
    :goto_0
    return v0

    .line 220
    .restart local v0    # "this":Lgnu/expr/GenericProc;
    :cond_0
    move-object v13, v1

    array-length v13, v13

    move v3, v13

    .line 221
    .local v3, "alen":I
    move v13, v3

    new-array v13, v13, [Lgnu/bytecode/Type;

    move-object v4, v13

    .line 222
    .local v4, "atypes":[Lgnu/bytecode/Type;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v13

    move-object v5, v13

    .line 226
    .local v5, "language":Lgnu/expr/Language;
    const/4 v13, 0x0

    move v6, v13

    .local v6, "j":I
    :goto_1
    move v13, v6

    move v14, v3

    if-ge v13, v14, :cond_3

    .line 228
    move-object v13, v1

    move v14, v6

    aget-object v13, v13, v14

    move-object v7, v13

    .line 230
    .local v7, "arg":Ljava/lang/Object;
    move-object v13, v7

    if-nez v13, :cond_1

    .line 231
    sget-object v13, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    move-object v8, v13

    .line 240
    .local v8, "atype":Lgnu/bytecode/Type;
    :goto_2
    move-object v13, v4

    move v14, v6

    move-object v15, v8

    aput-object v15, v13, v14

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 234
    .end local v8    # "atype":Lgnu/bytecode/Type;
    :cond_1
    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object v9, v13

    .line 235
    .local v9, "aclass":Ljava/lang/Class;
    move-object v13, v5

    if-eqz v13, :cond_2

    .line 236
    move-object v13, v5

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v8, v13

    .restart local v8    # "atype":Lgnu/bytecode/Type;
    goto :goto_2

    .line 238
    .end local v8    # "atype":Lgnu/bytecode/Type;
    :cond_2
    move-object v13, v9

    invoke-static {v13}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v8, v13

    .restart local v8    # "atype":Lgnu/bytecode/Type;
    goto :goto_2

    .line 242
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "atype":Lgnu/bytecode/Type;
    .end local v9    # "aclass":Ljava/lang/Class;
    :cond_3
    move-object v13, v0

    iget v13, v13, Lgnu/expr/GenericProc;->count:I

    new-array v13, v13, [I

    move-object v6, v13

    .line 243
    .local v6, "codes":[I
    const/4 v13, 0x0

    move v7, v13

    .line 244
    .local v7, "defCount":I
    const/4 v13, 0x0

    move v8, v13

    .line 245
    .local v8, "maybeCount":I
    const/4 v13, -0x1

    move v9, v13

    .line 246
    .local v9, "bestIndex":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_3
    move v13, v10

    move-object v14, v0

    iget v14, v14, Lgnu/expr/GenericProc;->count:I

    if-ge v13, v14, :cond_7

    .line 248
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v14, v10

    aget-object v13, v13, v14

    move-object v14, v4

    invoke-virtual {v13, v14}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v13

    move v11, v13

    .line 249
    .local v11, "code":I
    move v13, v7

    if-nez v13, :cond_4

    move v13, v11

    if-ltz v13, :cond_4

    .line 250
    move v13, v10

    move v9, v13

    .line 251
    :cond_4
    move v13, v11

    if-lez v13, :cond_6

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 255
    :cond_5
    :goto_4
    move-object v13, v6

    move v14, v10

    move v15, v11

    aput v15, v13, v14

    .line 246
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 253
    :cond_6
    move v13, v11

    if-nez v13, :cond_5

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 257
    .end local v11    # "code":I
    :cond_7
    move v13, v7

    const/4 v14, 0x1

    if-eq v13, v14, :cond_8

    move v13, v7

    if-nez v13, :cond_9

    move v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 258
    :cond_8
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v14, v9

    aget-object v13, v13, v14

    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v13

    move v0, v13

    goto/16 :goto_0

    .line 259
    :cond_9
    const/4 v13, 0x0

    move v10, v13

    :goto_5
    move v13, v10

    move-object v14, v0

    iget v14, v14, Lgnu/expr/GenericProc;->count:I

    if-ge v13, v14, :cond_c

    .line 261
    move-object v13, v6

    move v14, v10

    aget v13, v13, v14

    move v11, v13

    .line 262
    .restart local v11    # "code":I
    move v13, v11

    if-ltz v13, :cond_a

    move v13, v11

    if-nez v13, :cond_b

    move v13, v7

    if-lez v13, :cond_b

    .line 263
    .line 259
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 264
    :cond_b
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move v14, v10

    aget-object v13, v13, v14

    move-object v12, v13

    .line 265
    .local v12, "method":Lgnu/mapping/MethodProc;
    move-object v13, v12

    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v13

    move v11, v13

    .line 266
    move v13, v11

    if-nez v13, :cond_a

    .line 267
    const/4 v13, 0x0

    move v0, v13

    goto/16 :goto_0

    .line 269
    .end local v11    # "code":I
    .end local v12    # "method":Lgnu/mapping/MethodProc;
    :cond_c
    move-object v13, v2

    const/4 v14, 0x0

    iput-object v14, v13, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 270
    const/4 v13, -0x1

    move v0, v13

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/GenericProc;->minArgs:I

    move-object v2, v0

    iget v2, v2, Lgnu/expr/GenericProc;->maxArgs:I

    const/16 v3, 0xc

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/expr/GenericProc;
    return v0
.end method

.method public final setProperties([Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 287
    .local v2, "alen":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 289
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 290
    .local v4, "arg":Ljava/lang/Object;
    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/Keyword;

    if-eqz v5, :cond_0

    .line 291
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Lgnu/expr/Keyword;

    move-object v7, v1

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    .line 287
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    :cond_0
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Lgnu/mapping/MethodProc;

    invoke-virtual {v5, v6}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 295
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/expr/GenericProc;
    move-object v1, p1

    .local v1, "key":Lgnu/expr/Keyword;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 276
    .local v3, "name":Ljava/lang/String;
    move-object v4, v3

    const-string/jumbo v5, "name"

    if-ne v4, v5, :cond_0

    .line 277
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    move-object v4, v3

    const-string/jumbo v5, "method"

    if-ne v4, v5, :cond_1

    .line 279
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lgnu/mapping/MethodProc;

    invoke-virtual {v4, v5}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_0

    .line 281
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/mapping/MethodProc;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
