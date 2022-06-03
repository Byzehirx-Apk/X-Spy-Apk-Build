.class public Lgnu/expr/IgnoreTarget;
.super Lgnu/expr/Target;
.source "IgnoreTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IgnoreTarget;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Target;-><init>()V

    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IgnoreTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IgnoreTarget;
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/IgnoreTarget;
    return-object v0
.end method
