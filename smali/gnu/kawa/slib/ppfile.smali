.class public Lgnu/kawa/slib/ppfile;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/ppfile;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/text/Char;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field public static final pprint$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final pprint$Mnfilter$Mnfile:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "pprint-file"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/ppfile;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "pprint-filter-file"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/ppfile;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0xa

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    const/16 v1, 0x3b

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    new-instance v1, Lgnu/kawa/slib/ppfile;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/kawa/slib/ppfile;-><init>()V

    sput-object v1, Lgnu/kawa/slib/ppfile;->$instance:Lgnu/kawa/slib/ppfile;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/kawa/slib/ppfile;->$instance:Lgnu/kawa/slib/ppfile;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xffe

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/ppfile;->pprint$Mnfilter$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "source-location"

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:70"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lgnu/kawa/slib/ppfile;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/ppfile;->pprint$Mnfile:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/ppfile;->$instance:Lgnu/kawa/slib/ppfile;

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

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0
.end method

.method public static pprintFile(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "ifile":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "oport":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/kawa/slib/ppfile;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "ifile":Ljava/lang/Object;
    return-object v0
.end method

.method public static pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "inport":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "filter":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "argsArray":[Ljava/lang/Object;
    new-instance v7, Lgnu/kawa/slib/ppfile$frame;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lgnu/kawa/slib/ppfile$frame;-><init>()V

    move-object v4, v7

    move-object v7, v4

    move-object v8, v1

    iput-object v8, v7, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    move-object v7, v4

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v5, v9

    iput-object v8, v7, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    .line 27
    move-object v7, v4

    iget-object v7, v7, Lgnu/kawa/slib/ppfile$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    move-object v5, v7

    .line 24
    .local v5, "fun":Lgnu/mapping/Procedure;
    move-object v7, v0

    invoke-static {v7}, Lkawa/lib/ports;->isInputPort(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 25
    move-object v7, v4

    move-object v8, v0

    invoke-virtual {v7, v8}, Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 26
    :goto_0
    move-object v0, v7

    .end local v0    # "inport":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "inport":Ljava/lang/Object;
    :cond_0
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_0
    invoke-static {v7}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v8, v5

    invoke-static {v7, v8}, Lkawa/lib/ports;->callWithInputFile(Lgnu/text/Path;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "call-with-input-file"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 68
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 70
    :goto_0
    return-object v0

    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/ppfile;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 68
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 68
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 68
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 22
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v7, v3

    if-gez v7, :cond_1

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 22
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v3

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 70
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 68
    :pswitch_0
    move-object v4, v3

    move-object v5, v2

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

    .line 70
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

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
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 68
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 4294967295
    .line 68
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 22
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 4294967295
    .line 22
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/ppfile;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 22
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
