.class public Lgnu/expr/BeginExp;
.super Lgnu/expr/Expression;
.source "BeginExp.java"


# instance fields
.field compileOptions:Ljava/util/Vector;

.field exps:[Lgnu/expr/Expression;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "exp0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "exp1":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 41
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 42
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 43
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v4, 0x1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 44
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/expr/BeginExp;->length:I

    .line 45
    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "ex":[Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Expression;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method public static final canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v3, v0

    instance-of v3, v3, Lgnu/expr/BeginExp;

    if-eqz v3, :cond_2

    .line 54
    move-object v3, v0

    check-cast v3, Lgnu/expr/BeginExp;

    move-object v1, v3

    .line 55
    .local v1, "bexp":Lgnu/expr/BeginExp;
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v0

    move-object v0, v3

    .line 63
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    move-object v3, v1

    iget v3, v3, Lgnu/expr/BeginExp;->length:I

    move v2, v3

    .line 58
    .local v2, "len":I
    move v3, v2

    if-nez v3, :cond_1

    .line 59
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v3

    goto :goto_0

    .line 60
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 61
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 63
    .end local v1    # "bexp":Lgnu/expr/BeginExp;
    .end local v2    # "len":I
    :cond_2
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public static final canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "exps":[Lgnu/expr/Expression;
    move-object v2, v0

    array-length v2, v2

    move v1, v2

    .line 69
    .local v1, "len":I
    move v2, v1

    if-nez v2, :cond_0

    .line 70
    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v2

    .line 73
    .end local v0    # "exps":[Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "exps":[Lgnu/expr/Expression;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 73
    :cond_1
    new-instance v2, Lgnu/expr/BeginExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final add(Lgnu/expr/Expression;)V
    .locals 10

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    if-nez v3, :cond_0

    .line 79
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 80
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/expr/BeginExp;->length:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 82
    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/expr/BeginExp;->length:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/expr/Expression;

    move-object v2, v3

    .line 83
    .local v2, "ex":[Lgnu/expr/Expression;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/expr/BeginExp;->length:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 86
    .end local v2    # "ex":[Lgnu/expr/Expression;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/expr/BeginExp;->length:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/BeginExp;->length:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 87
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    iget v6, v6, Lgnu/expr/BeginExp;->length:I

    move v2, v6

    .line 109
    .local v2, "n":I
    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v6

    .line 110
    .local v4, "consumerSave":Lgnu/lists/Consumer;
    move-object v6, v1

    sget-object v7, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v7, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 113
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 114
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v7, v3

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_0
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 119
    .line 120
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v7, v3

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v6, v5

    throw v6
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 140
    move-object v6, v0

    :try_start_0
    iget v6, v6, Lgnu/expr/BeginExp;->length:I

    move v3, v6

    .line 141
    .local v3, "n":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 142
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v1

    sget-object v8, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    .line 148
    .line 149
    return-void

    .line 147
    .end local v3    # "n":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    move-object v6, v5

    throw v6
.end method

.method public final getExpressionCount()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/BeginExp;->length:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/BeginExp;
    return v0
.end method

.method public final getExpressions()[Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/BeginExp;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v2, v0

    iget v2, v2, Lgnu/expr/BeginExp;->length:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/BeginExp;
    return-object v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/BeginExp;
    return v0
.end method

.method public popOptions(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 133
    :cond_0
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 10

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v6, v1

    const-string/jumbo v7, "(Begin"

    const-string/jumbo v8, ")"

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 173
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/BeginExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v6, :cond_1

    .line 176
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 177
    move-object v6, v1

    const-string/jumbo v7, "(CompileOptions"

    const-string/jumbo v8, ")"

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move v2, v6

    .line 179
    .local v2, "sizeOptions":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 181
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 182
    .local v4, "key":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 183
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 184
    move-object v6, v1

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    move-object v6, v1

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(C)V

    .line 186
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 187
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 188
    move-object v6, v1

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 190
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 192
    .end local v2    # "sizeOptions":I
    .end local v3    # "i":I
    :cond_1
    move-object v6, v0

    iget v6, v6, Lgnu/expr/BeginExp;->length:I

    move v2, v6

    .line 193
    .local v2, "n":I
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "i":I
    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 195
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 196
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v7, v3

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    move-object v6, v1

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public pushOptions(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setCompileOptions(Ljava/util/Vector;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "options":Ljava/util/Vector;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    .line 101
    return-void
.end method

.method public final setExpressions([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 95
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/expr/BeginExp;->length:I

    .line 96
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v6}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 156
    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 160
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v6}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/BeginExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/BeginExp;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v6}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    move-object v5, v4

    throw v5
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 8
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
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BeginExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v6, v0

    iget v6, v6, Lgnu/expr/BeginExp;->length:I

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 167
    return-void
.end method
