.class public Lgnu/bytecode/LocalVarsAttr;
.super Lgnu/bytecode/Attribute;
.source "LocalVarsAttr.java"


# instance fields
.field public current_scope:Lgnu/bytecode/Scope;

.field private method:Lgnu/bytecode/Method;

.field parameter_scope:Lgnu/bytecode/Scope;

.field used:[Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    const-string/jumbo v3, "LocalVariableTable"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 24
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Method;

    iput-object v3, v2, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 26
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v3, v0

    const-string/jumbo v4, "LocalVariableTable"

    invoke-direct {v3, v4}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 33
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v2, v3

    .line 34
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 35
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 36
    return-void
.end method


# virtual methods
.method public allVars()Lgnu/bytecode/VarEnumerator;
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    new-instance v1, Lgnu/bytecode/VarEnumerator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-direct {v2, v3}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    return-object v0
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 108
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v4

    move-object v2, v4

    .line 110
    .local v2, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_0
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    .local v3, "var":Lgnu/bytecode/Variable;
    if-eqz v4, :cond_2

    .line 112
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 114
    move-object v4, v3

    iget v4, v4, Lgnu/bytecode/Variable;->name_index:I

    if-nez v4, :cond_1

    .line 115
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v5

    iget v5, v5, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v5, v4, Lgnu/bytecode/Variable;->name_index:I

    .line 116
    :cond_1
    move-object v4, v3

    iget v4, v4, Lgnu/bytecode/Variable;->signature_index:I

    if-nez v4, :cond_0

    .line 117
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v5

    iget v5, v5, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v5, v4, Lgnu/bytecode/Variable;->signature_index:I

    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v4, v5}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 48
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v2, v4

    .line 49
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v4

    move-object v3, v4

    .local v3, "var":Lgnu/bytecode/Variable;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 51
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->isAssigned()Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 49
    :cond_0
    :goto_1
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 55
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move-object v5, v3

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    .line 56
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move-object v5, v3

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    move-object v6, v3

    aput-object v6, v4, v5

    goto :goto_1

    .line 57
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move-object v5, v3

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    aget-object v4, v4, v5

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 58
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inconsistent local variable assignments for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " != "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->offset:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_3
    return-void
.end method

.method public final getCount()I
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    const/4 v4, 0x0

    move v1, v4

    .line 89
    .local v1, "local_variable_count":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v4

    move-object v2, v4

    .line 91
    .local v2, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_0
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    .local v3, "var":Lgnu/bytecode/Variable;
    if-eqz v4, :cond_1

    .line 93
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    return v0
.end method

.method public final getLength()I
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    const/4 v1, 0x2

    const/16 v2, 0xa

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v3

    move-object v1, v3

    .line 78
    .local v1, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "var":Lgnu/bytecode/Variable;
    if-eqz v3, :cond_1

    .line 80
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 81
    const/4 v3, 0x0

    move v0, v3

    .line 83
    .end local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/bytecode/LocalVarsAttr;
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public preserveVariablesUpto(Lgnu/bytecode/Scope;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v2, v3

    .local v2, "cur":Lgnu/bytecode/Scope;
    :goto_0
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 71
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/bytecode/Scope;->preserved:Z

    .line 70
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object v2, v3

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 11

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v7

    move-object v2, v7

    .line 148
    .local v2, "vars":Lgnu/bytecode/VarEnumerator;
    move-object v7, v1

    const-string/jumbo v8, "Attribute \""

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/LocalVarsAttr;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    move-object v7, v1

    const-string/jumbo v8, "\", length:"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/LocalVarsAttr;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 152
    move-object v7, v1

    const-string/jumbo v8, ", count: "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 153
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 156
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    .local v3, "var":Lgnu/bytecode/Variable;
    if-eqz v7, :cond_3

    .line 158
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 160
    move-object v7, v1

    const-string/jumbo v8, "  slot#"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 162
    move-object v7, v1

    const-string/jumbo v8, ": name: "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 163
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 165
    move-object v7, v1

    const-string/jumbo v8, ", type: "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 167
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 168
    move-object v7, v1

    const-string/jumbo v8, " (pc: "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 169
    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    move-object v4, v7

    .line 171
    .local v4, "scope":Lgnu/bytecode/Scope;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-eqz v7, :cond_1

    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-eqz v7, :cond_1

    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v7, v7, Lgnu/bytecode/Label;->position:I

    move v10, v7

    move v7, v10

    move v8, v10

    move v5, v8

    .local v5, "start_pc":I
    if-ltz v7, :cond_1

    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v7, v7, Lgnu/bytecode/Label;->position:I

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    .local v6, "end_pc":I
    if-gez v7, :cond_2

    .line 174
    .end local v5    # "start_pc":I
    .end local v6    # "end_pc":I
    :cond_1
    move-object v7, v1

    const-string/jumbo v8, "unknown"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 181
    :goto_1
    move-object v7, v1

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 182
    goto/16 :goto_0

    .line 177
    .restart local v5    # "start_pc":I
    .restart local v6    # "end_pc":I
    :cond_2
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 178
    move-object v7, v1

    const-string/jumbo v8, " length: "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 179
    move-object v7, v1

    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_1

    .line 184
    .end local v4    # "scope":Lgnu/bytecode/Scope;
    .end local v5    # "start_pc":I
    .end local v6    # "end_pc":I
    :cond_3
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LocalVarsAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v7

    move-object v2, v7

    .line 127
    .local v2, "vars":Lgnu/bytecode/VarEnumerator;
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    .local v3, "var":Lgnu/bytecode/Variable;
    if-eqz v7, :cond_1

    .line 131
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    move-object v4, v7

    .line 134
    .local v4, "scope":Lgnu/bytecode/Scope;
    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v7, v7, Lgnu/bytecode/Label;->position:I

    move v5, v7

    .line 135
    .local v5, "start_pc":I
    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v7, v7, Lgnu/bytecode/Label;->position:I

    move v6, v7

    .line 136
    .local v6, "end_pc":I
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    move-object v7, v1

    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 139
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 140
    move-object v7, v1

    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    goto :goto_0

    .line 143
    .end local v4    # "scope":Lgnu/bytecode/Scope;
    .end local v5    # "start_pc":I
    .end local v6    # "end_pc":I
    :cond_1
    return-void
.end method
