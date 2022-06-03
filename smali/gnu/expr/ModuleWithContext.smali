.class public abstract Lgnu/expr/ModuleWithContext;
.super Lgnu/expr/ModuleBody;
.source "ModuleWithContext.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v3

    move-object v2, v3

    .line 166
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleMethod;->check0(Lgnu/mapping/CallContext;)V

    .line 167
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    move-object v3, v4

    .line 174
    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleMethod;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 175
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v5

    move-object v4, v5

    .line 182
    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 183
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v5, v6

    .line 191
    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/expr/ModuleMethod;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 192
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "arg4":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    move-object v6, v7

    .line 200
    .local v6, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lgnu/expr/ModuleMethod;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 201
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    move-object v3, v4

    .line 208
    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleMethod;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 209
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v5

    move v3, v5

    .line 9
    .local v3, "num":I
    move v5, v3

    const/16 v6, 0xfff

    and-int/lit16 v5, v5, 0xfff

    move v4, v5

    .line 10
    .local v4, "min":I
    move v5, v4

    if-lez v5, :cond_0

    .line 11
    const/high16 v5, -0xf0000

    move v6, v4

    or-int/2addr v5, v6

    move v0, v5

    .line 18
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 12
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->count:I

    .line 13
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->where:I

    .line 14
    move v5, v3

    if-gez v5, :cond_1

    .line 15
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 16
    :cond_1
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->next:I

    .line 17
    move-object v5, v2

    move-object v6, v0

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    .line 18
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    move v4, v7

    .line 24
    .local v4, "num":I
    move v7, v4

    const/16 v8, 0xfff

    and-int/lit16 v7, v7, 0xfff

    move v5, v7

    .line 25
    .local v5, "min":I
    move v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 26
    const/high16 v7, -0xf0000

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    .line 41
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 27
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move v7, v4

    if-ltz v7, :cond_2

    .line 29
    move v7, v4

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    move v6, v7

    .line 30
    .local v6, "max":I
    move v7, v6

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 31
    const/high16 v7, -0xe0000

    move v8, v6

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 32
    :cond_1
    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 33
    move-object v7, v3

    const/4 v8, 0x1

    iput v8, v7, Lgnu/mapping/CallContext;->count:I

    .line 34
    move-object v7, v3

    const/4 v8, 0x1

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 35
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->next:I

    .line 36
    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Lgnu/expr/ModuleMethod;->selector:I

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    .line 37
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 39
    .end local v6    # "max":I
    :cond_2
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 40
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v6, v7

    .line 41
    .local v6, "args":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v8

    move v5, v8

    .line 48
    .local v5, "num":I
    move v8, v5

    const/16 v9, 0xfff

    and-int/lit16 v8, v8, 0xfff

    move v6, v8

    .line 49
    .local v6, "min":I
    move v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 50
    const/high16 v8, -0xf0000

    move v9, v6

    or-int/2addr v8, v9

    move v0, v8

    .line 67
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 51
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 53
    move v8, v5

    const/16 v9, 0xc

    shr-int/lit8 v8, v8, 0xc

    move v7, v8

    .line 54
    .local v7, "max":I
    move v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 55
    const/high16 v8, -0xe0000

    move v9, v7

    or-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 56
    :cond_1
    move-object v8, v4

    move-object v9, v2

    iput-object v9, v8, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 57
    move-object v8, v4

    move-object v9, v3

    iput-object v9, v8, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 58
    move-object v8, v4

    const/4 v9, 0x2

    iput v9, v8, Lgnu/mapping/CallContext;->count:I

    .line 59
    move-object v8, v4

    const/16 v9, 0x21

    iput v9, v8, Lgnu/mapping/CallContext;->where:I

    .line 61
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lgnu/mapping/CallContext;->next:I

    .line 62
    move-object v8, v4

    move-object v9, v0

    iput-object v9, v8, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v8, v4

    move-object v9, v1

    iget v9, v9, Lgnu/expr/ModuleMethod;->selector:I

    iput v9, v8, Lgnu/mapping/CallContext;->pc:I

    .line 63
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 65
    .end local v7    # "max":I
    :cond_2
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lgnu/mapping/CallContext;->where:I

    .line 66
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v7, v8

    .line 67
    .local v7, "args":[Ljava/lang/Object;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object/from16 v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v9

    move v6, v9

    .line 74
    .local v6, "num":I
    move v9, v6

    const/16 v10, 0xfff

    and-int/lit16 v9, v9, 0xfff

    move v7, v9

    .line 75
    .local v7, "min":I
    move v9, v7

    const/4 v10, 0x3

    if-le v9, v10, :cond_0

    .line 76
    const/high16 v9, -0xf0000

    move v10, v7

    or-int/2addr v9, v10

    move v0, v9

    .line 95
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 77
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move v9, v6

    if-ltz v9, :cond_2

    .line 79
    move v9, v6

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    move v8, v9

    .line 80
    .local v8, "max":I
    move v9, v8

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 81
    const/high16 v9, -0xe0000

    move v10, v8

    or-int/2addr v9, v10

    move v0, v9

    goto :goto_0

    .line 82
    :cond_1
    move-object v9, v5

    move-object v10, v2

    iput-object v10, v9, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 83
    move-object v9, v5

    move-object v10, v3

    iput-object v10, v9, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 84
    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 85
    move-object v9, v5

    const/4 v10, 0x3

    iput v10, v9, Lgnu/mapping/CallContext;->count:I

    .line 86
    move-object v9, v5

    const/16 v10, 0x321

    iput v10, v9, Lgnu/mapping/CallContext;->where:I

    .line 89
    move-object v9, v5

    const/4 v10, 0x0

    iput v10, v9, Lgnu/mapping/CallContext;->next:I

    .line 90
    move-object v9, v5

    move-object v10, v0

    iput-object v10, v9, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v9, v5

    move-object v10, v1

    iget v10, v10, Lgnu/expr/ModuleMethod;->selector:I

    iput v10, v9, Lgnu/mapping/CallContext;->pc:I

    .line 91
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 93
    .end local v8    # "max":I
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    iput v10, v9, Lgnu/mapping/CallContext;->where:I

    .line 94
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v3

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v4

    aput-object v12, v10, v11

    move-object v8, v9

    .line 95
    .local v8, "args":[Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 15

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object/from16 v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object/from16 v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "arg4":Ljava/lang/Object;
    move-object/from16 v6, p6

    .local v6, "ctx":Lgnu/mapping/CallContext;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v10

    move v7, v10

    .line 102
    .local v7, "num":I
    move v10, v7

    const/16 v11, 0xfff

    and-int/lit16 v10, v10, 0xfff

    move v8, v10

    .line 103
    .local v8, "min":I
    move v10, v8

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    .line 104
    const/high16 v10, -0xf0000

    move v11, v8

    or-int/2addr v10, v11

    move v0, v10

    .line 125
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 105
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move v10, v7

    if-ltz v10, :cond_2

    .line 107
    move v10, v7

    const/16 v11, 0xc

    shr-int/lit8 v10, v10, 0xc

    move v9, v10

    .line 108
    .local v9, "max":I
    move v10, v9

    const/4 v11, 0x4

    if-ge v10, v11, :cond_1

    .line 109
    const/high16 v10, -0xe0000

    move v11, v9

    or-int/2addr v10, v11

    move v0, v10

    goto :goto_0

    .line 110
    :cond_1
    move-object v10, v6

    move-object v11, v2

    iput-object v11, v10, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 111
    move-object v10, v6

    move-object v11, v3

    iput-object v11, v10, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 112
    move-object v10, v6

    move-object v11, v4

    iput-object v11, v10, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 113
    move-object v10, v6

    move-object v11, v5

    iput-object v11, v10, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 114
    move-object v10, v6

    const/4 v11, 0x4

    iput v11, v10, Lgnu/mapping/CallContext;->count:I

    .line 115
    move-object v10, v6

    const/16 v11, 0x4321

    iput v11, v10, Lgnu/mapping/CallContext;->where:I

    .line 119
    move-object v10, v6

    const/4 v11, 0x0

    iput v11, v10, Lgnu/mapping/CallContext;->next:I

    .line 120
    move-object v10, v6

    move-object v11, v0

    iput-object v11, v10, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v10, v6

    move-object v11, v1

    iget v11, v11, Lgnu/expr/ModuleMethod;->selector:I

    iput v11, v10, Lgnu/mapping/CallContext;->pc:I

    .line 121
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 123
    .end local v9    # "max":I
    :cond_2
    move-object v10, v6

    const/4 v11, 0x0

    iput v11, v10, Lgnu/mapping/CallContext;->where:I

    .line 124
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v4

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v5

    aput-object v13, v11, v12

    move-object v9, v10

    .line 125
    .local v9, "args":[Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    move-object v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v10

    move v0, v10

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleWithContext;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object/from16 v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    move v4, v7

    .line 131
    .local v4, "num":I
    move v7, v4

    const/16 v8, 0xfff

    and-int/lit16 v7, v7, 0xfff

    move v5, v7

    .line 132
    .local v5, "min":I
    move-object v7, v2

    array-length v7, v7

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 133
    const/high16 v7, -0xf0000

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    .line 159
    .end local v0    # "this":Lgnu/expr/ModuleWithContext;
    :goto_0
    return v0

    .line 134
    .restart local v0    # "this":Lgnu/expr/ModuleWithContext;
    :cond_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 136
    move-object v7, v2

    array-length v7, v7

    packed-switch v7, :pswitch_data_0

    .line 149
    move v7, v4

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    move v6, v7

    .line 150
    .local v6, "max":I
    move-object v7, v2

    array-length v7, v7

    move v8, v6

    if-le v7, v8, :cond_1

    .line 151
    const/high16 v7, -0xe0000

    move v8, v6

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 139
    .end local v6    # "max":I
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ModuleWithContext;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 141
    :pswitch_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/ModuleWithContext;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 143
    :pswitch_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/expr/ModuleWithContext;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 145
    :pswitch_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v11, v2

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v3

    invoke-virtual/range {v7 .. v12}, Lgnu/expr/ModuleWithContext;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 147
    :pswitch_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v11, v2

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object v13, v3

    invoke-virtual/range {v7 .. v13}, Lgnu/expr/ModuleWithContext;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 154
    :cond_1
    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 155
    move-object v7, v3

    move-object v8, v2

    array-length v8, v8

    iput v8, v7, Lgnu/mapping/CallContext;->count:I

    .line 156
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 157
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->next:I

    .line 158
    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Lgnu/expr/ModuleMethod;->selector:I

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    .line 159
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
