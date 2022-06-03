.class public Lgnu/bytecode/SwitchState;
.super Ljava/lang/Object;
.source "SwitchState.java"


# instance fields
.field after_label:Lgnu/bytecode/Label;

.field cases_label:Lgnu/bytecode/Label;

.field defaultLabel:Lgnu/bytecode/Label;

.field labels:[Lgnu/bytecode/Label;

.field maxValue:I

.field minValue:I

.field numCases:I

.field outerTry:Lgnu/bytecode/TryState;

.field switch_label:Lgnu/bytecode/Label;

.field values:[I


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v3, v2, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    .line 63
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v3, v2, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    .line 64
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v3, v2, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    .line 65
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v3, v2, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/bytecode/SwitchState;->numCases:I

    .line 68
    return-void
.end method


# virtual methods
.method public addCase(ILgnu/bytecode/CodeAttr;)Z
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move v1, p1

    .local v1, "value":I
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    new-instance v4, Lgnu/bytecode/Label;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v3, v4

    .line 90
    .local v3, "label":Lgnu/bytecode/Label;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v4, v5}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 91
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 92
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/SwitchState;
    return v0
.end method

.method public addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move v1, p1

    .local v1, "value":I
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, p3

    .local v3, "label":Lgnu/bytecode/Label;
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v5

    move v4, v5

    .line 99
    .local v4, "ok":Z
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 100
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 101
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lgnu/bytecode/SwitchState;
    return v0
.end method

.method public addDefault(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    new-instance v3, Lgnu/bytecode/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v3

    .line 107
    .local v2, "label":Lgnu/bytecode/Label;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 108
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 109
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 110
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 111
    return-void
.end method

.method public exitSwitch(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eq v2, v3, :cond_0

    .line 185
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "exitSwitch cannot exit through a try"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 187
    return-void
.end method

.method public finish(Lgnu/bytecode/CodeAttr;)V
    .locals 11

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-nez v5, :cond_0

    .line 195
    move-object v5, v0

    new-instance v6, Lgnu/bytecode/Label;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v6, v5, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 197
    const-string/jumbo v5, "java.lang.RuntimeException"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v2, v5

    .line 198
    .local v2, "ex":Lgnu/bytecode/ClassType;
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 199
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 200
    move-object v5, v1

    const-string/jumbo v6, "bad case value!"

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 201
    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/bytecode/Type;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v8, v6, v7

    move-object v3, v5

    .line 202
    .local v3, "args":[Lgnu/bytecode/Type;
    move-object v5, v2

    const-string/jumbo v6, "<init>"

    const/4 v7, 0x1

    move-object v8, v3

    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v4, v5

    .line 204
    .local v4, "con":Lgnu/bytecode/Method;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 205
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 207
    .end local v2    # "ex":Lgnu/bytecode/ClassType;
    .end local v3    # "args":[Lgnu/bytecode/Type;
    .end local v4    # "con":Lgnu/bytecode/Method;
    :cond_0
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 208
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/SwitchState;->numCases:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    .line 210
    move-object v5, v1

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 211
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/SwitchState;->numCases:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 213
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/SwitchState;->minValue:I

    if-nez v5, :cond_2

    .line 214
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 220
    :goto_0
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 221
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 222
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 223
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 263
    :cond_1
    :goto_1
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 264
    return-void

    .line 217
    :cond_2
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 218
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    goto :goto_0

    .line 227
    :cond_3
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 228
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    .line 231
    :cond_4
    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->maxValue:I

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_7

    .line 233
    move-object v5, v1

    const/16 v6, 0xd

    const/4 v7, 0x4

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SwitchState;->maxValue:I

    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 234
    move-object v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 235
    move-object v5, v1

    const/16 v6, 0xaa

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 236
    move-object v5, v1

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 237
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/bytecode/CodeAttr;->PC:I

    .line 238
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 239
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->maxValue:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 240
    const/4 v5, 0x0

    move v2, v5

    .line 241
    .local v2, "index":I
    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/SwitchState;->minValue:I

    move v3, v5

    .local v3, "i":I
    :goto_2
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->maxValue:I

    if-gt v5, v6, :cond_6

    .line 243
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->values:[I

    move v6, v2

    aget v5, v5, v6

    move v6, v3

    if-ne v5, v6, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v5, v5, v6

    :goto_3
    move-object v4, v5

    .line 244
    .local v4, "lab":Lgnu/bytecode/Label;
    move-object v5, v1

    const/4 v6, 0x3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 245
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/bytecode/CodeAttr;->PC:I

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 243
    .end local v4    # "lab":Lgnu/bytecode/Label;
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    goto :goto_3

    .line 247
    :cond_6
    goto/16 :goto_1

    .line 250
    .end local v2    # "index":I
    .end local v3    # "i":I
    :cond_7
    move-object v5, v1

    const/16 v6, 0x9

    const/16 v7, 0x8

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 251
    move-object v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 252
    move-object v5, v1

    const/16 v6, 0xab

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 253
    move-object v5, v1

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 254
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/bytecode/CodeAttr;->PC:I

    .line 255
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->numCases:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 256
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "index":I
    :goto_4
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/SwitchState;->numCases:I

    if-ge v5, v6, :cond_1

    .line 258
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SwitchState;->values:[I

    move v7, v2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 259
    move-object v5, v1

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    move v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 260
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/bytecode/CodeAttr;->PC:I

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public getMaxValue()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/SwitchState;->maxValue:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/SwitchState;
    return v0
.end method

.method public getNumCases()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/SwitchState;->numCases:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/SwitchState;
    return v0
.end method

.method public insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z
    .locals 16

    .prologue
    .line 121
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move/from16 v1, p1

    .local v1, "value":I
    move-object/from16 v2, p2

    .local v2, "label":Lgnu/bytecode/Label;
    move-object/from16 v3, p3

    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->values:[I

    if-nez v9, :cond_0

    .line 123
    move-object v9, v0

    const/16 v10, 0xa

    new-array v10, v10, [I

    iput-object v10, v9, Lgnu/bytecode/SwitchState;->values:[I

    .line 124
    move-object v9, v0

    const/16 v10, 0xa

    new-array v10, v10, [Lgnu/bytecode/Label;

    iput-object v10, v9, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 125
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lgnu/bytecode/SwitchState;->numCases:I

    .line 126
    move-object v9, v0

    move-object v10, v0

    move v11, v1

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput v12, v11, Lgnu/bytecode/SwitchState;->maxValue:I

    iput v10, v9, Lgnu/bytecode/SwitchState;->minValue:I

    .line 127
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->values:[I

    const/4 v10, 0x0

    move v11, v1

    aput v11, v9, v10

    .line 128
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    .line 129
    const/4 v9, 0x1

    move v0, v9

    .line 175
    .end local v0    # "this":Lgnu/bytecode/SwitchState;
    :goto_0
    return v0

    .line 131
    .restart local v0    # "this":Lgnu/bytecode/SwitchState;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->values:[I

    move-object v4, v9

    .line 132
    .local v4, "old_values":[I
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    move-object v5, v9

    .line 133
    .local v5, "old_labels":[Lgnu/bytecode/Label;
    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SwitchState;->numCases:I

    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/SwitchState;->values:[I

    array-length v10, v10

    if-lt v9, v10, :cond_1

    .line 135
    move-object v9, v0

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    iput-object v10, v9, Lgnu/bytecode/SwitchState;->values:[I

    .line 136
    move-object v9, v0

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/2addr v10, v11

    new-array v10, v10, [Lgnu/bytecode/Label;

    iput-object v10, v9, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 139
    :cond_1
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lgnu/bytecode/SwitchState;->minValue:I

    if-ge v9, v10, :cond_3

    .line 141
    const/4 v9, 0x0

    move v6, v9

    .line 142
    .local v6, "copyBefore":I
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lgnu/bytecode/SwitchState;->minValue:I

    .line 167
    :cond_2
    :goto_1
    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SwitchState;->numCases:I

    move v10, v6

    sub-int/2addr v9, v10

    move v7, v9

    .line 168
    .local v7, "copyAfter":I
    move-object v9, v4

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/SwitchState;->values:[I

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/SwitchState;->values:[I

    const/4 v12, 0x0

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->values:[I

    move v10, v6

    move v11, v1

    aput v11, v9, v10

    .line 171
    move-object v9, v5

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    const/4 v12, 0x0

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    move v10, v6

    move-object v11, v2

    aput-object v11, v9, v10

    .line 174
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lgnu/bytecode/SwitchState;->numCases:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lgnu/bytecode/SwitchState;->numCases:I

    .line 175
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 144
    .end local v6    # "copyBefore":I
    .end local v7    # "copyAfter":I
    :cond_3
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lgnu/bytecode/SwitchState;->maxValue:I

    if-le v9, v10, :cond_4

    .line 146
    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SwitchState;->numCases:I

    move v6, v9

    .line 147
    .restart local v6    # "copyBefore":I
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lgnu/bytecode/SwitchState;->maxValue:I

    goto :goto_1

    .line 152
    .end local v6    # "copyBefore":I
    :cond_4
    const/4 v9, 0x0

    move v7, v9

    .line 153
    .local v7, "low":I
    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SwitchState;->numCases:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    .line 154
    .local v8, "hi":I
    const/4 v9, 0x0

    move v6, v9

    .line 155
    .restart local v6    # "copyBefore":I
    :goto_2
    move v9, v7

    move v10, v8

    if-gt v9, v10, :cond_6

    .line 157
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    const/4 v10, 0x1

    ushr-int/lit8 v9, v9, 0x1

    move v6, v9

    .line 158
    move-object v9, v4

    move v10, v6

    aget v9, v9, v10

    move v10, v1

    if-lt v9, v10, :cond_5

    .line 159
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    goto :goto_2

    .line 161
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v9, v6

    move v7, v9

    goto :goto_2

    .line 164
    :cond_6
    move v9, v1

    move-object v10, v4

    move v11, v6

    aget v10, v10, v11

    if-ne v9, v10, :cond_2

    .line 165
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method

.method public switchValuePushed(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SwitchState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 78
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 79
    return-void
.end method
