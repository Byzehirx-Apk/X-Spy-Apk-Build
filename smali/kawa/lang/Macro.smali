.class public Lkawa/lang/Macro;
.super Lkawa/lang/Syntax;
.source "Macro.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field private capturedScope:Lgnu/expr/ScopeExp;

.field public expander:Ljava/lang/Object;

.field private hygienic:Z

.field instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkawa/lang/Macro;->hygienic:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 14
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lkawa/lang/Macro;->hygienic:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "expander":Lgnu/mapping/Procedure;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 14
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lkawa/lang/Macro;->hygienic:Z

    .line 90
    move-object v3, v0

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Macro;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "old":Lkawa/lang/Macro;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lkawa/lang/Macro;->hygienic:Z

    .line 82
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lkawa/lang/Macro;->name:Ljava/lang/Object;

    iput-object v3, v2, Lkawa/lang/Macro;->name:Ljava/lang/Object;

    .line 83
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    iput-object v3, v2, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 84
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lkawa/lang/Macro;->hygienic:Z

    iput-boolean v3, v2, Lkawa/lang/Macro;->hygienic:Z

    .line 85
    return-void
.end method

.method public static make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    new-instance v2, Lkawa/lang/Macro;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 38
    .local v1, "mac":Lkawa/lang/Macro;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->setSyntax()V

    .line 39
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iput-object v3, v2, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    .line 40
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Lgnu/mapping/Procedure;)Lkawa/lang/Macro;
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "expander":Lgnu/mapping/Procedure;
    new-instance v3, Lkawa/lang/Macro;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    move-object v2, v3

    .line 62
    .local v2, "mac":Lkawa/lang/Macro;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/Object;
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "expander":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "instance":Ljava/lang/Object;
    new-instance v4, Lkawa/lang/Macro;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    move-object v3, v4

    .line 68
    .local v3, "mac":Lkawa/lang/Macro;
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    .line 69
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "name":Ljava/lang/Object;
    return-object v0
.end method

.method public static makeNonHygienic(Ljava/lang/Object;Lgnu/mapping/Procedure;)Lkawa/lang/Macro;
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "expander":Lgnu/mapping/Procedure;
    new-instance v3, Lkawa/lang/Macro;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    move-object v2, v3

    .line 46
    .local v2, "mac":Lkawa/lang/Macro;
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lkawa/lang/Macro;->hygienic:Z

    .line 47
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/Object;
    return-object v0
.end method

.method public static makeNonHygienic(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;
    .locals 9

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "expander":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "instance":Ljava/lang/Object;
    new-instance v4, Lkawa/lang/Macro;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    move-object v3, v4

    .line 54
    .local v3, "mac":Lkawa/lang/Macro;
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Lkawa/lang/Macro;->hygienic:Z

    .line 55
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    .line 56
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "name":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 126
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object/from16 v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    move-object v4, v10

    .line 127
    .local v4, "exp":Ljava/lang/Object;
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/Procedure;

    if-eqz v10, :cond_0

    move-object v10, v4

    instance-of v10, v10, Lgnu/expr/Expression;

    if-nez v10, :cond_0

    .line 128
    move-object v10, v4

    check-cast v10, Lgnu/mapping/Procedure;

    move-object v3, v10

    .line 161
    .end local v4    # "exp":Ljava/lang/Object;
    .local v3, "pr":Lgnu/mapping/Procedure;
    :goto_0
    move-object v10, v0

    iget-boolean v10, v10, Lkawa/lang/Macro;->hygienic:Z

    if-nez v10, :cond_6

    .line 163
    move-object v10, v1

    move-object v11, v2

    invoke-static {v10, v11}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 164
    move-object v10, v1

    invoke-static {v10}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v10

    move v6, v10

    .line 165
    .local v6, "nargs":I
    move v10, v6

    if-gtz v10, :cond_2

    .line 166
    move-object v10, v2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid macro argument list to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    .line 190
    .end local v0    # "this":Lkawa/lang/Macro;
    .end local v3    # "pr":Lgnu/mapping/Procedure;
    .end local v6    # "nargs":I
    :goto_1
    return-object v0

    .line 131
    .restart local v0    # "this":Lkawa/lang/Macro;
    .restart local v4    # "exp":Ljava/lang/Object;
    :cond_0
    move-object v10, v4

    instance-of v10, v10, Lgnu/expr/Expression;

    if-nez v10, :cond_1

    .line 133
    move-object v10, v2

    iget-object v10, v10, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object v5, v10

    .line 134
    .local v5, "savedMacro":Lkawa/lang/Macro;
    move-object v10, v2

    move-object v11, v0

    iput-object v11, v10, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    move-object v10, v2

    move-object v11, v4

    :try_start_1
    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 138
    .local v4, "exp":Lgnu/expr/Expression;
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lkawa/lang/Macro;->expander:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    move-object v10, v2

    move-object v11, v5

    :try_start_2
    iput-object v11, v10, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 143
    .line 157
    .end local v4    # "exp":Lgnu/expr/Expression;
    .end local v5    # "savedMacro":Lkawa/lang/Macro;
    :cond_1
    move-object v10, v4

    check-cast v10, Lgnu/expr/Expression;

    move-object v11, v2

    invoke-virtual {v11}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/Procedure;

    move-object v3, v10

    .restart local v3    # "pr":Lgnu/mapping/Procedure;
    goto :goto_0

    .line 142
    .end local v3    # "pr":Lgnu/mapping/Procedure;
    .restart local v5    # "savedMacro":Lkawa/lang/Macro;
    :catchall_0
    move-exception v10

    move-object v6, v10

    move-object v10, v2

    move-object v11, v5

    iput-object v11, v10, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object v10, v6

    throw v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    .end local v5    # "savedMacro":Lkawa/lang/Macro;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 190
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v10, v2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "evaluating syntax transformer \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' threw "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 167
    .local v3, "pr":Lgnu/mapping/Procedure;
    .restart local v6    # "nargs":I
    :cond_2
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    :try_start_3
    new-array v10, v10, [Ljava/lang/Object;

    move-object v7, v10

    .line 168
    .local v7, "args":[Ljava/lang/Object;
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_2
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_4

    .line 170
    move-object v10, v1

    check-cast v10, Lgnu/lists/Pair;

    move-object v9, v10

    .line 171
    .local v9, "pair":Lgnu/lists/Pair;
    move v10, v8

    if-lez v10, :cond_3

    .line 172
    move-object v10, v7

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move-object v12, v9

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 173
    :cond_3
    move-object v10, v9

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 175
    .end local v9    # "pair":Lgnu/lists/Pair;
    :cond_4
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    .line 179
    .end local v6    # "nargs":I
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v8    # "i":I
    .local v5, "result":Ljava/lang/Object;
    :goto_3
    move-object v10, v1

    instance-of v10, v10, Lgnu/lists/PairWithPosition;

    if-eqz v10, :cond_5

    move-object v10, v5

    instance-of v10, v10, Lgnu/lists/Pair;

    if-eqz v10, :cond_5

    move-object v10, v5

    instance-of v10, v10, Lgnu/lists/PairWithPosition;

    if-nez v10, :cond_5

    .line 182
    move-object v10, v5

    check-cast v10, Lgnu/lists/Pair;

    move-object v6, v10

    .line 183
    .local v6, "p":Lgnu/lists/Pair;
    new-instance v10, Lgnu/lists/PairWithPosition;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v1

    check-cast v12, Lgnu/lists/PairWithPosition;

    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v10

    .line 186
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "p":Lgnu/lists/Pair;
    :cond_5
    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_1

    .line 178
    :cond_6
    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    move-object v5, v10

    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_3
.end method

.method public getCapturedScope()Lgnu/expr/ScopeExp;
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    if-nez v1, :cond_0

    .line 22
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 23
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    check-cast v2, Lgnu/expr/ModuleExp;

    iput-object v2, v1, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    .line 27
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Macro;
    return-object v0

    .line 24
    .restart local v0    # "this":Lkawa/lang/Macro;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    invoke-static {v2}, Lgnu/expr/ModuleInfo;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v2

    iput-object v2, v1, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public final isHygienic()Z
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, v0

    iget-boolean v1, v1, Lkawa/lang/Macro;->hygienic:Z

    move v0, v1

    .end local v0    # "this":Lkawa/lang/Macro;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<macro "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 117
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 118
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 119
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkawa/lang/Macro;->setName(Ljava/lang/String;)V

    .line 229
    move-object v2, v0

    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Macro;
    return-object v0
.end method

.method public rewriteForm(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Macro;
    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 14

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v10, v3

    invoke-virtual {v10}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 198
    .local v4, "save_filename":Ljava/lang/String;
    move-object v10, v3

    invoke-virtual {v10}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v10

    move v5, v10

    .line 199
    .local v5, "save_line":I
    move-object v10, v3

    invoke-virtual {v10}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v10

    move v6, v10

    .line 200
    .local v6, "save_column":I
    move-object v10, v3

    iget-object v10, v10, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v7, v10

    .line 203
    .local v7, "saveSyntax":Lkawa/lang/Syntax;
    move-object v10, v3

    move-object v11, v1

    :try_start_0
    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 204
    move-object v10, v3

    move-object v11, v0

    iput-object v11, v10, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 205
    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 206
    .local v8, "x":Ljava/lang/Object;
    move-object v10, v3

    move-object v11, v8

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 211
    move-object v10, v3

    move-object v11, v7

    iput-object v11, v10, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 212
    .line 213
    return-void

    .line 210
    .end local v8    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 211
    move-object v10, v3

    move-object v11, v7

    iput-object v11, v10, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v10, v9

    throw v10
.end method

.method public setCapturedScope(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    .line 33
    return-void
.end method

.method public final setHygienic(Z)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move v1, p1

    .local v1, "hygienic":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lkawa/lang/Macro;->hygienic:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#<macro "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Macro;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Macro;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 222
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
