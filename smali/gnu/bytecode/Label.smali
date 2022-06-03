.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field needsStackMapEntry:Z

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;

.field private typeChangeListeners:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lgnu/bytecode/Label;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/Label;->position:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lgnu/bytecode/Label;-><init>(I)V

    .line 40
    return-void
.end method

.method private mergeLocalType(ILgnu/bytecode/Type;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move v1, p1

    .local v1, "varnum":I
    move-object v2, p2

    .local v2, "newType":Lgnu/bytecode/Type;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move v6, v1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 120
    .local v3, "oldLocal":Lgnu/bytecode/Type;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v5

    move-object v4, v5

    .line 121
    .local v4, "newLocal":Lgnu/bytecode/Type;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move v6, v1

    move-object v7, v4

    aput-object v7, v5, v6

    .line 122
    move-object v5, v4

    move-object v6, v3

    if-eq v5, v6, :cond_0

    .line 123
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/Label;->notifyTypeChangeListeners(ILgnu/bytecode/Type;)V

    .line 124
    :cond_0
    return-void
.end method

.method private notifyTypeChangeListeners(ILgnu/bytecode/Type;)V
    .locals 10

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move v1, p1

    .local v1, "varnum":I
    move-object v2, p2

    .local v2, "newType":Lgnu/bytecode/Type;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    move-object v3, v7

    .line 129
    .local v3, "arr":[Ljava/lang/Object;
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    array-length v7, v7

    move v8, v1

    if-gt v7, v8, :cond_1

    .line 130
    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    move-object v7, v3

    move v8, v1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 132
    .local v4, "listeners":Ljava/lang/Object;
    move-object v7, v4

    if-nez v7, :cond_2

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    move-object v7, v4

    instance-of v7, v7, Lgnu/bytecode/Label;

    if-eqz v7, :cond_5

    .line 135
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/Label;

    move v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 141
    :cond_3
    move-object v7, v2

    if-nez v7, :cond_4

    .line 142
    move-object v7, v3

    move v8, v1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 143
    :cond_4
    goto :goto_0

    .line 138
    :cond_5
    move-object v7, v4

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Label;

    move-object v6, v7

    .line 139
    .local v6, "listener":Lgnu/bytecode/Label;
    move-object v7, v6

    move v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_1
.end method


# virtual methods
.method addTypeChangeListener(ILgnu/bytecode/Label;)V
    .locals 12

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move v1, p1

    .local v1, "varnum":I
    move-object v2, p2

    .local v2, "listener":Lgnu/bytecode/Label;
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    move-object v3, v6

    .line 155
    .local v3, "arr":[Ljava/lang/Object;
    move-object v6, v3

    if-nez v6, :cond_1

    .line 156
    move-object v6, v0

    move v7, v1

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    iput-object v7, v6, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 163
    :cond_0
    :goto_0
    move-object v6, v3

    move v7, v1

    aget-object v6, v6, v7

    move-object v4, v6

    .line 164
    .local v4, "set":Ljava/lang/Object;
    move-object v6, v4

    if-nez v6, :cond_2

    .line 165
    move-object v6, v3

    move v7, v1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 179
    :goto_1
    return-void

    .line 157
    .end local v4    # "set":Ljava/lang/Object;
    :cond_1
    move-object v6, v3

    array-length v6, v6

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 159
    move v6, v1

    const/16 v7, 0xa

    add-int/lit8 v6, v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    move-object v3, v6

    .line 160
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    goto :goto_0

    .line 169
    .restart local v4    # "set":Ljava/lang/Object;
    :cond_2
    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/Label;

    if-eqz v6, :cond_3

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 172
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    move-object v6, v5

    move-object v7, v4

    check-cast v7, Lgnu/bytecode/Label;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 173
    move-object v6, v3

    move v7, v1

    move-object v8, v5

    aput-object v8, v6, v7

    .line 177
    :goto_2
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 176
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    :cond_3
    move-object v6, v4

    check-cast v6, Ljava/util/ArrayList;

    move-object v5, v6

    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    goto :goto_2
.end method

.method addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    if-eqz v4, :cond_2

    .line 185
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    move v2, v4

    .line 186
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "varnum":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 188
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v5, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v4, v4

    move v5, v3

    if-le v4, v5, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    move v5, v3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    .line 192
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    move v5, v3

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/Label;->addTypeChangeListener(ILgnu/bytecode/Label;)V

    .line 186
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "len":I
    .end local v3    # "varnum":I
    :cond_2
    return-void
.end method

.method public define(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 231
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    .line 232
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 233
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_1

    .line 236
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 237
    :cond_1
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 238
    return-void

    .line 220
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_0

    .line 222
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :cond_3
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 224
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-eqz v3, :cond_4

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    .line 227
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    if-ltz v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "label definition more than once"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/CodeAttr;->PC:I

    iput v3, v2, Lgnu/bytecode/Label;->position:I

    .line 205
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v3, v2, Lgnu/bytecode/Label;->first_fixup:I

    .line 206
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Label;->first_fixup:I

    if-ltz v2, :cond_1

    .line 207
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 208
    :cond_1
    return-void
.end method

.method public final defined()Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Label;->position:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Label;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Label;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "t1":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "t2":Lgnu/bytecode/Type;
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/PrimType;

    move-object v4, v2

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eq v3, v4, :cond_0

    .line 50
    const/4 v3, 0x0

    move-object v0, v3

    .line 51
    .end local v0    # "this":Lgnu/bytecode/Label;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/Label;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Label;->addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 104
    new-instance v2, Ljava/lang/InternalError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 105
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v6, v1

    iget v6, v6, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 109
    return-void

    .line 105
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v4, v4

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 115
    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .locals 16

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/Label;
    move-object/from16 v1, p1

    .local v1, "locals":[Lgnu/bytecode/Type;
    move/from16 v2, p2

    .local v2, "usedLocals":I
    move-object/from16 v3, p3

    .local v3, "stack":[Lgnu/bytecode/Type;
    move/from16 v4, p4

    .local v4, "usedStack":I
    :goto_0
    move v9, v2

    if-lez v9, :cond_0

    .line 59
    move-object v9, v1

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v5, v9

    .line 60
    .local v5, "last":Lgnu/bytecode/Type;
    move-object v9, v5

    if-eqz v9, :cond_2

    .line 61
    .line 63
    .end local v5    # "last":Lgnu/bytecode/Type;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez v9, :cond_5

    .line 65
    move v9, v4

    if-nez v9, :cond_3

    .line 66
    move-object v9, v0

    sget-object v10, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v10, v9, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 72
    :goto_1
    move v9, v2

    if-nez v9, :cond_4

    .line 73
    move-object v9, v0

    sget-object v10, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v10, v9, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 98
    :cond_1
    :goto_2
    return-void

    .line 57
    .restart local v5    # "last":Lgnu/bytecode/Type;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    .end local v5    # "last":Lgnu/bytecode/Type;
    :cond_3
    move-object v9, v0

    move v10, v4

    new-array v10, v10, [Lgnu/bytecode/Type;

    iput-object v10, v9, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 70
    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    const/4 v12, 0x0

    move v13, v4

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 76
    :cond_4
    move-object v9, v0

    move v10, v2

    new-array v10, v10, [Lgnu/bytecode/Type;

    iput-object v10, v9, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 77
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    const/4 v12, 0x0

    move v13, v2

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 82
    :cond_5
    move v9, v4

    move v5, v9

    .line 83
    .local v5, "SP":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    move v6, v9

    .line 84
    .local v6, "slen":I
    move v9, v5

    move v10, v6

    if-eq v9, v10, :cond_6

    .line 85
    new-instance v9, Ljava/lang/InternalError;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "inconsistent stack length"

    invoke-direct {v10, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 86
    :cond_6
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_3
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_7

    .line 88
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move v10, v7

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move v13, v7

    aget-object v12, v12, v13

    move-object v13, v3

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v11

    aput-object v11, v9, v10

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 90
    :cond_7
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v10, v10

    if-ge v9, v10, :cond_8

    move v9, v2

    :goto_4
    move v7, v9

    .line 91
    .local v7, "min":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_5
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_9

    .line 93
    move-object v9, v0

    move v10, v8

    move-object v11, v1

    move v12, v8

    aget-object v11, v11, v12

    invoke-direct {v9, v10, v11}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 90
    .end local v8    # "i":I
    .local v7, "i":I
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    goto :goto_4

    .line 95
    .local v7, "min":I
    .restart local v8    # "i":I
    :cond_9
    move v9, v2

    move v8, v9

    :goto_6
    move v9, v8

    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 96
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move v10, v8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method
