.class public Lgnu/expr/ExitExp;
.super Lgnu/expr/Expression;
.source "ExitExp.java"


# instance fields
.field block:Lgnu/expr/BlockExp;

.field result:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/BlockExp;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "block":Lgnu/expr/BlockExp;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Expression;-><init>()V

    .line 26
    move-object v2, v0

    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v3, v2, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 27
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 28
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "result":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "block":Lgnu/expr/BlockExp;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 20
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 21
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    new-instance v2, Lgnu/expr/BlockExitException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/expr/BlockExitException;-><init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V

    throw v2
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v3, v5

    .line 40
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-nez v5, :cond_0

    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :goto_0
    move-object v4, v5

    .line 41
    .local v4, "res":Lgnu/expr/Expression;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v7, v7, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v5, v5, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v5}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 43
    return-void

    .line 40
    .end local v4    # "res":Lgnu/expr/Expression;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/ExitExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 48
    .local v2, "res":Lgnu/expr/Expression;
    move-object v5, v2

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v5, :cond_0

    .line 49
    const/4 v5, 0x0

    move-object v0, v5

    .line 54
    .end local v0    # "this":Lgnu/expr/ExitExp;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "this":Lgnu/expr/ExitExp;
    :cond_0
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    invoke-virtual {v5, v6}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 51
    .local v3, "b":Ljava/lang/Object;
    new-instance v5, Lgnu/expr/ExitExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    :goto_1
    invoke-direct {v6, v7, v8}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V

    move-object v4, v5

    .line 53
    .local v4, "copy":Lgnu/expr/ExitExp;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ExitExp;->getFlags()I

    move-result v6

    iput v6, v5, Lgnu/expr/ExitExp;->flags:I

    .line 54
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 51
    .end local v4    # "copy":Lgnu/expr/ExitExp;
    :cond_1
    move-object v8, v3

    check-cast v8, Lgnu/expr/BlockExp;

    goto :goto_1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    sget-object v1, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExitExp;
    return-object v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ExitExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(Exit"

    const/4 v4, 0x0

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v2, v2, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-nez v2, :cond_2

    .line 72
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v2, :cond_1

    .line 77
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 80
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 81
    return-void

    .line 74
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v3, v3, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExitExp;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExitExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 65
    return-void
.end method
