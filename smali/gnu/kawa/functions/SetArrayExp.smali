.class Lgnu/kawa/functions/SetArrayExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# static fields
.field public static final typeSetArray:Lgnu/bytecode/ClassType;


# instance fields
.field elementType:Lgnu/bytecode/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, "gnu.kawa.functions.SetArray"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V
    .locals 12

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetArrayExp;
    move-object v1, p1

    .local v1, "array":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "arrayType":Lgnu/bytecode/ArrayType;
    move-object v3, v0

    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    sget-object v10, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 178
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    .line 179
    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetArrayExp;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v3, p3

    .local v3, "required":Lgnu/bytecode/Type;
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 185
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 186
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v9, v5

    array-length v9, v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 188
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/SetArrayExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v6, v9

    .line 189
    .local v6, "array":Lgnu/expr/Expression;
    const/4 v9, 0x3

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v7, v9

    .line 190
    .local v7, "xargs":[Lgnu/expr/Expression;
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v6

    aput-object v11, v9, v10

    .line 191
    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v5

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 192
    move-object v9, v7

    const/4 v10, 0x2

    move-object v11, v5

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 193
    new-instance v9, Lgnu/kawa/reflect/ArraySet;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    invoke-direct {v10, v11}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    move-object v8, v9

    .line 194
    .local v8, "arrSetter":Lgnu/kawa/reflect/ArraySet;
    move-object v9, v2

    new-instance v10, Lgnu/expr/ApplyExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v8

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    .line 196
    .end local v0    # "this":Lgnu/kawa/functions/SetArrayExp;
    .end local v6    # "array":Lgnu/expr/Expression;
    .end local v7    # "xargs":[Lgnu/expr/Expression;
    .end local v8    # "arrSetter":Lgnu/kawa/reflect/ArraySet;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/SetArrayExp;
    :cond_0
    move-object v9, v1

    move-object v0, v9

    goto :goto_0
.end method
