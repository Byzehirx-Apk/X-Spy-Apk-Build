.class public Lgnu/kawa/functions/CompileNamedPart;
.super Ljava/lang/Object;
.source "CompileNamedPart.java"


# static fields
.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileNamedPart;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "part1":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "part2":Lgnu/expr/Expression;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    .local v3, "name2":Ljava/lang/Object;
    instance-of v4, v4, Lgnu/mapping/SimpleSymbol;

    if-eqz v4, :cond_2

    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lgnu/expr/ReferenceExp;

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    .local v2, "name1":Ljava/lang/String;
    if-nez v4, :cond_1

    .end local v2    # "name1":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lgnu/kawa/functions/GetNamedExp;

    iget-object v4, v4, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    .restart local v2    # "name1":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 233
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 234
    .end local v0    # "part1":Lgnu/expr/Expression;
    .end local v2    # "name1":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "part1":Lgnu/expr/Expression;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "member":Ljava/lang/String;
    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "clas":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "member":Lgnu/expr/Expression;
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 186
    .local v3, "combinedName":Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v9

    move-object v4, v9

    .line 187
    .local v4, "env":Lgnu/mapping/Environment;
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 189
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v9

    check-cast v9, Lkawa/lang/Translator;

    move-object v5, v9

    .line 190
    .local v5, "tr":Lkawa/lang/Translator;
    sget-object v9, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v6, v9

    .line 191
    .local v6, "symbol":Lgnu/mapping/Symbol;
    move-object v9, v5

    iget-object v9, v9, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v7, v9

    .line 192
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v9, v7

    invoke-static {v9}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 193
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v0, v9

    .line 221
    .end local v0    # "clas":Lgnu/expr/Expression;
    .end local v5    # "tr":Lkawa/lang/Translator;
    .end local v6    # "symbol":Lgnu/mapping/Symbol;
    .end local v7    # "decl":Lgnu/expr/Declaration;
    :goto_0
    return-object v0

    .line 195
    .restart local v0    # "clas":Lgnu/expr/Expression;
    .restart local v5    # "tr":Lkawa/lang/Translator;
    .restart local v6    # "symbol":Lgnu/mapping/Symbol;
    .restart local v7    # "decl":Lgnu/expr/Declaration;
    :cond_0
    const/4 v9, 0x0

    move-object v8, v9

    .line 196
    .local v8, "property":Ljava/lang/Object;
    move-object v9, v6

    if-eqz v9, :cond_1

    move-object v9, v4

    move-object v10, v6

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 197
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v9

    goto :goto_0

    .line 199
    .end local v5    # "tr":Lkawa/lang/Translator;
    .end local v6    # "symbol":Lgnu/mapping/Symbol;
    .end local v7    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "property":Ljava/lang/Object;
    :cond_1
    move-object v9, v0

    instance-of v9, v9, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_2

    move-object v9, v0

    check-cast v9, Lgnu/expr/ReferenceExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v2, v10

    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 202
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 203
    .local v5, "rsym":Ljava/lang/Object;
    move-object v9, v5

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    move-object v9, v5

    check-cast v9, Lgnu/mapping/Symbol;

    :goto_1
    move-object v6, v9

    .line 205
    .local v6, "sym":Lgnu/mapping/Symbol;
    move-object v9, v4

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 207
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 210
    .local v7, "name":Ljava/lang/String;
    move-object v9, v7

    :try_start_0
    invoke-static {v9}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v8, v9

    .line 211
    .local v8, "cl":Ljava/lang/Class;
    move-object v9, v8

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    .line 215
    .line 218
    .end local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v5    # "rsym":Ljava/lang/Object;
    .end local v6    # "sym":Lgnu/mapping/Symbol;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "cl":Ljava/lang/Class;
    :cond_2
    :goto_2
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v5, v9

    .line 219
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/kawa/functions/GetNamedExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-direct {v10, v11}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    move-object v6, v9

    .line 220
    .local v6, "exp":Lgnu/kawa/functions/GetNamedExp;
    move-object v9, v6

    move-object v10, v3

    iput-object v10, v9, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    .line 221
    move-object v9, v6

    move-object v0, v9

    goto :goto_0

    .line 203
    .end local v6    # "exp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .local v5, "rsym":Ljava/lang/Object;
    :cond_3
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    goto :goto_1

    .line 213
    .local v6, "sym":Lgnu/mapping/Symbol;
    .restart local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v8, v9

    goto :goto_2
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "clas":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "member":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clas":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "member":Lgnu/expr/Expression;
    move-object v3, v0

    instance-of v3, v3, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v0

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 318
    .local v2, "val":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_0

    .line 319
    new-instance v3, Lgnu/kawa/functions/GetNamedInstancePart;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    move-object v0, v3

    .line 324
    .end local v0    # "member":Lgnu/expr/Expression;
    .end local v2    # "val":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 321
    .restart local v0    # "member":Lgnu/expr/Expression;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    move-object v2, v3

    .line 322
    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, v2

    const/4 v4, 0x0

    new-instance v5, Lgnu/expr/QuoteExp;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 323
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    aput-object v5, v3, v4

    .line 324
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    sget-object v5, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static validateGetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 330
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 331
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 334
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v9, v3

    check-cast v9, Lgnu/kawa/functions/GetNamedInstancePart;

    move-object v7, v9

    .line 335
    .local v7, "gproc":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v9, v7

    iget-boolean v9, v9, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v9, :cond_0

    .line 337
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v4

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v7

    iget-object v14, v14, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object v5, v9

    .line 338
    .local v5, "xargs":[Lgnu/expr/Expression;
    sget-object v9, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object v6, v9

    .line 349
    .local v6, "property":Lgnu/mapping/Procedure;
    :goto_0
    move-object v9, v1

    new-instance v10, Lgnu/expr/ApplyExp;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0

    .line 342
    .end local v5    # "xargs":[Lgnu/expr/Expression;
    .end local v6    # "property":Lgnu/mapping/Procedure;
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v9, v4

    array-length v9, v9

    move v8, v9

    .line 343
    .local v8, "nargs":I
    move v9, v8

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v5, v9

    .line 344
    .restart local v5    # "xargs":[Lgnu/expr/Expression;
    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 345
    move-object v9, v5

    const/4 v10, 0x1

    new-instance v11, Lgnu/expr/QuoteExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v7

    iget-object v13, v13, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    .line 346
    move-object v9, v4

    const/4 v10, 0x1

    move-object v11, v5

    const/4 v12, 0x2

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    sget-object v9, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v6, v9

    .restart local v6    # "property":Lgnu/mapping/Procedure;
    goto :goto_0
.end method

.method public static validateGetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 29

    .prologue
    .line 13
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 14
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 15
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/functions/GetNamedExp;

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 17
    :cond_0
    move-object/from16 v21, v2

    move-object/from16 v2, v21

    .line 142
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v2

    .line 18
    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object/from16 v21, v6

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v7, v21

    .line 19
    .local v7, "context":Lgnu/expr/Expression;
    const/16 v21, 0x0

    move-object/from16 v8, v21

    .line 20
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 22
    move-object/from16 v21, v7

    check-cast v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v9, v21

    .line 23
    .local v9, "rexp":Lgnu/expr/ReferenceExp;
    const-string/jumbo v21, "*"

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 24
    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/CompileNamedPart;->makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto :goto_0

    .line 25
    :cond_2
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v8, v21

    .line 28
    .end local v9    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_3
    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget-object v21, v21, v22

    check-cast v21, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v9, v21

    .line 29
    .local v9, "mname":Ljava/lang/String;
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v10, v21

    .line 30
    .local v10, "type":Lgnu/bytecode/Type;
    move-object/from16 v21, v7

    sget-object v22, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v21, 0x1

    :goto_1
    move/from16 v11, v21

    .line 31
    .local v11, "isInstanceOperator":Z
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    move-object/from16 v12, v21

    .line 32
    .local v12, "comp":Lgnu/expr/Compilation;
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v21

    move-object/from16 v13, v21

    .line 33
    .local v13, "language":Lgnu/expr/Language;
    move-object/from16 v21, v13

    move-object/from16 v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v14, v21

    .line 34
    .local v14, "typeval":Lgnu/bytecode/Type;
    move-object/from16 v21, v12

    if-nez v21, :cond_5

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v15, v21

    .line 37
    .local v15, "caller":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v2

    check-cast v21, Lgnu/kawa/functions/GetNamedExp;

    move-object/from16 v16, v21

    .line 39
    .local v16, "nexp":Lgnu/kawa/functions/GetNamedExp;
    move-object/from16 v21, v14

    if-eqz v21, :cond_a

    .line 41
    move-object/from16 v21, v9

    const-string/jumbo v22, "<>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 42
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v14

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 30
    .end local v11    # "isInstanceOperator":Z
    .end local v12    # "comp":Lgnu/expr/Compilation;
    .end local v13    # "language":Lgnu/expr/Language;
    .end local v14    # "typeval":Lgnu/bytecode/Type;
    .end local v15    # "caller":Lgnu/bytecode/ClassType;
    .end local v16    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .line 34
    .restart local v11    # "isInstanceOperator":Z
    .restart local v12    # "comp":Lgnu/expr/Compilation;
    .restart local v13    # "language":Lgnu/expr/Language;
    .restart local v14    # "typeval":Lgnu/bytecode/Type;
    :cond_5
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    goto :goto_2

    :cond_6
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    goto :goto_2

    .line 44
    .restart local v15    # "caller":Lgnu/bytecode/ClassType;
    .restart local v16    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    :cond_7
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 46
    move-object/from16 v21, v9

    const-string/jumbo v22, "new"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 47
    move-object/from16 v21, v16

    const/16 v22, 0x4e

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 48
    :cond_8
    move-object/from16 v21, v9

    const-string/jumbo v22, "instance?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 49
    move-object/from16 v21, v16

    const/16 v22, 0x49

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 50
    :cond_9
    move-object/from16 v21, v9

    const-string/jumbo v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 51
    move-object/from16 v21, v16

    const/16 v22, 0x43

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 54
    :cond_a
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 56
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 61
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Lgnu/kawa/functions/NamedPart;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v14

    move-object/from16 v26, v9

    const/16 v27, 0x44

    invoke-direct/range {v24 .. v27}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 63
    :cond_b
    move-object/from16 v21, v14

    move-object/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v21

    if-gez v21, :cond_c

    .line 64
    move-object/from16 v21, v2

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 65
    :cond_c
    move-object/from16 v21, v14

    check-cast v21, Lgnu/bytecode/ObjectType;

    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v24, v15

    move-object/from16 v25, v13

    invoke-static/range {v21 .. v25}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v21

    move-object/from16 v17, v21

    .line 69
    .local v17, "methods":[Lgnu/expr/PrimProcedure;
    move-object/from16 v21, v17

    if-eqz v21, :cond_d

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_d

    .line 71
    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 72
    move-object/from16 v21, v16

    const/16 v22, 0x53

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 74
    :cond_d
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    sget-object v23, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v21

    .line 75
    .local v18, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v18

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    .line 76
    move-object/from16 v21, v3

    move-object/from16 v22, v18

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 79
    .end local v17    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v18    # "aexp":Lgnu/expr/ApplyExp;
    :cond_e
    move-object/from16 v21, v14

    if-eqz v21, :cond_f

    .line 91
    :cond_f
    move-object/from16 v21, v10

    sget-object v22, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v21

    if-nez v21, :cond_10

    move-object/from16 v21, v10

    sget-object v22, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 96
    :cond_10
    move-object/from16 v21, v2

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 98
    :cond_11
    move-object/from16 v21, v10

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 100
    move-object/from16 v21, v10

    check-cast v21, Lgnu/bytecode/ObjectType;

    move-object/from16 v17, v21

    .line 101
    .local v17, "otype":Lgnu/bytecode/ObjectType;
    move-object/from16 v21, v17

    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x56

    move-object/from16 v24, v15

    move-object/from16 v25, v13

    invoke-static/range {v21 .. v25}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v21

    move-object/from16 v18, v21

    .line 104
    .local v18, "methods":[Lgnu/expr/PrimProcedure;
    move-object/from16 v21, v18

    if-eqz v21, :cond_12

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_12

    .line 106
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 107
    move-object/from16 v21, v16

    const/16 v22, 0x4d

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 110
    :cond_12
    move-object/from16 v21, v10

    sget-object v22, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 113
    move-object/from16 v21, v8

    if-eqz v21, :cond_13

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v21}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v19, v22

    .local v19, "val":Ljava/lang/Object;
    if-eqz v21, :cond_13

    .line 116
    move-object/from16 v21, v19

    check-cast v21, Lgnu/mapping/HasNamedParts;

    move-object/from16 v20, v21

    .line 117
    .local v20, "value":Lgnu/mapping/HasNamedParts;
    move-object/from16 v21, v20

    move-object/from16 v22, v9

    invoke-interface/range {v21 .. v22}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 119
    move-object/from16 v21, v20

    move-object/from16 v22, v9

    invoke-interface/range {v21 .. v22}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v19, v21

    .line 120
    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 123
    .end local v19    # "val":Ljava/lang/Object;
    .end local v20    # "value":Lgnu/mapping/HasNamedParts;
    :cond_13
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    move-object/from16 v24, v6

    const/16 v25, 0x0

    aget-object v24, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    move-object/from16 v24, v9

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v6, v21

    .line 124
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    sget-object v23, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    const-string/jumbo v24, "get"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 128
    :cond_14
    move-object/from16 v21, v17

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    invoke-static/range {v21 .. v23}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v21

    move-object/from16 v19, v21

    .line 129
    .local v19, "part":Lgnu/bytecode/Member;
    move-object/from16 v21, v19

    if-nez v21, :cond_15

    move-object/from16 v21, v9

    const-string/jumbo v22, "length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 134
    :cond_15
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    sget-object v23, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v20, v21

    .line 135
    .local v20, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v20

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    .line 136
    move-object/from16 v21, v3

    move-object/from16 v22, v20

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 140
    .end local v17    # "otype":Lgnu/bytecode/ObjectType;
    .end local v18    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v19    # "part":Lgnu/bytecode/Member;
    .end local v20    # "aexp":Lgnu/expr/ApplyExp;
    :cond_16
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 141
    move-object/from16 v21, v12

    const/16 v22, 0x77

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "no known slot \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\' in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 142
    :cond_17
    move-object/from16 v21, v2

    move-object/from16 v2, v21

    goto/16 :goto_0
.end method

.method public static validateNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 17

    .prologue
    .line 250
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 251
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 252
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v10, v3

    check-cast v10, Lgnu/kawa/functions/NamedPart;

    move-object v5, v10

    .line 253
    .local v5, "namedPart":Lgnu/kawa/functions/NamedPart;
    move-object v10, v5

    iget-char v10, v10, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v10, :pswitch_data_0

    .line 275
    move-object v10, v0

    move-object v0, v10

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 256
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :pswitch_0
    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 257
    .local v6, "fname":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v7, v10

    .line 258
    .local v7, "xargs":[Lgnu/expr/Expression;
    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v6

    invoke-static {v12}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v10, v11

    .line 260
    move-object v10, v4

    array-length v10, v10

    if-lez v10, :cond_0

    .line 262
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v4

    const/4 v13, 0x0

    aget-object v12, v12, v13

    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v12, v13}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v12

    aput-object v12, v10, v11

    .line 264
    sget-object v10, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object v8, v10

    .line 271
    .local v8, "slotProc":Lgnu/kawa/reflect/SlotGet;
    :goto_1
    new-instance v10, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v8

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v9, v10

    .line 272
    .local v9, "aexp":Lgnu/expr/ApplyExp;
    move-object v10, v9

    move-object v11, v0

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    .line 273
    move-object v10, v1

    move-object v11, v9

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 268
    .end local v8    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    .end local v9    # "aexp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v12}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v10, v11

    .line 269
    sget-object v10, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object v8, v10

    .restart local v8    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    goto :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static validateNamedPartSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 282
    move-object v8, v3

    check-cast v8, Lgnu/kawa/functions/NamedPartSetter;

    invoke-virtual {v8}, Lgnu/kawa/functions/NamedPartSetter;->getGetter()Lgnu/mapping/Procedure;

    move-result-object v8

    check-cast v8, Lgnu/kawa/functions/NamedPart;

    move-object v4, v8

    .line 283
    .local v4, "get":Lgnu/kawa/functions/NamedPart;
    move-object v8, v4

    iget-char v8, v8, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v9, 0x44

    if-ne v8, v9, :cond_2

    .line 285
    const/4 v8, 0x3

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v5, v8

    .line 286
    .local v5, "xargs":[Lgnu/expr/Expression;
    move-object v8, v5

    const/4 v9, 0x1

    move-object v10, v4

    iget-object v10, v10, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    aput-object v10, v8, v9

    .line 287
    move-object v8, v5

    const/4 v9, 0x2

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 289
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 291
    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v4

    iget-object v10, v10, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    aput-object v10, v8, v9

    .line 292
    sget-object v8, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object v6, v8

    .line 302
    .local v6, "slotProc":Lgnu/kawa/reflect/SlotSet;
    :goto_0
    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v7, v8

    .line 303
    .local v7, "aexp":Lgnu/expr/ApplyExp;
    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    .line 304
    move-object v8, v1

    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    .line 306
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "xargs":[Lgnu/expr/Expression;
    .end local v6    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    .end local v7    # "aexp":Lgnu/expr/ApplyExp;
    :goto_1
    return-object v0

    .line 294
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v5    # "xargs":[Lgnu/expr/Expression;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 296
    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    new-instance v11, Lgnu/expr/QuoteExp;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v4

    iget-object v13, v13, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v10, v11}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v10

    aput-object v10, v8, v9

    .line 298
    sget-object v8, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object v6, v8

    .restart local v6    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    goto :goto_0

    .line 301
    .end local v6    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    :cond_1
    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 306
    .end local v5    # "xargs":[Lgnu/expr/Expression;
    :cond_2
    move-object v8, v0

    move-object v0, v8

    goto :goto_1
.end method

.method public static validateSetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 356
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 357
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v7, v3

    check-cast v7, Lgnu/kawa/functions/SetNamedInstancePart;

    iget-object v7, v7, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    move-object v5, v7

    .line 358
    .local v5, "pname":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Lgnu/expr/QuoteExp;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-direct {v11, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x2

    move-object v10, v4

    const/4 v11, 0x1

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    move-object v6, v7

    .line 360
    .local v6, "xargs":[Lgnu/expr/Expression;
    move-object v7, v1

    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateSetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 19

    .prologue
    .line 148
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 149
    move-object v14, v0

    invoke-virtual {v14}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v14

    move-object v4, v14

    .line 150
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v14, v4

    array-length v14, v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    move-object v14, v4

    const/4 v15, 0x1

    aget-object v14, v14, v15

    instance-of v14, v14, Lgnu/expr/QuoteExp;

    if-nez v14, :cond_1

    .line 151
    :cond_0
    move-object v14, v0

    move-object v0, v14

    .line 179
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object v14, v4

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object v5, v14

    .line 153
    .local v5, "context":Lgnu/expr/Expression;
    move-object v14, v4

    const/4 v15, 0x1

    aget-object v14, v14, v15

    check-cast v14, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 154
    .local v6, "mname":Ljava/lang/String;
    move-object v14, v5

    invoke-virtual {v14}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    move-object v7, v14

    .line 155
    .local v7, "type":Lgnu/bytecode/Type;
    move-object v14, v1

    invoke-virtual {v14}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v14

    move-object v8, v14

    .line 156
    .local v8, "comp":Lgnu/expr/Compilation;
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    move-object v9, v14

    .line 157
    .local v9, "language":Lgnu/expr/Language;
    move-object v14, v9

    move-object v15, v5

    invoke-virtual {v14, v15}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v14

    move-object v10, v14

    .line 158
    .local v10, "typeval":Lgnu/bytecode/Type;
    move-object v14, v8

    if-nez v14, :cond_4

    const/4 v14, 0x0

    :goto_1
    move-object v11, v14

    .line 161
    .local v11, "caller":Lgnu/bytecode/ClassType;
    move-object v14, v0

    move-object v12, v14

    .line 162
    .local v12, "original":Lgnu/expr/ApplyExp;
    move-object v14, v10

    instance-of v14, v14, Lgnu/bytecode/ClassType;

    if-eqz v14, :cond_6

    .line 164
    new-instance v14, Lgnu/expr/ApplyExp;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    sget-object v16, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v14

    .line 176
    :cond_2
    :goto_2
    move-object v14, v0

    move-object v15, v12

    if-eq v14, v15, :cond_3

    .line 177
    move-object v14, v0

    move-object v15, v12

    invoke-virtual {v14, v15}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v14

    .line 178
    :cond_3
    move-object v14, v0

    sget-object v15, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v14, v15}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 179
    move-object v14, v0

    move-object v0, v14

    goto :goto_0

    .line 158
    .end local v11    # "caller":Lgnu/bytecode/ClassType;
    .end local v12    # "original":Lgnu/expr/ApplyExp;
    :cond_4
    move-object v14, v8

    iget-object v14, v14, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v14, :cond_5

    move-object v14, v8

    iget-object v14, v14, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    :cond_5
    move-object v14, v8

    iget-object v14, v14, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 166
    .restart local v11    # "caller":Lgnu/bytecode/ClassType;
    .restart local v12    # "original":Lgnu/expr/ApplyExp;
    :cond_6
    move-object v14, v7

    instance-of v14, v14, Lgnu/bytecode/ClassType;

    if-eqz v14, :cond_2

    .line 168
    move-object v14, v7

    check-cast v14, Lgnu/bytecode/ClassType;

    move-object v15, v6

    move-object/from16 v16, v11

    invoke-static/range {v14 .. v16}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v14

    move-object v13, v14

    .line 169
    .local v13, "part":Lgnu/bytecode/Member;
    move-object v14, v13

    if-eqz v14, :cond_2

    .line 173
    new-instance v14, Lgnu/expr/ApplyExp;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    sget-object v16, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v14

    goto :goto_2
.end method
