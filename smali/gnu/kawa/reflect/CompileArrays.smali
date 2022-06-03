.class public Lgnu/kawa/reflect/CompileArrays;
.super Ljava/lang/Object;
.source "CompileArrays.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field public code:C

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;C)V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/CompileArrays;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "code":C
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .line 15
    move-object v3, v0

    move v4, v2

    iput-char v4, v3, Lgnu/kawa/reflect/CompileArrays;->code:C

    .line 16
    return-void
.end method

.method public static compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/reflect/ArrayGet;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    move-object v4, v7

    .line 61
    .local v4, "element_type":Lgnu/bytecode/Type;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 62
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v7, v5

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    move-object v9, v4

    invoke-static {v9}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 63
    move-object v7, v5

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    sget-object v9, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v6, v7

    .line 65
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 66
    move-object v7, v3

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 67
    return-void
.end method

.method public static compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/reflect/ArrayLength;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    move-object v4, v6

    .line 95
    .local v4, "element_type":Lgnu/bytecode/Type;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    move-object v8, v4

    invoke-static {v8}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 96
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v5, v6

    .line 97
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 98
    move-object v6, v3

    move-object v7, v2

    sget-object v8, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 99
    return-void
.end method

.method public static compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/reflect/ArrayNew;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    move-object v4, v6

    .line 85
    .local v4, "element_type":Lgnu/bytecode/Type;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 86
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v5, v6

    .line 87
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 88
    move-object v6, v3

    move-object v7, v2

    move-object v8, v4

    invoke-static {v8}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void
.end method

.method public static compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/reflect/ArraySet;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    move-object v4, v6

    .line 73
    .local v4, "element_type":Lgnu/bytecode/Type;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 74
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v6, v5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    move-object v8, v4

    invoke-static {v8}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 75
    move-object v6, v5

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 76
    move-object v6, v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 77
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 78
    move-object v6, v2

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 79
    return-void
.end method

.method public static getForArrayGet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/reflect/CompileArrays;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/16 v4, 0x47

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static getForArrayLength(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/reflect/CompileArrays;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/16 v4, 0x4c

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static getForArrayNew(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/reflect/CompileArrays;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/16 v4, 0x4e

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static getForArraySet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/reflect/CompileArrays;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/16 v4, 0x53

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static validateArrayGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 121
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Lgnu/kawa/reflect/ArrayGet;

    iget-object v5, v5, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 122
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateArrayLength(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 113
    move-object v4, v0

    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 114
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateArrayNew(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 105
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Lgnu/kawa/reflect/ArrayNew;

    iget-object v5, v5, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-static {v5}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 106
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateArraySet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 129
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 130
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/CompileArrays;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v0

    iget-char v4, v4, Lgnu/kawa/reflect/CompileArrays;->code:C

    sparse-switch v4, :sswitch_data_0

    .line 52
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v4, Lgnu/kawa/reflect/ArrayLength;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/CompileArrays;->compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 53
    :goto_0
    return-void

    .line 43
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v4, Lgnu/kawa/reflect/ArrayNew;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/CompileArrays;->compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    goto :goto_0

    .line 46
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v4, Lgnu/kawa/reflect/ArrayGet;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/CompileArrays;->compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 47
    goto :goto_0

    .line 49
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v4, Lgnu/kawa/reflect/ArraySet;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/CompileArrays;->compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 50
    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method
