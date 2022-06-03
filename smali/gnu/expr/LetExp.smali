.class public Lgnu/expr/LetExp;
.super Lgnu/expr/ScopeExp;
.source "LetExp.java"


# instance fields
.field public body:Lgnu/expr/Expression;

.field public inits:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "i":[Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/ScopeExp;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/LetExp;
    move-object/from16 v2, p1

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/LetExp;->setIndexes()V

    .line 31
    move-object v13, v1

    invoke-static {v13}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v13

    move v3, v13

    .line 32
    .local v3, "level":I
    move-object v13, v1

    iget v13, v13, Lgnu/expr/LetExp;->frameSize:I

    move v4, v13

    .line 34
    .local v4, "i":I
    move v13, v4

    new-array v13, v13, [Ljava/lang/Object;

    move-object v5, v13

    .line 35
    .local v5, "evalFrame":[Ljava/lang/Object;
    move-object v13, v2

    iget-object v13, v13, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v6, v13

    .line 36
    .local v6, "evalFrames":[[Ljava/lang/Object;
    move-object v13, v6

    if-nez v13, :cond_1

    .line 38
    move v13, v3

    const/16 v14, 0xa

    add-int/lit8 v13, v13, 0xa

    new-array v13, v13, [[Ljava/lang/Object;

    move-object v6, v13

    .line 39
    move-object v13, v2

    move-object v14, v6

    iput-object v14, v13, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 47
    :cond_0
    :goto_0
    move-object v13, v6

    move v14, v3

    aget-object v13, v13, v14

    move-object v7, v13

    .line 48
    .local v7, "oldFrame":[Ljava/lang/Object;
    move-object v13, v6

    move v14, v3

    move-object v15, v5

    aput-object v15, v13, v14

    .line 52
    const/4 v13, 0x0

    move v4, v13

    .line 53
    move-object v13, v1

    :try_start_0
    invoke-virtual {v13}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v13

    move-object v8, v13

    .local v8, "decl":Lgnu/expr/Declaration;
    :goto_1
    move-object v13, v8

    if-eqz v13, :cond_5

    .line 56
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v14, v4

    aget-object v13, v13, v14

    sget-object v14, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v13, v14, :cond_2

    .line 57
    .line 54
    :goto_2
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    move-object v8, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    .end local v7    # "oldFrame":[Ljava/lang/Object;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_1
    move v13, v3

    move-object v14, v6

    array-length v14, v14

    if-lt v13, v14, :cond_0

    .line 43
    move v13, v3

    const/16 v14, 0xa

    add-int/lit8 v13, v13, 0xa

    new-array v13, v13, [[Ljava/lang/Object;

    move-object v7, v13

    .line 44
    .local v7, "newFrames":[[Ljava/lang/Object;
    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v7

    const/16 v16, 0x0

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    move-object v13, v2

    move-object v14, v7

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v6, v15

    iput-object v14, v13, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    goto :goto_0

    .line 58
    .local v7, "oldFrame":[Ljava/lang/Object;
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_2
    move-object v13, v1

    move v14, v4

    move-object v15, v2

    :try_start_1
    invoke-virtual {v13, v14, v15}, Lgnu/expr/LetExp;->evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    .line 59
    .local v9, "value":Ljava/lang/Object;
    move-object v13, v8

    iget-object v13, v13, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object v10, v13

    .line 60
    .local v10, "type":Lgnu/bytecode/Type;
    move-object v13, v10

    if-eqz v13, :cond_3

    move-object v13, v10

    sget-object v14, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v13, v14, :cond_3

    .line 61
    move-object v13, v10

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    .line 62
    :cond_3
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 64
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v13

    move-object v11, v13

    .line 65
    .local v11, "loc":Lgnu/mapping/Location;
    move-object v13, v11

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 66
    move-object v13, v11

    move-object v9, v13

    .line 68
    .end local v9    # "value":Ljava/lang/Object;
    .end local v11    # "loc":Lgnu/mapping/Location;
    :cond_4
    move-object v13, v5

    move v14, v4

    move-object v15, v9

    aput-object v15, v13, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 74
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "type":Lgnu/bytecode/Type;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v6

    move v14, v3

    move-object v15, v7

    aput-object v15, v13, v14

    move-object v13, v12

    throw v13

    .line 70
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object v13, v1

    :try_start_2
    iget-object v13, v13, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    move-object v13, v6

    move v14, v3

    move-object v15, v7

    aput-object v15, v13, v14

    .line 75
    .line 76
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 16

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v3, v10

    .line 164
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move-object v4, v10

    .line 165
    .local v4, "decl":Lgnu/expr/Declaration;
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v11, v11

    if-ge v10, v11, :cond_5

    .line 168
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v11, v5

    aget-object v10, v10, v11

    move-object v7, v10

    .line 169
    .local v7, "init":Lgnu/expr/Expression;
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v10

    move v8, v10

    .line 170
    .local v8, "needsInit":Z
    move v10, v8

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 171
    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v10

    .line 172
    :cond_0
    move v10, v8

    if-eqz v10, :cond_1

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v7

    sget-object v11, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_3

    .line 174
    :cond_1
    sget-object v10, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object v6, v10

    .line 188
    .local v6, "varTarget":Lgnu/expr/Target;
    :cond_2
    :goto_1
    move-object v10, v7

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 165
    add-int/lit8 v5, v5, 0x1

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move-object v4, v10

    goto :goto_0

    .line 177
    .end local v6    # "varTarget":Lgnu/expr/Target;
    :cond_3
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    move-object v9, v10

    .line 178
    .local v9, "varType":Lgnu/bytecode/Type;
    move-object v10, v4

    invoke-static {v10}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;

    move-result-object v10

    move-object v6, v10

    .line 179
    .restart local v6    # "varTarget":Lgnu/expr/Target;
    move-object v10, v7

    sget-object v11, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_2

    .line 182
    move-object v10, v9

    instance-of v10, v10, Lgnu/bytecode/PrimType;

    if-eqz v10, :cond_4

    .line 183
    new-instance v10, Lgnu/expr/QuoteExp;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/Byte;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v11, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v7, v10

    goto :goto_1

    .line 184
    :cond_4
    move-object v10, v9

    if-eqz v10, :cond_2

    move-object v10, v9

    sget-object v11, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v10, v11, :cond_2

    .line 185
    sget-object v10, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object v7, v10

    goto :goto_1

    .line 191
    .end local v6    # "varTarget":Lgnu/expr/Target;
    .end local v7    # "init":Lgnu/expr/Expression;
    .end local v8    # "needsInit":Z
    .end local v9    # "varType":Lgnu/bytecode/Type;
    :cond_5
    move-object v10, v3

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/LetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 194
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 196
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 197
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/expr/LetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 198
    return-void
.end method

.method protected evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 25
    .local v3, "init":Lgnu/expr/Expression;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/LetExp;
    return-object v0
.end method

.method public getBody()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LetExp;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LetExp;
    return-object v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/LetExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "(Let"

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/LetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, p2

    .local v2, "startTag":Ljava/lang/String;
    move-object v3, p3

    .local v3, "endTag":Ljava/lang/String;
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lgnu/expr/LetExp;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 243
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/LetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 244
    move-object v6, v1

    const-string/jumbo v7, "("

    const/4 v8, 0x0

    const-string/jumbo v9, ")"

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 246
    .local v4, "decl":Lgnu/expr/Declaration;
    const/4 v6, 0x0

    move v5, v6

    .line 248
    .local v5, "i":I
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 250
    move v6, v5

    if-lez v6, :cond_0

    .line 251
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 252
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, "("

    const/4 v8, 0x0

    const-string/jumbo v9, ")"

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 253
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 254
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    if-eqz v6, :cond_1

    .line 256
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 257
    move-object v6, v1

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(C)V

    .line 258
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 263
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 264
    move-object v6, v1

    const-string/jumbo v7, "<missing init>"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 269
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 272
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 248
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 265
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v7, v5

    aget-object v6, v6, v7

    if-nez v6, :cond_3

    .line 266
    move-object v6, v1

    const-string/jumbo v7, "<null>"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_1

    .line 274
    :cond_4
    move-object v6, v1

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 275
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 276
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    if-nez v6, :cond_5

    .line 277
    move-object v6, v1

    const-string/jumbo v7, "<null body>"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 280
    :goto_2
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 281
    return-void

    .line 279
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_2
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move v2, p2

    .local v2, "i":I
    move-object v3, p3

    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 126
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 127
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v4, v6

    .line 132
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v7, v2

    aget-object v6, v6, v7

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v6, v7, :cond_2

    .line 134
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 135
    .local v5, "name":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 136
    move-object v6, v4

    move-object v7, v5

    invoke-static {v7}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 137
    .line 143
    .end local v4    # "code":Lgnu/bytecode/CodeAttr;
    .end local v5    # "name":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_1
    return-void

    .line 140
    .restart local v4    # "code":Lgnu/bytecode/CodeAttr;
    :cond_2
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

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
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LetExp;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LetExp;->visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 230
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 231
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 232
    :cond_0
    return-void
.end method

.method public visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 213
    .local v3, "decl":Lgnu/expr/Declaration;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 215
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 216
    .local v5, "init0":Lgnu/expr/Expression;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 217
    new-instance v7, Ljava/lang/Error;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "null1 init for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " i:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " d:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_0
    move-object v7, v1

    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v6, v7

    .line 219
    .local v6, "init":Lgnu/expr/Expression;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 220
    new-instance v7, Ljava/lang/Error;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "null2 init for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " was:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 221
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 222
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v8, v5

    if-ne v7, v8, :cond_2

    .line 223
    move-object v7, v3

    move-object v8, v6

    iput-object v8, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 213
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    goto/16 :goto_0

    .line 225
    .end local v5    # "init0":Lgnu/expr/Expression;
    .end local v6    # "init":Lgnu/expr/Expression;
    :cond_3
    return-void
.end method
