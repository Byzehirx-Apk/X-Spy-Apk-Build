.class public Lgnu/expr/ConditionalTarget;
.super Lgnu/expr/Target;
.source "ConditionalTarget.java"


# instance fields
.field public ifFalse:Lgnu/bytecode/Label;

.field public ifTrue:Lgnu/bytecode/Label;

.field language:Lgnu/expr/Language;

.field public trueBranchComesFirst:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConditionalTarget;
    move-object v1, p1

    .local v1, "ifTrue":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "ifFalse":Lgnu/bytecode/Label;
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/expr/Target;-><init>()V

    .line 30
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 22
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 23
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    .line 24
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    .line 25
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConditionalTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v3, v5

    .line 37
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 38
    .local v4, "sig":C
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 50
    move-object v5, v0

    iget-boolean v5, v5, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v5, :cond_0

    .line 52
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V

    .line 53
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 60
    .line 71
    :goto_0
    return-void

    .line 41
    :sswitch_0
    move-object v5, v3

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 42
    .line 66
    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v5, :cond_2

    .line 67
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 70
    :goto_2
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 71
    goto :goto_0

    .line 44
    :sswitch_1
    move-object v5, v3

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    .line 45
    goto :goto_1

    .line 47
    :sswitch_2
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 48
    goto :goto_1

    .line 57
    :cond_0
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V

    .line 58
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 62
    :sswitch_3
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    if-nez v6, :cond_1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    .line 69
    :cond_2
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    goto :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x46 -> :sswitch_2
        0x4a -> :sswitch_0
        0x4c -> :sswitch_3
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public final emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConditionalTarget;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 78
    return-void

    .line 77
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConditionalTarget;
    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ConditionalTarget;
    return-object v0
.end method
