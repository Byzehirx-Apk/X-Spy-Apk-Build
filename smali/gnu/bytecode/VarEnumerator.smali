.class public Lgnu/bytecode/VarEnumerator;
.super Ljava/lang/Object;
.source "VarEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field currentScope:Lgnu/bytecode/Scope;

.field next:Lgnu/bytecode/Variable;

.field topScope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Scope;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    move-object v1, p1

    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    .line 20
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/VarEnumerator;->reset()V

    .line 21
    return-void
.end method

.method private fixup()V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v1, :cond_3

    .line 38
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v1, v1, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v2, v2, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 50
    :goto_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v2}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 46
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v2, v2, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 42
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v1, v1, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    if-nez v1, :cond_2

    .line 44
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-ne v1, v2, :cond_0

    .line 45
    .line 52
    :goto_2
    return-void

    .line 48
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v2, v2, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_1

    .line 52
    :cond_3
    goto :goto_2
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/VarEnumerator;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/VarEnumerator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v2

    move-object v1, v2

    .line 75
    .local v1, "result":Lgnu/bytecode/Variable;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "VarEnumerator"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/VarEnumerator;
    return-object v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    move-object v1, v2

    .line 58
    .local v1, "result":Lgnu/bytecode/Variable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v2, :cond_0

    .line 62
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 64
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/VarEnumerator;
    return-object v0
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/VarEnumerator;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 26
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-eqz v1, :cond_0

    .line 28
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v2}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 29
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v1, :cond_0

    .line 30
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 32
    :cond_0
    return-void
.end method
