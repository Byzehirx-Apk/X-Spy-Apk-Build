.class public Lgnu/kawa/functions/CompilationHelpers;
.super Ljava/lang/Object;
.source "CompilationHelpers.java"


# static fields
.field public static final setterDecl:Lgnu/expr/Declaration;

.field static final setterField:Lgnu/bytecode/Field;

.field static final setterType:Lgnu/bytecode/ClassType;

.field static final typeList:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const-string/jumbo v0, "java.util.List"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    .line 103
    const-string/jumbo v0, "gnu.kawa.functions.Setter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    .line 104
    sget-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    .line 105
    new-instance v0, Lgnu/expr/Declaration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "setter"

    sget-object v3, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    invoke-direct {v1, v2, v3}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 106
    sget-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    new-instance v1, Lgnu/expr/QuoteExp;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sget-object v3, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompilationHelpers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static nonNumeric(Lgnu/expr/Expression;)Z
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1

    .line 23
    move-object v2, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 24
    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/text/Char;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 27
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_1
    return v0

    .line 24
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 27
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public static validateApplyToArgs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 20

    .prologue
    .line 41
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "applyToArgs":Lgnu/mapping/Procedure;
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v13

    move-object v4, v13

    .line 42
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v13, v4

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v5, v13

    .line 43
    .local v5, "nargs":I
    move v13, v5

    if-ltz v13, :cond_8

    .line 45
    move-object v13, v4

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object v6, v13

    .line 46
    .local v6, "proc":Lgnu/expr/Expression;
    move-object v13, v6

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 48
    move-object v13, v6

    instance-of v13, v13, Lgnu/expr/LambdaExp;

    if-eqz v13, :cond_0

    .line 50
    move v13, v5

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v7, v13

    .line 51
    .local v7, "rargs":[Lgnu/expr/Expression;
    move-object v13, v4

    const/4 v14, 0x1

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v5

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    move-object v13, v1

    new-instance v14, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v17}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v15, v0

    invoke-virtual {v14, v15}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    .line 100
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v6    # "proc":Lgnu/expr/Expression;
    .end local v7    # "rargs":[Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v6    # "proc":Lgnu/expr/Expression;
    :cond_0
    move-object v13, v1

    move-object v14, v6

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v6, v13

    .line 55
    move-object v13, v4

    const/4 v14, 0x0

    move-object v15, v6

    aput-object v15, v13, v14

    .line 57
    :cond_1
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    invoke-virtual {v13}, Lgnu/bytecode/Type;->getRealType()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v7, v13

    .line 58
    .local v7, "ptype":Lgnu/bytecode/Type;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v13

    move-object v8, v13

    .line 59
    .local v8, "comp":Lgnu/expr/Compilation;
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    move-object v9, v13

    .line 60
    .local v9, "language":Lgnu/expr/Language;
    move-object v13, v7

    sget-object v14, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 62
    move v13, v5

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v10, v13

    .line 63
    .local v10, "rargs":[Lgnu/expr/Expression;
    move-object v13, v4

    const/4 v14, 0x1

    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v5

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v11, v13

    .line 65
    .local v11, "nexp":Lgnu/expr/ApplyExp;
    move-object v13, v11

    move-object v14, v0

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    .line 66
    move-object v13, v6

    move-object v14, v11

    move-object v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 70
    .end local v10    # "rargs":[Lgnu/expr/Expression;
    .end local v11    # "nexp":Lgnu/expr/ApplyExp;
    :cond_2
    const/4 v13, 0x0

    move-object v11, v13

    .line 71
    .local v11, "result":Lgnu/expr/ApplyExp;
    move-object v13, v7

    move-object v14, v8

    invoke-static {v13, v14}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v13

    if-gez v13, :cond_4

    .line 72
    .line 93
    :cond_3
    :goto_1
    move-object v13, v11

    if-eqz v13, :cond_8

    .line 95
    move-object v13, v11

    move-object v14, v0

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    .line 96
    move-object v13, v1

    move-object v14, v11

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 73
    :cond_4
    move-object v13, v7

    sget-object v14, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object v13, v9

    move-object v14, v6

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 76
    :cond_5
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    sget-object v15, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v11, v13

    goto :goto_1

    .line 78
    :cond_6
    move-object v13, v7

    instance-of v13, v13, Lgnu/bytecode/ArrayType;

    if-eqz v13, :cond_7

    .line 80
    move-object v13, v7

    check-cast v13, Lgnu/bytecode/ArrayType;

    invoke-virtual {v13}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v12, v13

    .line 81
    .local v12, "elementType":Lgnu/bytecode/Type;
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lgnu/kawa/reflect/ArrayGet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Lgnu/kawa/reflect/ArrayGet;-><init>(Lgnu/bytecode/Type;)V

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v11, v13

    .line 82
    goto :goto_1

    .line 83
    .end local v12    # "elementType":Lgnu/bytecode/Type;
    :cond_7
    move-object v13, v7

    instance-of v13, v13, Lgnu/bytecode/ClassType;

    if-eqz v13, :cond_3

    move-object v13, v7

    check-cast v13, Lgnu/bytecode/ClassType;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v10, v14

    .local v10, "ctype":Lgnu/bytecode/ClassType;
    sget-object v14, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v5

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 90
    move-object v13, v10

    const-string/jumbo v14, "get"

    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/bytecode/Type;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v13

    move-object v12, v13

    .line 91
    .local v12, "get":Lgnu/bytecode/Method;
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v12

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v11, v13

    goto/16 :goto_1

    .line 99
    .end local v6    # "proc":Lgnu/expr/Expression;
    .end local v7    # "ptype":Lgnu/bytecode/Type;
    .end local v8    # "comp":Lgnu/expr/Compilation;
    .end local v9    # "language":Lgnu/expr/Language;
    .end local v10    # "ctype":Lgnu/bytecode/ClassType;
    .end local v11    # "result":Lgnu/expr/ApplyExp;
    .end local v12    # "get":Lgnu/bytecode/Method;
    :cond_8
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 100
    move-object v13, v0

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public static validateIsEqv(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 161
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 162
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v5, v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_0
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    check-cast v7, Lgnu/kawa/functions/IsEqv;

    iget-object v7, v7, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v5

    .line 164
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object v5, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static validateSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 111
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 112
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v11

    move-object v4, v11

    .line 113
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v11, v4

    array-length v11, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 115
    move-object v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v5, v11

    .line 116
    .local v5, "arg":Lgnu/expr/Expression;
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v6, v11

    .line 118
    .local v6, "argType":Lgnu/bytecode/Type;
    move-object v11, v6

    instance-of v11, v11, Lgnu/bytecode/ArrayType;

    if-eqz v11, :cond_0

    .line 120
    new-instance v11, Lgnu/kawa/functions/SetArrayExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v5

    move-object v14, v6

    check-cast v14, Lgnu/bytecode/ArrayType;

    invoke-direct {v12, v13, v14}, Lgnu/kawa/functions/SetArrayExp;-><init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V

    move-object v0, v11

    .line 154
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "arg":Lgnu/expr/Expression;
    .end local v6    # "argType":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v5    # "arg":Lgnu/expr/Expression;
    .restart local v6    # "argType":Lgnu/bytecode/Type;
    :cond_0
    move-object v11, v6

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_2

    move-object v11, v6

    check-cast v11, Lgnu/bytecode/ClassType;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v7, v12

    .local v7, "ctype":Lgnu/bytecode/ClassType;
    sget-object v12, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    move-object v11, v0

    instance-of v11, v11, Lgnu/kawa/functions/SetListExp;

    if-eqz v11, :cond_1

    .line 126
    move-object v11, v0

    move-object v0, v11

    goto :goto_0

    .line 128
    :cond_1
    new-instance v11, Lgnu/kawa/functions/SetListExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    move-object v14, v4

    invoke-direct {v12, v13, v14}, Lgnu/kawa/functions/SetListExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v11

    goto :goto_0

    .line 130
    .end local v7    # "ctype":Lgnu/bytecode/ClassType;
    :cond_2
    move-object v11, v5

    instance-of v11, v11, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_3

    .line 132
    move-object v11, v5

    check-cast v11, Lgnu/expr/ReferenceExp;

    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 133
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v11, v8

    if-eqz v11, :cond_3

    .line 134
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    move-object v5, v11

    .line 136
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object v11, v5

    instance-of v11, v11, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_5

    .line 138
    move-object v11, v5

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 139
    .local v8, "value":Ljava/lang/Object;
    move-object v11, v8

    instance-of v11, v11, Lgnu/mapping/Procedure;

    if-eqz v11, :cond_5

    .line 141
    move-object v11, v8

    check-cast v11, Lgnu/mapping/Procedure;

    invoke-virtual {v11}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v11

    move-object v9, v11

    .line 142
    .local v9, "setter":Lgnu/mapping/Procedure;
    move-object v11, v9

    instance-of v11, v11, Lgnu/mapping/Procedure;

    if-eqz v11, :cond_5

    .line 144
    move-object v11, v9

    instance-of v11, v11, Ljava/io/Externalizable;

    if-eqz v11, :cond_4

    .line 145
    new-instance v11, Lgnu/expr/QuoteExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v9

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v11

    goto :goto_0

    .line 146
    :cond_4
    move-object v11, v9

    check-cast v11, Lgnu/mapping/Procedure;

    invoke-static {v11}, Lgnu/expr/Declaration;->getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v10, v11

    .line 148
    .local v10, "decl":Lgnu/expr/Declaration;
    move-object v11, v10

    if-eqz v11, :cond_5

    .line 149
    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v10

    invoke-direct {v12, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v0, v11

    goto/16 :goto_0

    .line 154
    .end local v5    # "arg":Lgnu/expr/Expression;
    .end local v6    # "argType":Lgnu/bytecode/Type;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "setter":Lgnu/mapping/Procedure;
    .end local v10    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object v11, v0

    move-object v0, v11

    goto/16 :goto_0
.end method
