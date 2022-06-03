.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 125
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 126
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/ApplyToArgs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 135
    .local v2, "proc":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 137
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 138
    .local v3, "rargs":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 168
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    .end local v3    # "rargs":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lgnu/bytecode/Type;

    if-nez v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 144
    :cond_1
    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 146
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 154
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 155
    new-instance v4, Lgnu/mapping/WrongArguments;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 156
    :cond_3
    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v3, v4

    .line 158
    .local v3, "index":I
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 163
    .end local v3    # "index":I
    :cond_4
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 164
    .local v3, "pclass":Ljava/lang/Class;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    .line 167
    new-instance v4, Lgnu/mapping/WrongArguments;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 168
    :cond_5
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 170
    :cond_6
    new-instance v4, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v2

    const-string/jumbo v9, "procedure"

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_0

    .line 75
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Procedure;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 83
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_0

    .line 91
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Procedure;

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 12

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-eqz v6, :cond_0

    .line 100
    move-object v6, v1

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 11

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v3, v6

    .line 108
    .local v3, "code":I
    move v6, v3

    if-eqz v6, :cond_1

    .line 110
    move-object v6, v0

    move-object v4, v6

    .line 111
    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_0

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-eqz v6, :cond_0

    .line 113
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v4, v6

    .line 114
    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 115
    .local v5, "xargs":[Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v5

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object v6, v5

    move-object v1, v6

    .line 118
    .end local v5    # "xargs":[Ljava/lang/Object;
    :cond_0
    move v6, v3

    move-object v7, v4

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 120
    .end local v4    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    return-void
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_0

    .line 15
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Procedure;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .line 17
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 23
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 25
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_0

    .line 31
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Procedure;

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 33
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-eqz v6, :cond_0

    .line 40
    move-object v6, v1

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 42
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ApplyToArgs;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    array-length v6, v6

    move v3, v6

    .line 48
    .local v3, "n":I
    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-eqz v6, :cond_0

    .line 50
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v4, v6

    .line 51
    .local v4, "proc":Lgnu/mapping/Procedure;
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 64
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 65
    .local v5, "xargs":[Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    move-object v6, v4

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 69
    .end local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    .end local v4    # "proc":Lgnu/mapping/Procedure;
    .end local v5    # "xargs":[Ljava/lang/Object;
    :goto_0
    return v0

    .line 54
    .restart local v0    # "this":Lgnu/kawa/functions/ApplyToArgs;
    .restart local v4    # "proc":Lgnu/mapping/Procedure;
    :pswitch_0
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 56
    :pswitch_1
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 58
    :pswitch_2
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 60
    :pswitch_3
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x3

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 62
    :pswitch_4
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x3

    aget-object v9, v9, v10

    move-object v10, v1

    const/4 v11, 0x4

    aget-object v10, v10, v11

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 69
    .end local v4    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
