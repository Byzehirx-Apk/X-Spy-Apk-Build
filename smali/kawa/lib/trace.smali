.class public Lkawa/lib/trace;
.super Lgnu/expr/ModuleBody;
.source "trace.scm"


# static fields
.field public static final $Pcdo$Mntrace:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/trace;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final disassemble:Lgnu/expr/ModuleMethod;

.field public static final trace:Lkawa/lang/Macro;

.field public static final untrace:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    const-string/jumbo v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    const-string/jumbo v3, "disassemble"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v20

    const-string/jumbo v8, "untrace"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v20

    sput-object v7, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v20

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string/jumbo v11, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "%do-trace"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    sput-object v16, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    const v18, 0x1301b

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v20

    const-string/jumbo v8, "trace"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v20

    sput-object v7, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v20

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string/jumbo v11, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    const v18, 0xe01b

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x0

    sget-object v6, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v20

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\t\u0003\u0008\u000b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "set!"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "invoke-static"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "<kawa.standard.TracedProcedure>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x3

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "quote"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "doTrace"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    const v19, 0x8026

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    const v18, 0x8026

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lib/trace;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-direct {v2}, Lkawa/lib/trace;-><init>()V

    sput-object v1, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    sget-object v1, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/trace;->$Pcdo$Mntrace:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/trace;->trace:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/trace;->untrace:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/trace;->disassemble:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

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

.method public static disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v3, v0

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v5

    move v2, v5

    :try_start_0
    invoke-static {v3, v4}, Lgnu/expr/PrimProcedure;->disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "proc":Lgnu/mapping/Procedure;
    return-object v0

    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :catchall_0
    move-exception v3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    throw v3
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

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 21
    move-object v3, v2

    :try_start_0
    check-cast v3, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/trace;->disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 21
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

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

    const-string/jumbo v6, "disassemble"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
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

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 21
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/mapping/Procedure;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    :goto_0
    return v0

    .line 4294967295
    .line 21
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

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
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/trace;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 21
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
