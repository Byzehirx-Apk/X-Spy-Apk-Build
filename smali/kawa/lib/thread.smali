.class public Lkawa/lib/thread;
.super Lgnu/expr/ModuleBody;
.source "thread.scm"


# static fields
.field public static final $Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/thread;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lkawa/lang/SyntaxRules;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field public static final future:Lkawa/lang/Macro;

.field public static final runnable:Lgnu/expr/ModuleMethod;

.field public static final sleep:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "p":Lgnu/mapping/Procedure;
    new-instance v2, Lgnu/mapping/Future;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;)V

    move-object v1, v2

    .line 15
    .local v1, "f":Lgnu/mapping/Future;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Future;->start()V

    .line 16
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "p":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "runnable"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "%make-future"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    const-string/jumbo v8, "future"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    sput-object v7, Lkawa/lib/thread;->Lit1:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\t\u0010\u0008\u0003"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "lambda"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/thread;->Lit2:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "sleep"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lib/thread;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    invoke-direct {v2}, Lkawa/lib/thread;-><init>()V

    sput-object v1, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    sget-object v3, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/thread;->sleep:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/thread;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/thread;->Lit2:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/thread;->future:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/thread;->runnable:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "p":Lgnu/mapping/Procedure;
    new-instance v1, Lgnu/mapping/RunnableClosure;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v1

    .end local v0    # "p":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "time":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-static {v1}, Lkawa/standard/sleep;->sleep(Lgnu/math/Quantity;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 18
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    move-object v3, v2

    :try_start_0
    check-cast v3, Lgnu/math/Quantity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/thread;->sleep(Lgnu/math/Quantity;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    goto :goto_0

    .line 13
    :pswitch_1
    move-object v3, v2

    :try_start_1
    check-cast v3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lkawa/lib/thread;->$PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 18
    :pswitch_2
    move-object v3, v2

    :try_start_2
    check-cast v3, Lgnu/mapping/Procedure;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v3}, Lkawa/lib/thread;->runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "sleep"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 13
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "%make-future"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 18
    :catch_2
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "runnable"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 4
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 18
    :goto_0
    return v0

    :pswitch_0
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-nez v6, :cond_0

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_0
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 13
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/math/Quantity;

    if-nez v6, :cond_2

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_2
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/thread;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 4
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
