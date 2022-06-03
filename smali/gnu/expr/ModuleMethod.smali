.class public Lgnu/expr/ModuleMethod;
.super Lgnu/mapping/MethodProc;
.source "ModuleMethod.java"


# instance fields
.field public module:Lgnu/expr/ModuleBody;

.field protected numArgs:I

.field public selector:I


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V
    .locals 10

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "module":Lgnu/expr/ModuleBody;
    move v2, p2

    .local v2, "selector":I
    move-object v3, p3

    .local v3, "name":Ljava/lang/Object;
    move v4, p4

    .local v4, "numArgs":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/MethodProc;-><init>()V

    .line 23
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    move-result-object v5

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "module":Lgnu/expr/ModuleBody;
    move v2, p2

    .local v2, "selector":I
    move-object v3, p3

    .local v3, "name":Ljava/lang/Object;
    move v4, p4

    .local v4, "numArgs":I
    move-object/from16 v5, p5

    .local v5, "argTypes":Ljava/lang/Object;
    move-object v6, v0

    invoke-direct {v6}, Lgnu/mapping/MethodProc;-><init>()V

    .line 29
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    move-result-object v6

    .line 30
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static apply0Default(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public static apply1Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 229
    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 230
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public static apply2Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 237
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    .line 238
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 239
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public static apply3Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 247
    .local v4, "args":[Ljava/lang/Object;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    .line 248
    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    .line 249
    move-object v5, v4

    const/4 v6, 0x2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 250
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public static apply4Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 258
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 259
    move-object v6, v5

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 260
    move-object v6, v5

    const/4 v7, 0x2

    move-object v8, v3

    aput-object v8, v6, v7

    .line 261
    move-object v6, v5

    const/4 v7, 0x3

    move-object v8, v4

    aput-object v8, v6, v7

    .line 262
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public static applyError()V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Ljava/lang/Error;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "internal error - bad selector"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyNDefault(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "method":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 269
    .local v2, "count":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v5

    move v3, v5

    .line 270
    .local v3, "num":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v4, v5

    .line 271
    .local v4, "module":Lgnu/expr/ModuleBody;
    move v5, v2

    move v6, v3

    const/16 v7, 0xfff

    and-int/lit16 v6, v6, 0xfff

    if-lt v5, v6, :cond_1

    move v5, v3

    if-ltz v5, :cond_0

    move v5, v2

    move v6, v3

    const/16 v7, 0xc

    shr-int/lit8 v6, v6, 0xc

    if-gt v5, v6, :cond_1

    .line 274
    :cond_0
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 288
    :cond_1
    new-instance v5, Lgnu/mapping/WrongArguments;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v5

    .line 277
    :pswitch_0
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 285
    .end local v0    # "method":Lgnu/expr/ModuleMethod;
    :goto_0
    return-object v0

    .line 279
    .restart local v0    # "method":Lgnu/expr/ModuleMethod;
    :pswitch_1
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 281
    :pswitch_2
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 283
    :pswitch_3
    move-object v5, v4

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

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 285
    :pswitch_4
    move-object v5, v4

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

    invoke-virtual/range {v5 .. v10}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget v3, v3, Lgnu/mapping/CallContext;->pc:I

    packed-switch v3, :pswitch_data_0

    .line 178
    new-instance v3, Ljava/lang/Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "internal error - apply "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ModuleMethod;->apply0()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 180
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 181
    return-void

    .line 163
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleMethod;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 164
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 166
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_2
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 167
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 169
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_3
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 170
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 172
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_4
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 173
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 175
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_5
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleMethod;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 176
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public apply0()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "module":Lgnu/expr/ModuleBody;
    move v2, p2

    .local v2, "selector":I
    move-object v3, p3

    .local v3, "name":Ljava/lang/Object;
    move v4, p4

    .local v4, "numArgs":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 37
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/expr/ModuleMethod;->selector:I

    .line 38
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lgnu/expr/ModuleMethod;->numArgs:I

    .line 39
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 40
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleMethod;->setSymbol(Ljava/lang/Object;)V

    .line 41
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lgnu/mapping/CallContext;->count:I

    .line 99
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lgnu/mapping/CallContext;->where:I

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v2

    const/4 v4, 0x1

    iput v4, v3, Lgnu/mapping/CallContext;->count:I

    .line 106
    move-object v3, v2

    const/4 v4, 0x1

    iput v4, v3, Lgnu/mapping/CallContext;->where:I

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v3

    const/4 v5, 0x2

    iput v5, v4, Lgnu/mapping/CallContext;->count:I

    .line 113
    move-object v4, v3

    const/16 v5, 0x21

    iput v5, v4, Lgnu/mapping/CallContext;->where:I

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v4

    const/4 v6, 0x3

    iput v6, v5, Lgnu/mapping/CallContext;->count:I

    .line 121
    move-object v5, v4

    const/16 v6, 0x321

    iput v6, v5, Lgnu/mapping/CallContext;->where:I

    .line 124
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v5

    const/4 v7, 0x4

    iput v7, v6, Lgnu/mapping/CallContext;->count:I

    .line 131
    move-object v6, v5

    const/16 v7, 0x4321

    iput v7, v6, Lgnu/mapping/CallContext;->where:I

    .line 135
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v2

    move-object v4, v1

    array-length v4, v4

    iput v4, v3, Lgnu/mapping/CallContext;->count:I

    .line 141
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->where:I

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/ModuleMethod;->numArgs:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleMethod;
    return v0
.end method

.method protected resolveParameterTypes()V
    .locals 16

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ModuleMethod;
    const/4 v11, 0x0

    move-object v1, v11

    .line 50
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ModuleMethod;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 51
    .local v2, "name":Ljava/lang/String;
    move-object v11, v2

    if-eqz v11, :cond_4

    .line 55
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object v3, v11

    .line 56
    .local v3, "moduleClass":Ljava/lang/Class;
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v4, v11

    .line 57
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v11, v2

    invoke-static {v11}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 58
    .local v5, "mangledName":Ljava/lang/String;
    move-object v11, v4

    array-length v11, v11

    move v6, v11

    .local v6, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v11, v6

    if-ltz v11, :cond_1

    .line 60
    move-object v11, v4

    move v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 62
    move-object v11, v1

    if-eqz v11, :cond_2

    .line 64
    const/4 v11, 0x0

    move-object v1, v11

    .line 70
    :cond_1
    move-object v11, v1

    if-eqz v11, :cond_4

    .line 72
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v11

    move-object v6, v11

    .line 73
    .local v6, "lang":Lgnu/expr/Language;
    move-object v11, v6

    if-eqz v11, :cond_4

    .line 75
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    move-object v7, v11

    .line 76
    .local v7, "parameterClasses":[Ljava/lang/Class;
    move-object v11, v7

    array-length v11, v11

    move v8, v11

    .line 77
    .local v8, "numParamTypes":I
    move v11, v8

    new-array v11, v11, [Lgnu/bytecode/Type;

    move-object v9, v11

    .line 78
    .local v9, "atypes":[Lgnu/bytecode/Type;
    move v11, v8

    move v10, v11

    .local v10, "i":I
    :goto_1
    add-int/lit8 v10, v10, -0x1

    move v11, v10

    if-ltz v11, :cond_3

    .line 80
    move-object v11, v9

    move v12, v10

    move-object v13, v6

    move-object v14, v7

    move v15, v10

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v13

    aput-object v13, v11, v12

    goto :goto_1

    .line 67
    .end local v7    # "parameterClasses":[Ljava/lang/Class;
    .end local v8    # "numParamTypes":I
    .end local v9    # "atypes":[Lgnu/bytecode/Type;
    .end local v10    # "i":I
    .local v6, "i":I
    :cond_2
    move-object v11, v4

    move v12, v6

    aget-object v11, v11, v12

    move-object v1, v11

    goto :goto_0

    .line 82
    .local v6, "lang":Lgnu/expr/Language;
    .restart local v7    # "parameterClasses":[Ljava/lang/Class;
    .restart local v8    # "numParamTypes":I
    .restart local v9    # "atypes":[Lgnu/bytecode/Type;
    .restart local v10    # "i":I
    :cond_3
    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 90
    .end local v3    # "moduleClass":Ljava/lang/Class;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "mangledName":Ljava/lang/String;
    .end local v6    # "lang":Lgnu/expr/Language;
    .end local v7    # "parameterClasses":[Ljava/lang/Class;
    .end local v8    # "numParamTypes":I
    .end local v9    # "atypes":[Lgnu/bytecode/Type;
    .end local v10    # "i":I
    :cond_4
    :goto_2
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    if-nez v11, :cond_5

    .line 91
    move-object v11, v0

    invoke-super {v11}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 92
    :cond_5
    return-void

    .line 86
    :catch_0
    move-exception v11

    move-object v3, v11

    goto :goto_2
.end method
