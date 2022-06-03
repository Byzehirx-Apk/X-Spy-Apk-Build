.class public abstract Lgnu/mapping/Procedure;
.super Lgnu/mapping/PropertySet;
.source "Procedure.java"


# static fields
.field public static final compilerKey:Lgnu/mapping/LazyPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/mapping/LazyPropertyKey",
            "<*>;"
        }
    .end annotation
.end field

.field private static final setterKey:Lgnu/mapping/Symbol;

.field private static final sourceLocationKey:Ljava/lang/String; = "source-location"

.field public static final validateApplyKey:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    .line 22
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "validate-apply"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    .line 27
    new-instance v0, Lgnu/mapping/LazyPropertyKey;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "compiler"

    invoke-direct {v1, v2}, Lgnu/mapping/LazyPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/PropertySet;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/PropertySet;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->setName(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    iget v4, v4, Lgnu/mapping/CallContext;->count:I

    move v3, v4

    .line 120
    .local v3, "count":I
    move-object v4, v1

    iget v4, v4, Lgnu/mapping/CallContext;->where:I

    if-nez v4, :cond_0

    move v4, v3

    if-eqz v4, :cond_0

    .line 121
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 148
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 149
    return-void

    .line 124
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 144
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 127
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 128
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 130
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 131
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 133
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_2
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 134
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 136
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 138
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 140
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_4
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 142
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)V
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move v1, p1

    .local v1, "argCount":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    move v2, v3

    .line 93
    .local v2, "num":I
    move v3, v1

    move v4, v2

    invoke-static {v4}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v4

    if-lt v3, v4, :cond_0

    move v3, v2

    if-ltz v3, :cond_1

    move v3, v1

    move v4, v2

    invoke-static {v4}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 95
    :cond_0
    new-instance v3, Lgnu/mapping/WrongArguments;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v3

    .line 96
    :cond_1
    return-void
.end method

.method public static maxArgs(I)I
    .locals 3

    .prologue
    .line 82
    move v0, p0

    .local v0, "num":I
    move v1, v0

    const/16 v2, 0xc

    shr-int/lit8 v1, v1, 0xc

    move v0, v1

    .end local v0    # "num":I
    return v0
.end method

.method public static minArgs(I)I
    .locals 3

    .prologue
    .line 80
    move v0, p0

    .local v0, "num":I
    move v1, v0

    const/16 v2, 0xfff

    and-int/lit16 v1, v1, 0xfff

    move v0, v1

    .end local v0    # "num":I
    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 114
    return-void
.end method

.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public check0(Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v3

    move v2, v3

    .line 320
    .local v2, "code":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 322
    move v3, v2

    move-object v4, v0

    sget-object v5, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 324
    :cond_0
    return-void
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v3, v5

    .line 330
    .local v3, "code":I
    move v5, v3

    if-eqz v5, :cond_0

    .line 332
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v4, v5

    .line 333
    .local v4, "args":[Ljava/lang/Object;
    move v5, v3

    move-object v6, v0

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 335
    .end local v4    # "args":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 11

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v4, v6

    .line 341
    .local v4, "code":I
    move v6, v4

    if-eqz v6, :cond_0

    .line 343
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v5, v6

    .line 344
    .local v5, "args":[Ljava/lang/Object;
    move v6, v4

    move-object v7, v0

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 346
    .end local v5    # "args":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 13

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v5, v7

    .line 352
    .local v5, "code":I
    move v7, v5

    if-eqz v7, :cond_0

    .line 354
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v6, v7

    .line 355
    .local v6, "args":[Ljava/lang/Object;
    move v7, v5

    move-object v8, v0

    move-object v9, v6

    invoke-static {v7, v8, v9}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 357
    .end local v6    # "args":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 15

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
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
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual/range {v8 .. v13}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v6, v8

    .line 364
    .local v6, "code":I
    move v8, v6

    if-eqz v8, :cond_0

    .line 366
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x2

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x3

    move-object v11, v4

    aput-object v11, v9, v10

    move-object v7, v8

    .line 367
    .local v7, "args":[Ljava/lang/Object;
    move v8, v6

    move-object v9, v0

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 369
    .end local v7    # "args":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 7

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v3, v4

    .line 375
    .local v3, "code":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 377
    move v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 379
    :cond_0
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 7

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/HasSetter;

    if-nez v2, :cond_1

    .line 385
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 386
    .local v1, "setter":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 387
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Procedure;

    move-object v0, v2

    .line 395
    .end local v0    # "this":Lgnu/mapping/Procedure;
    .local v1, "num_args":I
    :goto_0
    return-object v0

    .line 388
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    .local v1, "setter":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "procedure \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' has no setter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v1    # "setter":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v2

    move v1, v2

    .line 391
    .local v1, "num_args":I
    move v2, v1

    if-nez v2, :cond_2

    .line 392
    new-instance v2, Lgnu/mapping/Setter0;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v2

    goto :goto_0

    .line 393
    :cond_2
    move v2, v1

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_3

    .line 394
    new-instance v2, Lgnu/mapping/Setter1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/Setter1;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v2

    goto :goto_0

    .line 395
    :cond_3
    new-instance v2, Lgnu/mapping/Setter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v2, v0

    const-string/jumbo v3, "source-location"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 38
    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isSideEffectFree()Z
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v4

    move v2, v4

    .line 157
    .local v2, "num":I
    move v4, v2

    invoke-static {v4}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v4

    move v3, v4

    .line 158
    .local v3, "min":I
    move v4, v3

    if-lez v4, :cond_0

    .line 159
    const/high16 v4, -0xf0000

    move v5, v3

    or-int/2addr v4, v5

    move v0, v4

    .line 166
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 160
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v4, v2

    if-gez v4, :cond_1

    .line 161
    move-object v4, v0

    sget-object v5, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 162
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lgnu/mapping/CallContext;->count:I

    .line 163
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lgnu/mapping/CallContext;->where:I

    .line 164
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lgnu/mapping/CallContext;->next:I

    .line 165
    move-object v4, v1

    move-object v5, v0

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 166
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v6

    move v3, v6

    .line 175
    .local v3, "num":I
    move v6, v3

    invoke-static {v6}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v6

    move v4, v6

    .line 176
    .local v4, "min":I
    move v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 177
    const/high16 v6, -0xf0000

    move v7, v4

    or-int/2addr v6, v7

    move v0, v6

    .line 191
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 178
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v6, v3

    if-ltz v6, :cond_2

    .line 180
    move v6, v3

    invoke-static {v6}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v6

    move v5, v6

    .line 181
    .local v5, "max":I
    move v6, v5

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 182
    const/high16 v6, -0xe0000

    move v7, v5

    or-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 183
    :cond_1
    move-object v6, v2

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 184
    move-object v6, v2

    const/4 v7, 0x1

    iput v7, v6, Lgnu/mapping/CallContext;->count:I

    .line 185
    move-object v6, v2

    const/4 v7, 0x1

    iput v7, v6, Lgnu/mapping/CallContext;->where:I

    .line 186
    move-object v6, v2

    const/4 v7, 0x0

    iput v7, v6, Lgnu/mapping/CallContext;->next:I

    .line 187
    move-object v6, v2

    move-object v7, v0

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 188
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 190
    .end local v5    # "max":I
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v5, v6

    .line 191
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v7

    move v4, v7

    .line 200
    .local v4, "num":I
    move v7, v4

    invoke-static {v7}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v7

    move v5, v7

    .line 201
    .local v5, "min":I
    move v7, v5

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    .line 202
    const/high16 v7, -0xf0000

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    .line 218
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 203
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v7, v4

    if-ltz v7, :cond_2

    .line 205
    move v7, v4

    invoke-static {v7}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v7

    move v6, v7

    .line 206
    .local v6, "max":I
    move v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 207
    const/high16 v7, -0xe0000

    move v8, v6

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 208
    :cond_1
    move-object v7, v3

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 209
    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 210
    move-object v7, v3

    const/4 v8, 0x2

    iput v8, v7, Lgnu/mapping/CallContext;->count:I

    .line 211
    move-object v7, v3

    const/16 v8, 0x21

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 213
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->next:I

    .line 214
    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 215
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 217
    .end local v6    # "max":I
    :cond_2
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v6, v7

    .line 218
    .local v6, "args":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v8

    move v5, v8

    .line 227
    .local v5, "num":I
    move v8, v5

    invoke-static {v8}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v8

    move v6, v8

    .line 228
    .local v6, "min":I
    move v8, v6

    const/4 v9, 0x3

    if-le v8, v9, :cond_0

    .line 229
    const/high16 v8, -0xf0000

    move v9, v6

    or-int/2addr v8, v9

    move v0, v8

    .line 247
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 230
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 232
    move v8, v5

    invoke-static {v8}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v8

    move v7, v8

    .line 233
    .local v7, "max":I
    move v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_1

    .line 234
    const/high16 v8, -0xe0000

    move v9, v7

    or-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 235
    :cond_1
    move-object v8, v4

    move-object v9, v1

    iput-object v9, v8, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 236
    move-object v8, v4

    move-object v9, v2

    iput-object v9, v8, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 237
    move-object v8, v4

    move-object v9, v3

    iput-object v9, v8, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 238
    move-object v8, v4

    const/4 v9, 0x3

    iput v9, v8, Lgnu/mapping/CallContext;->count:I

    .line 239
    move-object v8, v4

    const/16 v9, 0x321

    iput v9, v8, Lgnu/mapping/CallContext;->where:I

    .line 242
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lgnu/mapping/CallContext;->next:I

    .line 243
    move-object v8, v4

    move-object v9, v0

    iput-object v9, v8, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 244
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 246
    .end local v7    # "max":I
    :cond_2
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v7, v8

    .line 247
    .local v7, "args":[Ljava/lang/Object;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

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

    invoke-virtual {v9}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v9

    move v6, v9

    .line 257
    .local v6, "num":I
    move v9, v6

    invoke-static {v9}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v9

    move v7, v9

    .line 258
    .local v7, "min":I
    move v9, v7

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 259
    const/high16 v9, -0xf0000

    move v10, v7

    or-int/2addr v9, v10

    move v0, v9

    .line 279
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 260
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v9, v6

    if-ltz v9, :cond_2

    .line 262
    move v9, v6

    invoke-static {v9}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v9

    move v8, v9

    .line 263
    .local v8, "max":I
    move v9, v8

    const/4 v10, 0x4

    if-ge v9, v10, :cond_1

    .line 264
    const/high16 v9, -0xe0000

    move v10, v8

    or-int/2addr v9, v10

    move v0, v9

    goto :goto_0

    .line 265
    :cond_1
    move-object v9, v5

    move-object v10, v1

    iput-object v10, v9, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 266
    move-object v9, v5

    move-object v10, v2

    iput-object v10, v9, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 267
    move-object v9, v5

    move-object v10, v3

    iput-object v10, v9, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 268
    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 269
    move-object v9, v5

    const/4 v10, 0x4

    iput v10, v9, Lgnu/mapping/CallContext;->count:I

    .line 270
    move-object v9, v5

    const/16 v10, 0x4321

    iput v10, v9, Lgnu/mapping/CallContext;->where:I

    .line 274
    move-object v9, v5

    const/4 v10, 0x0

    iput v10, v9, Lgnu/mapping/CallContext;->next:I

    .line 275
    move-object v9, v5

    move-object v10, v0

    iput-object v10, v9, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 276
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 278
    .end local v8    # "max":I
    :cond_2
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v3

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v4

    aput-object v12, v10, v11

    move-object v8, v9

    .line 279
    .local v8, "args":[Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v8

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v6

    move v3, v6

    .line 285
    .local v3, "num":I
    move v6, v3

    invoke-static {v6}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v6

    move v4, v6

    .line 286
    .local v4, "min":I
    move-object v6, v1

    array-length v6, v6

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 287
    const/high16 v6, -0xf0000

    move v7, v4

    or-int/2addr v6, v7

    move v0, v6

    .line 313
    .end local v0    # "this":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 288
    .restart local v0    # "this":Lgnu/mapping/Procedure;
    :cond_0
    move v6, v3

    if-ltz v6, :cond_1

    .line 290
    move-object v6, v1

    array-length v6, v6

    packed-switch v6, :pswitch_data_0

    .line 303
    move v6, v3

    invoke-static {v6}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v6

    move v5, v6

    .line 304
    .local v5, "max":I
    move-object v6, v1

    array-length v6, v6

    move v7, v5

    if-le v6, v7, :cond_1

    .line 305
    const/high16 v6, -0xe0000

    move v7, v5

    or-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 293
    .end local v5    # "max":I
    :pswitch_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 295
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 297
    :pswitch_2
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 299
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 301
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    move-object v10, v1

    const/4 v11, 0x3

    aget-object v10, v10, v11

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 308
    :cond_1
    move-object v6, v2

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 309
    move-object v6, v2

    move-object v7, v1

    array-length v7, v7

    iput v7, v6, Lgnu/mapping/CallContext;->count:I

    .line 310
    move-object v6, v2

    const/4 v7, 0x0

    iput v7, v6, Lgnu/mapping/CallContext;->where:I

    .line 311
    move-object v6, v2

    const/4 v7, 0x0

    iput v7, v6, Lgnu/mapping/CallContext;->next:I

    .line 312
    move-object v6, v2

    move-object v7, v0

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 313
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final maxArgs()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v1

    invoke-static {v1}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return v0
.end method

.method public final minArgs()I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v1

    invoke-static {v1}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    const/16 v1, -0x1000

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return v0
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 410
    return-void
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 415
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 420
    return-void
.end method

.method public setSetter(Lgnu/mapping/Procedure;)V
    .locals 7

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "setter":Lgnu/mapping/Procedure;
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/HasSetter;

    if-eqz v2, :cond_0

    .line 401
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "procedure \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' has builtin setter - cannot be modified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_0
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public setSourceLocation(Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "file":Ljava/lang/String;
    move v2, p2

    .local v2, "line":I
    move-object v3, v0

    const-string/jumbo v4, "source-location"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 440
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    const-string/jumbo v4, "#<procedure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 441
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 442
    .local v2, "n":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 443
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getSourceLocation()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 444
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 445
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 446
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 447
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 448
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Procedure;
    return-object v0
.end method
