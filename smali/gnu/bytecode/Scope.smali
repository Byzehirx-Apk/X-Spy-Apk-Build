.class public Lgnu/bytecode/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# instance fields
.field end:Lgnu/bytecode/Label;

.field firstChild:Lgnu/bytecode/Scope;

.field lastChild:Lgnu/bytecode/Scope;

.field last_var:Lgnu/bytecode/Variable;

.field nextSibling:Lgnu/bytecode/Scope;

.field parent:Lgnu/bytecode/Scope;

.field preserved:Z

.field start:Lgnu/bytecode/Label;

.field vars:Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "start":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "end":Lgnu/bytecode/Label;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 28
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 29
    return-void
.end method

.method static equals([B[B)Z
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "name1":[B
    move-object v1, p1

    .local v1, "name2":[B
    move-object v3, v0

    array-length v3, v3

    move-object v4, v1

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 106
    const/4 v3, 0x0

    move v0, v3

    .line 112
    .end local v0    # "name1":[B
    :goto_0
    return v0

    .line 107
    .restart local v0    # "name1":[B
    :cond_0
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 108
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 109
    :cond_1
    move-object v3, v0

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_3

    .line 110
    move-object v3, v0

    move v4, v2

    aget-byte v3, v3, v4

    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 111
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 10

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    new-instance v5, Lgnu/bytecode/Variable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object v4, v5

    .line 52
    .local v4, "var":Lgnu/bytecode/Variable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 53
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/Scope;
    return-object v0
.end method

.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, p2

    .local v2, "var":Lgnu/bytecode/Variable;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 89
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 91
    :cond_0
    return-void
.end method

.method public addVariable(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    if-nez v2, :cond_0

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    .line 62
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 63
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 64
    return-void

    .line 61
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_0
.end method

.method public addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "prev":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "var":Lgnu/bytecode/Variable;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 71
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    iput-object v4, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 72
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    .line 79
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 80
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 81
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v4, v2

    if-ne v3, v4, :cond_2

    .line 82
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "cycle"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_1
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    iput-object v4, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 77
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 83
    :cond_2
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 84
    return-void
.end method

.method public allVars()Lgnu/bytecode/VarEnumerator;
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    new-instance v1, Lgnu/bytecode/VarEnumerator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Scope;
    return-object v0
.end method

.method public final firstVar()Lgnu/bytecode/Variable;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Scope;
    return-object v0
.end method

.method freeLocals(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v3, :cond_0

    .line 150
    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    move-object v2, v3

    .local v2, "var":Lgnu/bytecode/Variable;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 153
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->dead()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->freeLocal(Lgnu/bytecode/CodeAttr;)V

    .line 151
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v2, v3

    goto :goto_1

    .line 156
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    move-object v2, v3

    .local v2, "child":Lgnu/bytecode/Scope;
    :goto_2
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 158
    move-object v3, v2

    iget-boolean v3, v3, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v3, :cond_3

    .line 160
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/bytecode/Scope;->preserved:Z

    .line 161
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 156
    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    move-object v2, v3

    goto :goto_2

    .line 164
    :cond_4
    goto :goto_0
.end method

.method public getVariable(I)Lgnu/bytecode/Variable;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    move-object v2, v3

    .line 99
    .local v2, "var":Lgnu/bytecode/Variable;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_0

    .line 100
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v2, v3

    goto :goto_0

    .line 101
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/Scope;
    return-object v0
.end method

.method public linkChild(Lgnu/bytecode/Scope;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "parent":Lgnu/bytecode/Scope;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    .line 40
    move-object v2, v1

    if-nez v2, :cond_0

    .line 41
    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    if-nez v2, :cond_1

    .line 43
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    .line 46
    :goto_1
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    .line 47
    goto :goto_0

    .line 45
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    goto :goto_1
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    move-object v2, v3

    .local v2, "var":Lgnu/bytecode/Variable;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 138
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    move-object v3, v2

    move-object v0, v3

    .line 141
    .end local v0    # "this":Lgnu/bytecode/Scope;
    :goto_1
    return-object v0

    .line 137
    .restart local v0    # "this":Lgnu/bytecode/Scope;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v2, v3

    goto :goto_0

    .line 141
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public noteStartFunction(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 129
    return-void
.end method

.method public setStartPC(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Scope;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-nez v3, :cond_0

    .line 118
    move-object v3, v0

    new-instance v4, Lgnu/bytecode/Label;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/bytecode/Label;-><init>()V

    iput-object v4, v3, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 119
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    move v2, v3

    .line 120
    .local v2, "reachable":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 121
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 122
    return-void
.end method
