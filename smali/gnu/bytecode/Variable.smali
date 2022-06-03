.class public Lgnu/bytecode/Variable;
.super Lgnu/bytecode/Location;
.source "Variable.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final LIVE_FLAG:I = 0x4

.field private static final PARAMETER_FLAG:I = 0x2

.field private static final SIMPLE_FLAG:I = 0x1

.field static final UNASSIGNED:I = -0x1


# instance fields
.field private flags:I

.field next:Lgnu/bytecode/Variable;

.field offset:I

.field scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lgnu/bytecode/Variable;->flags:I

    .line 46
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/bytecode/Variable;->offset:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lgnu/bytecode/Variable;->flags:I

    .line 46
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/bytecode/Variable;->offset:I

    .line 27
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/bytecode/Variable;->flags:I

    .line 46
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/bytecode/Variable;->offset:I

    .line 32
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 33
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 34
    return-void
.end method

.method private setFlag(ZI)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move v1, p1

    .local v1, "setting":Z
    move v2, p2

    .local v2, "flag":I
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/Variable;->flags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Lgnu/bytecode/Variable;->flags:I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/Variable;->flags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Lgnu/bytecode/Variable;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public allocateLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/Variable;->offset:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 125
    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .line 128
    .local v2, "i":I
    :goto_1
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    goto :goto_0

    .line 126
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final dead()Z
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Variable;->flags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public freeLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 9

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/bytecode/Variable;->flags:I

    const/4 v7, -0x5

    and-int/lit8 v6, v6, -0x5

    iput v6, v5, Lgnu/bytecode/Variable;->flags:I

    .line 136
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    iget v5, v5, Lgnu/bytecode/Type;->size:I

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    const/4 v5, 0x2

    :goto_0
    move v2, v5

    .line 137
    .local v2, "size":I
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    move v6, v2

    add-int/2addr v5, v6

    move v3, v5

    .local v3, "vnum":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/Variable;->offset:I

    if-lt v5, v6, :cond_2

    .line 139
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 140
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move-object v4, v5

    .line 141
    .local v4, "local_types":[Lgnu/bytecode/Type;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 142
    move-object v5, v4

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 143
    :cond_0
    goto :goto_1

    .line 136
    .end local v2    # "size":I
    .end local v3    # "vnum":I
    .end local v4    # "local_types":[Lgnu/bytecode/Type;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 144
    .restart local v2    # "size":I
    .restart local v3    # "vnum":I
    :cond_2
    return-void
.end method

.method public final hasMoreElements()Z
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isAssigned()Z
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Variable;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isParameter()Z
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Variable;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSimple()Z
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Variable;->flags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Variable enumeration"

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return-object v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return-object v0
.end method

.method public reserveLocal(ILgnu/bytecode/CodeAttr;)Z
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move v1, p1

    .local v1, "varIndex":I
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v5

    move v3, v5

    .line 91
    .local v3, "size":I
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-nez v5, :cond_1

    .line 92
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    const/16 v6, 0x14

    move v7, v3

    add-int/2addr v6, v7

    new-array v6, v6, [Lgnu/bytecode/Variable;

    iput-object v6, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    .line 98
    :cond_0
    :goto_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 100
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 101
    const/4 v5, 0x0

    move v0, v5

    .line 116
    .end local v0    # "this":Lgnu/bytecode/Variable;
    :goto_2
    return v0

    .line 93
    .end local v4    # "j":I
    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v5

    move v6, v3

    add-int/2addr v5, v6

    move-object v6, v2

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v6, v6, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 94
    const/4 v5, 0x2

    move-object v6, v2

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v6, v6, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v6, v6

    mul-int/2addr v5, v6

    move v6, v3

    add-int/2addr v5, v6

    new-array v5, v5, [Lgnu/bytecode/Variable;

    move-object v4, v5

    .line 95
    .local v4, "new_locals":[Lgnu/bytecode/Variable;
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    goto :goto_0

    .line 98
    .local v4, "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_3
    const/4 v5, 0x0

    move v4, v5

    :goto_3
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_4

    .line 104
    move-object v5, v2

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v0

    aput-object v7, v5, v6

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 105
    :cond_4
    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 106
    move-object v5, v2

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 107
    :cond_5
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/bytecode/Variable;->offset:I

    .line 108
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/bytecode/Variable;->flags:I

    const/4 v7, 0x4

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/bytecode/Variable;->flags:I

    .line 109
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    if-nez v5, :cond_6

    .line 113
    const-string/jumbo v5, "<init>"

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 116
    :cond_6
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_2
.end method

.method public final setParameter(Z)V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move v1, p1

    .local v1, "parameter":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    .line 83
    return-void
.end method

.method public final setSimple(Z)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move v1, p1

    .local v1, "simple":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    return-void
.end method

.method shouldEmit()Z
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    move-object v1, v5

    .line 151
    .local v1, "sc":Lgnu/bytecode/Scope;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v2, v6

    .local v2, "start":Lgnu/bytecode/Label;
    if-eqz v5, :cond_0

    move-object v5, v2

    iget v5, v5, Lgnu/bytecode/Label;->position:I

    move v7, v5

    move v5, v7

    move v6, v7

    move v4, v6

    .local v4, "pos":I
    if-ltz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "end":Lgnu/bytecode/Label;
    if-eqz v5, :cond_0

    move-object v5, v3

    iget v5, v5, Lgnu/bytecode/Label;->position:I

    move v6, v4

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    .end local v2    # "start":Lgnu/bytecode/Label;
    .end local v3    # "end":Lgnu/bytecode/Label;
    .end local v4    # "pos":I
    :goto_0
    move v0, v5

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Variable;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Variable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Variable;
    return-object v0
.end method
