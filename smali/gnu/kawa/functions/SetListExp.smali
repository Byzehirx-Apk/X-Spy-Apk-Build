.class Lgnu/kawa/functions/SetListExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetListExp;
    move-object v1, p1

    .local v1, "func":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 205
    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetListExp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v3, p3

    .local v3, "required":Lgnu/bytecode/Type;
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 211
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    move-object v5, v8

    .line 212
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 214
    const/4 v8, 0x4

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v6, v8

    .line 215
    .local v6, "xargs":[Lgnu/expr/Expression;
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/functions/SetListExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 216
    move-object v8, v6

    const/4 v9, 0x1

    const-string/jumbo v10, "set"

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    aput-object v10, v8, v9

    .line 217
    move-object v8, v6

    const/4 v9, 0x2

    move-object v10, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v10, v11}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v8, v9

    .line 218
    move-object v8, v6

    const/4 v9, 0x3

    move-object v10, v5

    const/4 v11, 0x1

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 219
    move-object v8, v2

    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    sget-object v11, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v7, v8

    .line 221
    .local v7, "set":Lgnu/expr/Expression;
    move-object v8, v7

    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v8, v9}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    .line 223
    .end local v0    # "this":Lgnu/kawa/functions/SetListExp;
    .end local v6    # "xargs":[Lgnu/expr/Expression;
    .end local v7    # "set":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/SetListExp;
    :cond_0
    move-object v8, v1

    move-object v0, v8

    goto :goto_0
.end method
