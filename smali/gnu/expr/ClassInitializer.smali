.class public Lgnu/expr/ClassInitializer;
.super Lgnu/expr/Initializer;
.source "ClassInitializer.java"


# instance fields
.field cexp:Lgnu/expr/ClassExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassInitializer;
    move-object v1, p1

    .local v1, "cexp":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/expr/Initializer;-><init>()V

    .line 15
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/ClassExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    .line 16
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 17
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    .line 18
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v5, v4, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 21
    move-object v4, v2

    move-object v5, v0

    iput-object v5, v4, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    move-object v3, v4

    .line 26
    .local v3, "heapLambda":Lgnu/expr/LambdaExp;
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v5, v4, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 27
    move-object v4, v3

    move-object v5, v0

    iput-object v5, v4, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassInitializer;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 34
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 36
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    move-object v4, v1

    sget-object v5, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v5}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 37
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method
