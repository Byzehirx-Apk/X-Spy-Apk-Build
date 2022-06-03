.class public Lgnu/expr/CatchClause;
.super Lgnu/expr/LetExp;
.source "CatchClause.java"


# instance fields
.field next:Lgnu/expr/CatchClause;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lgnu/expr/LambdaExp;)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/CatchClause;-><init>()V

    .line 28
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 29
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 30
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/CatchClause;->add(Lgnu/expr/Declaration;)V

    .line 31
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/CatchClause;-><init>()V

    .line 21
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/CatchClause;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 22
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v3, v6

    .line 51
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 52
    .local v4, "catchDecl":Lgnu/expr/Declaration;
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v5, v6

    .line 53
    .local v5, "catchVar":Lgnu/bytecode/Variable;
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/CatchClause;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 54
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 55
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 56
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 57
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v6

    .line 58
    return-void
.end method

.method protected evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v2

    iget-object v3, v3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/CatchClause;
    return-object v0
.end method

.method public final getBody()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/CatchClause;
    return-object v0
.end method

.method public final getNext()Lgnu/expr/CatchClause;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/CatchClause;
    return-object v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/CatchClause;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 68
    move-object v2, v1

    const-string/jumbo v3, "(Catch"

    const-string/jumbo v4, ")"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/CatchClause;->decls:Lgnu/expr/Declaration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 71
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 73
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final setBody(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public final setNext(Lgnu/expr/CatchClause;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "next":Lgnu/expr/CatchClause;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    return-void
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
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CatchClause;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    .line 63
    return-void
.end method
