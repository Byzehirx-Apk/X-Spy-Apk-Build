.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static exitCounter:I

.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitDecrement()V
    .locals 3

    .prologue
    .line 115
    const-class v2, Lgnu/expr/ModuleBody;

    monitor-enter v2

    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    move v0, v1

    .line 116
    .local v0, "counter":I
    move v1, v0

    if-lez v1, :cond_0

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    move v1, v0

    if-nez v1, :cond_1

    .line 121
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 124
    :cond_1
    move v1, v0

    :try_start_1
    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "counter":I
    throw v0
.end method

.method public static declared-synchronized exitIncrement()V
    .locals 3

    .prologue
    .line 103
    const-class v2, Lgnu/expr/ModuleBody;

    monitor-enter v2

    :try_start_0
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    if-nez v0, :cond_0

    .line 104
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 105
    :cond_0
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v2

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getMainPrintValues()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "ctx":Lgnu/mapping/CallContext;
    move-object v1, p1

    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, p2

    .local v2, "save":Lgnu/lists/Consumer;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 60
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 67
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 70
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    .line 71
    move-object v4, v1

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 62
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 64
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v4, v3

    move-object v1, v4

    goto :goto_0

    .line 72
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Error;

    if-eqz v4, :cond_2

    .line 73
    move-object v4, v1

    check-cast v4, Ljava/lang/Error;

    throw v4

    .line 74
    :cond_2
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 76
    :cond_3
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .locals 2

    .prologue
    .line 95
    move v0, p0

    .local v0, "value":Z
    move v1, v0

    sput-boolean v1, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    .line 96
    return-void
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
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    iget v2, v2, Lgnu/mapping/CallContext;->pc:I

    if-nez v2, :cond_0

    .line 15
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 16
    :cond_0
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v2

    move-object v1, v2

    .line 81
    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    move-result v2

    .line 82
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleBody;
    return-object v0
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleBody;
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
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 179
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    .line 180
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleBody;
    return-object v0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 187
    .local v4, "args":[Ljava/lang/Object;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    .line 188
    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v3

    aput-object v7, v5, v6

    .line 189
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleBody;
    return-object v0
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 197
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    .line 198
    move-object v6, v5

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    .line 199
    move-object v6, v5

    const/4 v7, 0x2

    move-object v8, v4

    aput-object v8, v6, v7

    .line 200
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/ModuleBody;
    return-object v0
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg3":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "arg4":Ljava/lang/Object;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 208
    .local v6, "args":[Ljava/lang/Object;
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    .line 209
    move-object v7, v6

    const/4 v8, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    .line 210
    move-object v7, v6

    const/4 v8, 0x2

    move-object v9, v4

    aput-object v9, v7, v8

    .line 211
    move-object v7, v6

    const/4 v8, 0x3

    move-object v9, v5

    aput-object v9, v7, v8

    .line 212
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/ModuleBody;
    return-object v0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "method":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 219
    .local v3, "count":I
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v5

    move v4, v5

    .line 220
    .local v4, "num":I
    move v5, v3

    move v6, v4

    const/16 v7, 0xfff

    and-int/lit16 v6, v6, 0xfff

    if-lt v5, v6, :cond_1

    move v5, v4

    if-ltz v5, :cond_0

    move v5, v3

    move v6, v4

    const/16 v7, 0xc

    shr-int/lit8 v6, v6, 0xc

    if-gt v5, v6, :cond_1

    .line 223
    :cond_0
    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 237
    :cond_1
    new-instance v5, Lgnu/mapping/WrongArguments;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    move v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v5

    .line 226
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 234
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 230
    :pswitch_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 232
    :pswitch_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 234
    :pswitch_4
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x2

    aget-object v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual/range {v5 .. v10}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/ModuleMethod;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v5

    move v3, v5

    .line 243
    .local v3, "num":I
    move v5, v3

    const/16 v6, 0xfff

    and-int/lit16 v5, v5, 0xfff

    move v4, v5

    .line 244
    .local v4, "min":I
    move v5, v4

    if-lez v5, :cond_0

    .line 245
    const/high16 v5, -0xf0000

    move v6, v4

    or-int/2addr v5, v6

    move v0, v5

    .line 252
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 246
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v5, v3

    if-gez v5, :cond_1

    .line 247
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 248
    :cond_1
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->count:I

    .line 249
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->where:I

    .line 250
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Lgnu/mapping/CallContext;->next:I

    .line 251
    move-object v5, v2

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 252
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
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

    .line 258
    .local v4, "num":I
    move v7, v4

    const/16 v8, 0xfff

    and-int/lit16 v7, v7, 0xfff

    move v5, v7

    .line 259
    .local v5, "min":I
    move v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 260
    const/high16 v7, -0xf0000

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    .line 275
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 261
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v7, v4

    if-ltz v7, :cond_2

    .line 263
    move v7, v4

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    move v6, v7

    .line 264
    .local v6, "max":I
    move v7, v6

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 265
    const/high16 v7, -0xe0000

    move v8, v6

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 266
    :cond_1
    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 267
    move-object v7, v3

    const/4 v8, 0x1

    iput v8, v7, Lgnu/mapping/CallContext;->count:I

    .line 268
    move-object v7, v3

    const/4 v8, 0x1

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 269
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->next:I

    .line 270
    move-object v7, v3

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 272
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 274
    .end local v6    # "max":I
    :cond_2
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v6, v7

    .line 275
    .local v6, "args":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
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

    .line 282
    .local v5, "num":I
    move v8, v5

    const/16 v9, 0xfff

    and-int/lit16 v8, v8, 0xfff

    move v6, v8

    .line 283
    .local v6, "min":I
    move v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 284
    const/high16 v8, -0xf0000

    move v9, v6

    or-int/2addr v8, v9

    move v0, v8

    .line 300
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 285
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 287
    move v8, v5

    const/16 v9, 0xc

    shr-int/lit8 v8, v8, 0xc

    move v7, v8

    .line 288
    .local v7, "max":I
    move v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 289
    const/high16 v8, -0xe0000

    move v9, v7

    or-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 290
    :cond_1
    move-object v8, v4

    move-object v9, v2

    iput-object v9, v8, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 291
    move-object v8, v4

    move-object v9, v3

    iput-object v9, v8, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 292
    move-object v8, v4

    const/4 v9, 0x2

    iput v9, v8, Lgnu/mapping/CallContext;->count:I

    .line 293
    move-object v8, v4

    const/16 v9, 0x21

    iput v9, v8, Lgnu/mapping/CallContext;->where:I

    .line 295
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lgnu/mapping/CallContext;->next:I

    .line 296
    move-object v8, v4

    move-object v9, v1

    iput-object v9, v8, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 297
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 299
    .end local v7    # "max":I
    :cond_2
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

    .line 300
    .local v7, "args":[Ljava/lang/Object;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
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

    .line 307
    .local v6, "num":I
    move v9, v6

    const/16 v10, 0xfff

    and-int/lit16 v9, v9, 0xfff

    move v7, v9

    .line 308
    .local v7, "min":I
    move v9, v7

    const/4 v10, 0x3

    if-le v9, v10, :cond_0

    .line 309
    const/high16 v9, -0xf0000

    move v10, v7

    or-int/2addr v9, v10

    move v0, v9

    .line 328
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 310
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v9, v6

    if-ltz v9, :cond_2

    .line 312
    move v9, v6

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    move v8, v9

    .line 313
    .local v8, "max":I
    move v9, v8

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 314
    const/high16 v9, -0xe0000

    move v10, v8

    or-int/2addr v9, v10

    move v0, v9

    goto :goto_0

    .line 315
    :cond_1
    move-object v9, v5

    move-object v10, v2

    iput-object v10, v9, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 316
    move-object v9, v5

    move-object v10, v3

    iput-object v10, v9, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 317
    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 318
    move-object v9, v5

    const/4 v10, 0x3

    iput v10, v9, Lgnu/mapping/CallContext;->count:I

    .line 319
    move-object v9, v5

    const/16 v10, 0x321

    iput v10, v9, Lgnu/mapping/CallContext;->where:I

    .line 322
    move-object v9, v5

    const/4 v10, 0x0

    iput v10, v9, Lgnu/mapping/CallContext;->next:I

    .line 323
    move-object v9, v5

    move-object v10, v1

    iput-object v10, v9, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 325
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 327
    .end local v8    # "max":I
    :cond_2
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

    .line 328
    .local v8, "args":[Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 15

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
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

    .line 335
    .local v7, "num":I
    move v10, v7

    const/16 v11, 0xfff

    and-int/lit16 v10, v10, 0xfff

    move v8, v10

    .line 336
    .local v8, "min":I
    move v10, v8

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    .line 337
    const/high16 v10, -0xf0000

    move v11, v8

    or-int/2addr v10, v11

    move v0, v10

    .line 358
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 338
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v10, v7

    if-ltz v10, :cond_2

    .line 340
    move v10, v7

    const/16 v11, 0xc

    shr-int/lit8 v10, v10, 0xc

    move v9, v10

    .line 341
    .local v9, "max":I
    move v10, v9

    const/4 v11, 0x4

    if-ge v10, v11, :cond_1

    .line 342
    const/high16 v10, -0xe0000

    move v11, v9

    or-int/2addr v10, v11

    move v0, v10

    goto :goto_0

    .line 343
    :cond_1
    move-object v10, v6

    move-object v11, v2

    iput-object v11, v10, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 344
    move-object v10, v6

    move-object v11, v3

    iput-object v11, v10, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 345
    move-object v10, v6

    move-object v11, v4

    iput-object v11, v10, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 346
    move-object v10, v6

    move-object v11, v5

    iput-object v11, v10, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 347
    move-object v10, v6

    const/4 v11, 0x4

    iput v11, v10, Lgnu/mapping/CallContext;->count:I

    .line 348
    move-object v10, v6

    const/16 v11, 0x4321

    iput v11, v10, Lgnu/mapping/CallContext;->where:I

    .line 352
    move-object v10, v6

    const/4 v11, 0x0

    iput v11, v10, Lgnu/mapping/CallContext;->next:I

    .line 353
    move-object v10, v6

    move-object v11, v1

    iput-object v11, v10, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 355
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 357
    .end local v9    # "max":I
    :cond_2
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

    .line 358
    .local v9, "args":[Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    move-object v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v10

    move v0, v10

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
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

    .line 364
    .local v4, "num":I
    move v7, v4

    const/16 v8, 0xfff

    and-int/lit16 v7, v7, 0xfff

    move v5, v7

    .line 365
    .local v5, "min":I
    move-object v7, v2

    array-length v7, v7

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 366
    const/high16 v7, -0xf0000

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    .line 394
    .end local v0    # "this":Lgnu/expr/ModuleBody;
    :goto_0
    return v0

    .line 367
    .restart local v0    # "this":Lgnu/expr/ModuleBody;
    :cond_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 369
    move-object v7, v2

    array-length v7, v7

    packed-switch v7, :pswitch_data_0

    .line 382
    move v7, v4

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    move v6, v7

    .line 383
    .local v6, "max":I
    move-object v7, v2

    array-length v7, v7

    move v8, v6

    if-le v7, v8, :cond_1

    .line 384
    const/high16 v7, -0xe0000

    move v8, v6

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 372
    .end local v6    # "max":I
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 374
    :pswitch_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 376
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

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 378
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

    invoke-virtual/range {v7 .. v12}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 380
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

    invoke-virtual/range {v7 .. v13}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 387
    :cond_1
    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 388
    move-object v7, v3

    move-object v8, v2

    array-length v8, v8

    iput v8, v7, Lgnu/mapping/CallContext;->count:I

    .line 389
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->where:I

    .line 390
    move-object v7, v3

    const/4 v8, 0x0

    iput v8, v7, Lgnu/mapping/CallContext;->next:I

    .line 391
    move-object v7, v3

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 394
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 28
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v1

    monitor-exit v3

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    move-object v3, v0

    sget-object v4, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    .line 33
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public run(Lgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v2, v6

    .line 39
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v2

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v3, v6

    .line 40
    .local v3, "save":Lgnu/lists/Consumer;
    move-object v6, v2

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v6, 0x0

    move-object v4, v6

    .line 50
    .line 51
    .local v4, "th":Ljava/lang/Throwable;
    :goto_0
    move-object v6, v2

    move-object v7, v4

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    .line 52
    return-void

    .line 47
    .end local v4    # "th":Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 49
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v6, v5

    move-object v4, v6

    .restart local v4    # "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .locals 0
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public final runAsMain()V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleBody;
    sget-object v3, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v3}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v3

    .line 134
    :try_start_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v3

    move-object v1, v3

    .line 135
    .local v1, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    move-object v2, v3

    .line 138
    .local v2, "out":Lgnu/mapping/OutPort;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 139
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 140
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->freshLine()V

    .line 142
    .line 149
    .end local v2    # "out":Lgnu/mapping/OutPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 150
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 157
    .line 158
    .end local v1    # "ctx":Lgnu/mapping/CallContext;
    :goto_1
    return-void

    .line 145
    .restart local v1    # "ctx":Lgnu/mapping/CallContext;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    .line 146
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v1    # "ctx":Lgnu/mapping/CallContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 154
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 156
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
