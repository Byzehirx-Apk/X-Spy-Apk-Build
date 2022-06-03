.class public Lkawa/standard/prim_method;
.super Lkawa/lang/Syntax;
.source "prim_method.java"


# static fields
.field public static final interface_method:Lkawa/standard/prim_method;

.field public static final op1:Lkawa/standard/prim_method;

.field private static pattern3:Lkawa/lang/Pattern;

.field private static pattern4:Lkawa/lang/Pattern;

.field public static final static_method:Lkawa/standard/prim_method;

.field public static final virtual_method:Lkawa/standard/prim_method;


# instance fields
.field op_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/prim_method;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0xb6

    invoke-direct {v1, v2}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    .line 11
    sget-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    const-string/jumbo v1, "primitive-virtual-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lkawa/standard/prim_method;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0xb8

    invoke-direct {v1, v2}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    .line 14
    sget-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    const-string/jumbo v1, "primitive-static-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/prim_method;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0xb9

    invoke-direct {v1, v2}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    .line 17
    sget-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    const-string/jumbo v1, "primitive-interface-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkawa/standard/prim_method;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lkawa/standard/prim_method;-><init>()V

    sput-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    .line 20
    sget-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    const-string/jumbo v1, "primitive-op1"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkawa/lang/ListPat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    .line 23
    new-instance v0, Lkawa/lang/ListPat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_method;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_method;
    move v1, p1

    .local v1, "opcode":I
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 31
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/standard/prim_method;->op_code:I

    .line 32
    return-void
.end method


# virtual methods
.method opcode()I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_method;
    move-object v1, v0

    iget v1, v1, Lkawa/standard/prim_method;->op_code:I

    move v0, v1

    .end local v0    # "this":Lkawa/standard/prim_method;
    return v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 21

    .prologue
    .line 40
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/prim_method;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    move-object v3, v13

    .line 41
    .local v3, "match":[Ljava/lang/Object;
    move-object v13, v0

    iget v13, v13, Lkawa/standard/prim_method;->op_code:I

    if-nez v13, :cond_1

    sget-object v13, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    move-object v14, v1

    move-object v15, v3

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 46
    :cond_0
    move-object v13, v3

    const/4 v14, 0x3

    aget-object v13, v13, v14

    instance-of v13, v13, Lgnu/lists/LList;

    if-nez v13, :cond_3

    .line 47
    move-object v13, v2

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "missing/invalid parameter list in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v15}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    .line 95
    .end local v0    # "this":Lkawa/standard/prim_method;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "this":Lkawa/standard/prim_method;
    :cond_1
    sget-object v13, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    move-object v14, v1

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 43
    :cond_2
    move-object v13, v2

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "wrong number of arguments to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v15}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "(opcode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Lkawa/standard/prim_method;->op_code:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 48
    :cond_3
    move-object v13, v3

    const/4 v14, 0x3

    aget-object v13, v13, v14

    check-cast v13, Lgnu/lists/LList;

    move-object v4, v13

    .line 50
    .local v4, "argp":Lgnu/lists/LList;
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/lists/LList;->size()I

    move-result v13

    move v5, v13

    .line 51
    .local v5, "narg":I
    move v13, v5

    new-array v13, v13, [Lgnu/bytecode/Type;

    move-object v6, v13

    .line 52
    .local v6, "args":[Lgnu/bytecode/Type;
    const/4 v13, 0x0

    move v7, v13

    .local v7, "i":I
    :goto_1
    move v13, v7

    move v14, v5

    if-ge v13, v14, :cond_4

    .line 54
    move-object v13, v4

    check-cast v13, Lgnu/lists/Pair;

    move-object v8, v13

    .line 55
    .local v8, "p":Lgnu/lists/Pair;
    move-object v13, v6

    move v14, v7

    move-object v15, v2

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v15

    aput-object v15, v13, v14

    .line 56
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/LList;

    move-object v4, v13

    .line 52
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 58
    .end local v8    # "p":Lgnu/lists/Pair;
    :cond_4
    move-object v13, v2

    new-instance v14, Lgnu/lists/Pair;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    const/16 v17, 0x2

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v7, v13

    .line 60
    .local v7, "rtype":Lgnu/bytecode/Type;
    move-object v13, v0

    iget v13, v13, Lkawa/standard/prim_method;->op_code:I

    if-nez v13, :cond_5

    .line 62
    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    check-cast v13, Ljava/lang/Number;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    move v9, v13

    .line 63
    .local v9, "opcode":I
    new-instance v13, Lgnu/expr/PrimProcedure;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move v15, v9

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v17}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v8, v13

    .line 95
    .end local v9    # "opcode":I
    .local v8, "proc":Lgnu/expr/PrimProcedure;
    :goto_2
    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v8

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v13

    goto/16 :goto_0

    .line 67
    .end local v8    # "proc":Lgnu/expr/PrimProcedure;
    :cond_5
    const/4 v13, 0x0

    move-object v9, v13

    .line 68
    .local v9, "cl":Lgnu/bytecode/ClassType;
    move-object v13, v2

    move-object v14, v1

    check-cast v14, Lgnu/lists/Pair;

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v10, v13

    .line 69
    .local v10, "ctype":Lgnu/bytecode/Type;
    move-object v13, v10

    if-eqz v13, :cond_6

    .line 70
    move-object v13, v10

    invoke-virtual {v13}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v10, v13

    .line 73
    :cond_6
    move-object v13, v10

    :try_start_0
    check-cast v13, Lgnu/bytecode/ClassType;

    move-object v9, v13

    .line 74
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 87
    .line 89
    :goto_3
    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_7

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    check-cast v13, Lgnu/lists/Pair;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v11, v14

    .local v11, "p":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "quote"

    if-ne v13, v14, :cond_7

    .line 91
    move-object v13, v3

    const/4 v14, 0x1

    move-object v15, v11

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    .line 92
    .end local v11    # "p":Lgnu/lists/Pair;
    :cond_7
    new-instance v13, Lgnu/expr/PrimProcedure;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v0

    iget v15, v15, Lkawa/standard/prim_method;->op_code:I

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v8, v13

    .restart local v8    # "proc":Lgnu/expr/PrimProcedure;
    goto :goto_2

    .line 76
    .end local v8    # "proc":Lgnu/expr/PrimProcedure;
    :catch_0
    move-exception v13

    move-object v11, v13

    .line 79
    .local v11, "ex":Ljava/lang/Exception;
    move-object v13, v9

    if-nez v13, :cond_8

    .line 80
    const/16 v13, 0x65

    move v12, v13

    .line 86
    .local v12, "code":C
    :goto_4
    move-object v13, v2

    move v14, v12

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unknown class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 83
    .end local v12    # "code":C
    :cond_8
    const/16 v13, 0x77

    move v12, v13

    .line 84
    .restart local v12    # "code":C
    move-object v13, v9

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    goto :goto_4
.end method
