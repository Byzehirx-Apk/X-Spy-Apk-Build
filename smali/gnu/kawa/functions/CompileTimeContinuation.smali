.class Lgnu/kawa/functions/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 16

    .prologue
    .line 102
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v4, v10

    .line 103
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v5, v10

    .line 104
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v10, v5

    array-length v10, v10

    move v6, v10

    .line 105
    .local v6, "nargs":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v10, v10, Lgnu/expr/IgnoreTarget;

    if-nez v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v10, v10, Lgnu/expr/ConsumerTarget;

    if-eqz v10, :cond_2

    :cond_0
    const/4 v10, 0x1

    :goto_0
    move v7, v10

    .line 107
    .local v7, "noStack":Z
    move v10, v7

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    move-object v8, v10

    .line 108
    .local v8, "typeNeeded":Lgnu/bytecode/Type;
    move v10, v7

    if-nez v10, :cond_1

    move v10, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 110
    :cond_1
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_2
    move v10, v9

    move v11, v6

    if-ge v10, v11, :cond_4

    .line 111
    move-object v10, v5

    move v11, v9

    aget-object v10, v10, v11

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 105
    .end local v7    # "noStack":Z
    .end local v8    # "typeNeeded":Lgnu/bytecode/Type;
    .end local v9    # "i":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 107
    .restart local v7    # "noStack":Z
    :cond_3
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    goto :goto_1

    .line 110
    .line 118
    .restart local v8    # "typeNeeded":Lgnu/bytecode/Type;
    :cond_4
    :goto_3
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v10}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 119
    return-void

    .line 115
    :cond_5
    sget-object v10, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    move-object v9, v10

    .line 116
    .local v9, "app":Lgnu/kawa/functions/AppendValues;
    move-object v10, v9

    new-instance v11, Lgnu/expr/ApplyExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v9

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v10, v11, v12, v13}, Lgnu/kawa/functions/AppendValues;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_3
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/CompileTimeContinuation;
    return-object v0
.end method
