.class public Lgnu/expr/ThisExp;
.super Lgnu/expr/ReferenceExp;
.source "ThisExp.java"


# static fields
.field static EVAL_TO_CONTEXT:I

.field public static final THIS_NAME:Ljava/lang/String;


# instance fields
.field context:Lgnu/expr/ScopeExp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "$this$"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    sput v0, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, v0

    sget-object v2, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v2, v0

    new-instance v3, Lgnu/expr/Declaration;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-direct {v2, v3}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "binding":Lgnu/expr/Declaration;
    move-object v2, v0

    sget-object v3, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "context":Lgnu/expr/ScopeExp;
    move-object v2, v0

    sget-object v3, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v2, v3}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    .line 48
    return-void
.end method

.method public static makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "context":Lgnu/expr/ScopeExp;
    new-instance v2, Lgnu/expr/ThisExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/ScopeExp;)V

    move-object v1, v2

    .line 63
    .local v1, "exp":Lgnu/expr/ThisExp;
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/ThisExp;->flags:I

    sget v4, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    or-int/2addr v3, v4

    iput v3, v2, Lgnu/expr/ThisExp;->flags:I

    .line 64
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "context":Lgnu/expr/ScopeExp;
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ReferenceExp;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/IgnoreTarget;

    if-eqz v4, :cond_0

    .line 70
    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 75
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 79
    :goto_1
    move-object v4, v2

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ThisExp;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 80
    .line 85
    .end local v3    # "code":Lgnu/bytecode/CodeAttr;
    :goto_2
    goto :goto_0

    .line 78
    .restart local v3    # "code":Lgnu/bytecode/CodeAttr;
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto :goto_1

    .line 83
    .end local v3    # "code":Lgnu/bytecode/CodeAttr;
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2
.end method

.method public getContextScope()Lgnu/expr/ScopeExp;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ThisExp;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .line 98
    .end local v0    # "this":Lgnu/expr/ThisExp;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "this":Lgnu/expr/ThisExp;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v1, Lgnu/expr/ClassExp;

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_2

    .line 97
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 98
    :cond_2
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_0
.end method

.method public final isForContext()Z
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/ThisExp;->flags:I

    sget v2, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ThisExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ThisExp;
    :cond_0
    const/4 v1, 0x0

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
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ThisExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ThisExp;
    return-object v0
.end method
