.class public Lgnu/expr/QuoteExp;
.super Lgnu/expr/Expression;
.source "QuoteExp.java"


# static fields
.field public static final EXPLICITLY_TYPED:I = 0x2

.field public static final SHARED_CONSTANT:I = 0x4

.field public static abstractExp:Lgnu/expr/QuoteExp;

.field public static final classObjectExp:Lgnu/expr/QuoteExp;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static nullExp:Lgnu/expr/QuoteExp;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static undefined_exp:Lgnu/expr/QuoteExp;

.field public static voidExp:Lgnu/expr/QuoteExp;


# instance fields
.field protected type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    .line 55
    sget-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    .line 59
    const/4 v0, 0x0

    sget-object v1, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 60
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Expression;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/QuoteExp;->setType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "position":Lgnu/text/SourceLocator;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 70
    sget-object v3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object v0, v3

    .line 83
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_1

    .line 72
    sget-object v3, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    move-object v0, v3

    goto :goto_0

    .line 73
    :cond_1
    move-object v3, v0

    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne v3, v4, :cond_2

    .line 74
    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object v0, v3

    goto :goto_0

    .line 75
    :cond_2
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v4, :cond_3

    .line 76
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v3

    goto :goto_0

    .line 78
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 79
    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_4
    sget-object v3, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_1

    .line 80
    :cond_5
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 81
    .local v2, "q":Lgnu/expr/QuoteExp;
    move-object v3, v1

    if-eqz v3, :cond_6

    .line 82
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/QuoteExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 83
    :cond_6
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method static makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 89
    .local v1, "exp":Lgnu/expr/QuoteExp;
    move-object v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 90
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v2, v3

    .line 96
    .local v2, "exp":Lgnu/expr/QuoteExp;
    move-object v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 97
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/IgnoreTarget;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    instance-of v3, v3, Lgnu/bytecode/ObjectType;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-static {v5}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 121
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
.end method

.method public final getRawType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 27
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .line 35
    .end local v0    # "this":Lgnu/expr/QuoteExp;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "this":Lgnu/expr/QuoteExp;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    .line 29
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 31
    sget-object v1, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_2
    move-object v1, v0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_3

    .line 33
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_0

    .line 35
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
.end method

.method public isExplicitlyTyped()Z
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return v0
.end method

.method public isSharedConstant()Z
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 9

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v5, v1

    const-string/jumbo v6, "(Quote"

    const-string/jumbo v7, ")"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 213
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v2, v5

    .line 214
    .local v2, "val":Ljava/lang/Object;
    move-object v5, v2

    instance-of v5, v5, Lgnu/expr/Expression;

    if-eqz v5, :cond_0

    .line 215
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 216
    .end local v2    # "val":Ljava/lang/Object;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v3, v5

    .line 219
    .local v3, "saveFormat":Lgnu/lists/AbstractFormat;
    move-object v5, v1

    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v6

    iput-object v6, v5, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 220
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 221
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v5, :cond_1

    .line 223
    move-object v5, v1

    const-string/jumbo v6, " ::"

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 224
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_1
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 237
    .line 238
    move-object v5, v1

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 239
    return-void

    .line 236
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v5, v4

    throw v5
.end method

.method public setType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 41
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 42
    return-void
.end method

.method public side_effects()Z
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QuoteExp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 24

    .prologue
    .line 138
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/QuoteExp;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v5, p3

    .local v5, "required":Lgnu/bytecode/Type;
    move-object/from16 v6, p4

    .local v6, "decl":Lgnu/expr/Declaration;
    move-object/from16 v18, v2

    sget-object v19, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 139
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    .line 199
    .end local v2    # "this":Lgnu/expr/QuoteExp;
    :goto_0
    return-object v2

    .line 140
    .restart local v2    # "this":Lgnu/expr/QuoteExp;
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    .line 141
    .local v7, "fval":Ljava/lang/Object;
    move-object/from16 v18, v7

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 142
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    if-eqz v19, :cond_1

    move-object/from16 v19, v7

    if-nez v19, :cond_2

    :cond_1
    const-string/jumbo v19, "called value is not a procedure"

    :goto_1
    invoke-virtual/range {v18 .. v19}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v2, v18

    goto :goto_0

    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "calling "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " which is a "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 145
    :cond_3
    move-object/from16 v18, v7

    check-cast v18, Lgnu/mapping/Procedure;

    move-object/from16 v8, v18

    .line 146
    .local v8, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v18

    move/from16 v9, v18

    .line 147
    .local v9, "nargs":I
    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 148
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v18, v10

    if-eqz v18, :cond_4

    .line 149
    move-object/from16 v18, v4

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 150
    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    invoke-virtual/range {v18 .. v21}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v11, v18

    .line 151
    .local v11, "inlined":Lgnu/expr/Expression;
    move-object/from16 v18, v11

    if-eqz v18, :cond_5

    .line 152
    move-object/from16 v18, v11

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 153
    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 154
    .local v12, "args":[Lgnu/expr/Expression;
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/MethodProc;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v8

    check-cast v18, Lgnu/mapping/MethodProc;

    :goto_2
    move-object/from16 v13, v18

    .line 155
    .local v13, "asMProc":Lgnu/mapping/MethodProc;
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_3
    move/from16 v18, v14

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 157
    move-object/from16 v18, v13

    if-eqz v18, :cond_8

    move-object/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v18

    :goto_4
    move-object/from16 v15, v18

    .line 159
    .local v15, "ptype":Lgnu/bytecode/Type;
    move/from16 v18, v14

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v18, v15

    if-eqz v18, :cond_6

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v18

    if-gez v18, :cond_6

    move/from16 v18, v14

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 161
    const/16 v18, 0x0

    move-object/from16 v15, v18

    .line 162
    :cond_6
    move-object/from16 v18, v12

    move/from16 v19, v14

    move-object/from16 v20, v4

    move-object/from16 v21, v12

    move/from16 v22, v14

    aget-object v21, v21, v22

    move-object/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v20

    aput-object v20, v18, v19

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 154
    .end local v13    # "asMProc":Lgnu/mapping/MethodProc;
    .end local v14    # "i":I
    .end local v15    # "ptype":Lgnu/bytecode/Type;
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .line 157
    .restart local v13    # "asMProc":Lgnu/mapping/MethodProc;
    .restart local v14    # "i":I
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 164
    :cond_9
    move-object/from16 v18, v3

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 166
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v14, v18

    .line 167
    .local v14, "e":Lgnu/expr/Expression;
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 168
    move-object/from16 v18, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 170
    .end local v14    # "e":Lgnu/expr/Expression;
    :cond_a
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v18

    move-object/from16 v14, v18

    .line 171
    .local v14, "comp":Lgnu/expr/Compilation;
    move-object/from16 v18, v14

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Compilation;->inlineOk(Lgnu/mapping/Procedure;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 173
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 175
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 176
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 177
    :cond_b
    new-instance v18, Lgnu/expr/ApplyExp;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 179
    :cond_c
    move-object/from16 v18, v8

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v18

    move-object/from16 v15, v18

    .line 182
    .local v15, "mproc":Lgnu/expr/PrimProcedure;
    move-object/from16 v18, v15

    if-eqz v18, :cond_10

    .line 185
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v18, v6

    if-nez v18, :cond_e

    .line 186
    :cond_d
    new-instance v18, Lgnu/expr/ApplyExp;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v16, v18

    .line 196
    .local v16, "nexp":Lgnu/expr/ApplyExp;
    :goto_5
    move-object/from16 v18, v16

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 187
    .end local v16    # "nexp":Lgnu/expr/ApplyExp;
    :cond_e
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 188
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 191
    :cond_f
    const/16 v18, 0x1

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 192
    .local v17, "margs":[Lgnu/expr/Expression;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v20, v17

    const/16 v21, 0x1

    move/from16 v22, v9

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object/from16 v18, v17

    const/16 v19, 0x0

    new-instance v20, Lgnu/expr/ReferenceExp;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v20, v18, v19

    .line 194
    new-instance v18, Lgnu/expr/ApplyExp;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v15

    move-object/from16 v21, v17

    invoke-direct/range {v19 .. v21}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v16, v18

    .restart local v16    # "nexp":Lgnu/expr/ApplyExp;
    goto :goto_5

    .line 199
    .end local v15    # "mproc":Lgnu/expr/PrimProcedure;
    .end local v16    # "nexp":Lgnu/expr/ApplyExp;
    .end local v17    # "margs":[Lgnu/expr/Expression;
    :cond_10
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
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
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/expr/QuoteExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/QuoteExp;
    return-object v0
.end method
