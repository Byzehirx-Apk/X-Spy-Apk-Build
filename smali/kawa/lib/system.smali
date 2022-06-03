.class public Lkawa/lib/system;
.super Lgnu/expr/ModuleBody;
.source "system.scm"


# static fields
.field public static final $instance:Lkawa/lib/system;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final catch:Lgnu/expr/ModuleMethod;

.field public static command$Mnparse:Lgnu/mapping/Procedure;

.field public static final compile$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final make$Mnprocess:Lgnu/expr/ModuleMethod;

.field public static final open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

.field public static final process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

.field public static final system:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "process-command-line-assignments"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "catch"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "compile-file"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "tokenize-string-using-shell"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "tokenize-string-to-string-array"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "convert-list-to-string-array"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "convert-vector-to-string-array"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "system"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "open-input-pipe"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make-process"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    new-instance v1, Lkawa/lib/system;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lkawa/lib/system;-><init>()V

    sput-object v1, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->make$Mnprocess:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->system:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->compile$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->catch:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/system;->$instance:Lkawa/lib/system;

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

.method public static catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "key":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "thunk":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "handler":Lgnu/mapping/Procedure;
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;
    :try_end_0
    .catch Lkawa/lang/NamedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 105
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "key":Ljava/lang/Object;
    return-object v0

    .line 102
    .restart local v0    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 105
    .local v4, "ex":Lkawa/lang/NamedException;
    move-object v5, v4

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lkawa/lang/NamedException;->applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "source":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "output":Ljava/lang/String;
    new-instance v4, Lgnu/text/SourceMessages;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/text/SourceMessages;-><init>()V

    move-object v2, v4

    .line 89
    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lkawa/lang/CompileFile;->read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v3, v4

    .line 93
    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/expr/Compilation;->explicit:Z

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    new-instance v4, Lgnu/text/SyntaxException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 96
    :cond_0
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Compilation;->compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    new-instance v4, Lgnu/text/SyntaxException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_1
    return-void
.end method

.method public static convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "lst":Ljava/lang/Object;
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v2, v8

    :try_start_0
    check-cast v7, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v7

    move v1, v7

    .line 45
    .local v1, "count":I
    move v7, v1

    new-array v7, v7, [Ljava/lang/String;

    move-object v2, v7

    .line 46
    .local v2, "arr":[Ljava/lang/String;
    move-object v7, v0

    const/4 v8, 0x0

    move v4, v8

    move-object v3, v7

    .line 47
    .local v3, "p":Ljava/lang/Object;
    :goto_0
    move-object v7, v3

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    .line 50
    move-object v0, v7

    .end local v0    # "lst":Ljava/lang/Object;
    return-object v0

    .line 48
    .restart local v0    # "lst":Ljava/lang/Object;
    :cond_0
    move-object v7, v3

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_1
    check-cast v7, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v7

    .line 49
    .local v5, "pp":Lgnu/lists/Pair;
    move-object v7, v2

    move v8, v4

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    if-nez v10, :cond_1

    const/4 v9, 0x0

    :goto_1
    aput-object v9, v7, v8

    .line 50
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    move-object v3, v7

    goto :goto_0

    .line 49
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 44
    .end local v1    # "count":I
    .end local v2    # "arr":[Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Object;
    .end local v5    # "pp":Lgnu/lists/Pair;
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

    const-string/jumbo v10, "length"

    const/4 v11, 0x1

    move-object v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 48
    .restart local v1    # "count":I
    .restart local v2    # "arr":[Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Object;
    :catch_1
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

    const-string/jumbo v10, "pp"

    const/4 v11, -0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public static convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "vec":Ljava/lang/Object;
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v2, v6

    :try_start_0
    check-cast v5, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v5

    move v1, v5

    .line 38
    .local v1, "count":I
    move v5, v1

    new-array v5, v5, [Ljava/lang/String;

    move-object v2, v5

    .line 39
    .local v2, "arr":[Ljava/lang/String;
    sget-object v5, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    move-object v3, v5

    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 40
    move-object v6, v3

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 41
    move-object v5, v2

    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    :try_start_1
    check-cast v7, Lgnu/lists/FVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v3

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v4, v9

    :try_start_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    invoke-static {v7, v8}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    if-nez v8, :cond_0

    const/4 v7, 0x0

    :goto_1
    aput-object v7, v5, v6

    .line 39
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v6, v3

    sget-object v7, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .local v3, "i":Ljava/lang/Object;
    goto :goto_0

    .line 41
    .end local v3    # "i":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 40
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "vec":Ljava/lang/Object;
    return-object v0

    .line 37
    .end local v1    # "count":I
    .end local v2    # "arr":[Ljava/lang/String;
    .restart local v0    # "vec":Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "vector-length"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 41
    .restart local v1    # "count":I
    .restart local v2    # "arr":[Ljava/lang/String;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "vector-ref"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "vector-ref"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;
    .locals 13

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "args":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Ljava/lang/Object;
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    :goto_0
    move-object v2, v5

    .line 7
    .local v2, "arargs":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    move-object v3, v5

    .local v3, "runtime":Ljava/lang/Runtime;
    move-object v5, v3

    move-object v6, v2

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    :try_start_0
    check-cast v6, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    :try_start_1
    check-cast v7, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "args":Ljava/lang/Object;
    return-object v0

    .line 6
    .end local v2    # "arargs":Ljava/lang/Object;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    .restart local v0    # "args":Ljava/lang/Object;
    :cond_0
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    sget-object v5, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 11
    move-object v5, v0

    goto :goto_0

    .line 12
    :cond_3
    const-string/jumbo v5, "invalid arguments to make-process"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 18
    .restart local v2    # "arargs":Ljava/lang/Object;
    .restart local v3    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "command":Ljava/lang/Object;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "command":Ljava/lang/Object;
    return-object v0
.end method

.method public static processCommandLineAssignments()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    return-void
.end method

.method public static system(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "command":Ljava/lang/Object;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    move v0, v1

    .end local v0    # "command":Ljava/lang/Object;
    return v0
.end method

.method public static tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 52
    move-object/from16 v0, p0

    .local v0, "string":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 55
    .local v1, "toks":Ljava/util/StringTokenizer;
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v3, v9

    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v3, v9

    .local v3, "list":Lgnu/lists/Pair;
    goto :goto_0

    .line 63
    .end local v3    # "list":Lgnu/lists/Pair;
    :cond_0
    move-object v9, v3

    move-object v2, v9

    .line 53
    .local v2, "rlist":Ljava/lang/Object;
    move-object v9, v2

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v4, v10

    :try_start_0
    check-cast v9, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v9}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v9

    move v3, v9

    .local v3, "count":I
    move v9, v3

    new-array v9, v9, [Ljava/lang/String;

    move-object v4, v9

    .line 67
    .local v4, "arr":[Ljava/lang/String;
    move-object v9, v2

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    move-object v5, v9

    .line 68
    .local v5, "p":Ljava/lang/Object;
    :goto_1
    move-object v9, v5

    invoke-static {v9}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    .line 71
    move-object v0, v9

    .end local v0    # "string":Ljava/lang/String;
    return-object v0

    .line 69
    .restart local v0    # "string":Ljava/lang/String;
    :cond_1
    move-object v9, v5

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_1
    check-cast v9, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v9

    .line 70
    .local v7, "pp":Lgnu/lists/Pair;
    move-object v9, v4

    move v10, v6

    move-object v11, v7

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    if-nez v12, :cond_2

    const/4 v11, 0x0

    :goto_2
    aput-object v11, v9, v10

    .line 71
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    move-object v5, v9

    goto :goto_1

    .line 70
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 65
    .end local v3    # "count":I
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Object;
    .end local v7    # "pp":Lgnu/lists/Pair;
    :catch_0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "length"

    const/4 v13, 0x1

    move-object v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 69
    .restart local v3    # "count":I
    .restart local v4    # "arr":[Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Object;
    :catch_1
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "pp"

    const/4 v13, -0x2

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "string":Ljava/lang/Object;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 76
    .local v1, "arr":[Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x0

    const-string/jumbo v4, "/bin/sh"

    aput-object v4, v2, v3

    .line 77
    move-object v2, v1

    const/4 v3, 0x1

    const-string/jumbo v4, "-c"

    aput-object v4, v2, v3

    .line 78
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    aput-object v4, v2, v3

    .line 79
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "string":Ljava/lang/Object;
    return-object v0

    .line 78
    .restart local v0    # "string":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 107
    invoke-static {}, Lkawa/lib/system;->processCommandLineAssignments()V

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    :goto_0
    return-object v0

    .line 4294967295
    .line 107
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 73
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/system;->openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 28
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/system;->system(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 36
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 43
    :pswitch_3
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 52
    :pswitch_4
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lkawa/lib/system;->tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 73
    :pswitch_5
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/system;->tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 86
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 6
    :sswitch_0
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 86
    :sswitch_1
    move-object v4, v2

    :try_start_0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkawa/lib/system;->compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "compile-file"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 102
    move-object v5, v2

    move-object v6, v3

    :try_start_0
    check-cast v6, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v4

    :try_start_1
    check-cast v7, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v5, v6, v7}, Lkawa/lib/system;->catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 102
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "catch"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "catch"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 107
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    .line 4294967295
    .line 107
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

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

    .line 21
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 73
    :goto_0
    return v0

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

    .line 52
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

    .line 43
    :pswitch_2
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

    .line 36
    :pswitch_3
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

    .line 28
    :pswitch_4
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

    .line 21
    :pswitch_5
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
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 6
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 86
    :goto_0
    return v0

    :sswitch_0
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

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

    goto :goto_0

    :cond_0
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    .line 6
    :sswitch_1
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

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    .line 102
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Procedure;

    if-nez v8, :cond_1

    const v8, -0xbfffe

    move v0, v8

    :goto_0
    return v0

    .line 4294967295
    .line 102
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Procedure;

    if-nez v8, :cond_2

    const v8, -0xbfffd

    move v0, v8

    goto :goto_0

    :cond_2
    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 5

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/system;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 6
    .local v2, "$result":Lgnu/lists/Consumer;
    const-string/jumbo v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-static {v3, v4}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    sget-object v3, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    :goto_0
    sput-object v3, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    .line 86
    return-void

    .line 82
    :cond_0
    sget-object v3, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    goto :goto_0
.end method
