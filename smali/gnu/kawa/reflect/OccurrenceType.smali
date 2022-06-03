.class public Lgnu/kawa/reflect/OccurrenceType;
.super Lgnu/bytecode/ObjectType;
.source "OccurrenceType.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final emptySequenceType:Lgnu/bytecode/Type;

.field static final isInstanceMethod:Lgnu/bytecode/Method;

.field public static final typeOccurrenceType:Lgnu/bytecode/ClassType;


# instance fields
.field base:Lgnu/bytecode/Type;

.field maxOccurs:I

.field minOccurs:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    .line 305
    const-string/jumbo v0, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    .line 307
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "isInstance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;II)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "base":Lgnu/bytecode/Type;
    move v2, p2

    .local v2, "minOccurs":I
    move v3, p3

    .local v3, "maxOccurs":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 27
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 28
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 29
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 30
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "base":Lgnu/bytecode/Type;
    move v1, p1

    .local v1, "minOccurs":I
    move v2, p2

    .local v2, "maxOccurs":I
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 35
    move-object v3, v0

    move-object v0, v3

    .line 39
    .end local v0    # "base":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 36
    .restart local v0    # "base":Lgnu/bytecode/Type;
    :cond_0
    move v3, v1

    if-nez v3, :cond_2

    move v3, v2

    if-gez v3, :cond_2

    move-object v3, v0

    sget-object v4, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    if-eq v3, v4, :cond_1

    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_2

    .line 38
    :cond_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v3

    goto :goto_0

    .line 39
    :cond_2
    new-instance v3, Lgnu/kawa/reflect/OccurrenceType;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static itemCountCode(Lgnu/bytecode/Type;)C
    .locals 6

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v4

    move v1, v4

    .line 230
    .local v1, "num":I
    move v4, v1

    const/16 v5, 0xfff

    and-int/lit16 v4, v4, 0xfff

    move v2, v4

    .line 231
    .local v2, "min":I
    move v4, v1

    const/16 v5, 0xc

    shr-int/lit8 v4, v4, 0xc

    move v3, v4

    .line 232
    .local v3, "max":I
    move v4, v3

    if-nez v4, :cond_0

    const/16 v4, 0x30

    :goto_0
    move v0, v4

    .end local v0    # "type":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/16 v4, 0x3f

    goto :goto_0

    :cond_1
    const/16 v4, 0x2a

    goto :goto_0

    :cond_2
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/16 v4, 0x31

    goto :goto_0

    :cond_3
    const/16 v4, 0x2b

    goto :goto_0
.end method

.method public static itemCountIsOne(Lgnu/bytecode/Type;)Z
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v1

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v1

    const/16 v2, 0xd

    shr-int/lit8 v1, v1, 0xd

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static itemCountRange(Lgnu/bytecode/Type;)I
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v7, v0

    instance-of v7, v7, Lgnu/kawa/reflect/SingletonType;

    if-eqz v7, :cond_0

    .line 175
    const/16 v7, 0x1001

    move v0, v7

    .line 217
    .end local v0    # "type":Lgnu/bytecode/Type;
    .local v1, "cmp":I
    :goto_0
    return v0

    .line 176
    .end local v1    # "cmp":I
    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v7, v0

    instance-of v7, v7, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v7, :cond_b

    .line 178
    move-object v7, v0

    check-cast v7, Lgnu/kawa/reflect/OccurrenceType;

    move-object v1, v7

    .line 179
    .local v1, "occ":Lgnu/kawa/reflect/OccurrenceType;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v7

    move v2, v7

    .line 180
    .local v2, "min":I
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v7

    move v3, v7

    .line 181
    .local v3, "max":I
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-static {v7}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v7

    move v4, v7

    .line 182
    .local v4, "bnum":I
    move v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move v7, v3

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    :cond_1
    move v7, v4

    if-nez v7, :cond_3

    .line 184
    :cond_2
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 185
    :cond_3
    move v7, v3

    const v8, 0xfffff

    if-le v7, v8, :cond_4

    .line 186
    const/4 v7, -0x1

    move v3, v7

    .line 187
    :cond_4
    move v7, v3

    if-nez v7, :cond_5

    .line 188
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 189
    :cond_5
    move v7, v4

    const/16 v8, 0xfff

    and-int/lit16 v7, v7, 0xfff

    move v5, v7

    .line 190
    .local v5, "bmin":I
    move v7, v4

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    move v6, v7

    .line 191
    .local v6, "bmax":I
    move v7, v4

    const/16 v8, 0x1001

    if-eq v7, v8, :cond_9

    .line 193
    move v7, v2

    const/16 v8, 0xfff

    if-le v7, v8, :cond_6

    .line 194
    const/16 v7, 0xfff

    move v2, v7

    .line 195
    :cond_6
    move v7, v2

    move v8, v5

    mul-int/2addr v7, v8

    move v2, v7

    .line 196
    move v7, v2

    const/16 v8, 0xfff

    if-le v7, v8, :cond_7

    .line 197
    const/16 v7, 0xfff

    move v2, v7

    .line 198
    :cond_7
    move v7, v3

    if-ltz v7, :cond_8

    move v7, v6

    if-gez v7, :cond_a

    .line 199
    :cond_8
    const/4 v7, -0x1

    move v3, v7

    .line 202
    :goto_1
    move v7, v3

    const v8, 0xfffff

    if-le v7, v8, :cond_9

    .line 203
    const/4 v7, -0x1

    move v3, v7

    .line 205
    :cond_9
    move v7, v3

    const/16 v8, 0xc

    shl-int/lit8 v7, v7, 0xc

    move v8, v2

    or-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 201
    :cond_a
    move v7, v3

    move v8, v6

    mul-int/2addr v7, v8

    move v3, v7

    goto :goto_1

    .line 207
    .end local v1    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    .end local v2    # "min":I
    .end local v3    # "max":I
    .end local v4    # "bnum":I
    .end local v5    # "bmin":I
    .end local v6    # "bmax":I
    :cond_b
    move-object v7, v0

    instance-of v7, v7, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_d

    .line 208
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_2
    move v0, v7

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0x1001

    goto :goto_2

    .line 209
    :cond_d
    move-object v7, v0

    instance-of v7, v7, Lgnu/bytecode/ArrayType;

    if-eqz v7, :cond_e

    .line 210
    const/16 v7, 0x1001

    move v0, v7

    goto/16 :goto_0

    .line 211
    :cond_e
    move-object v7, v0

    instance-of v7, v7, Lgnu/bytecode/ObjectType;

    if-eqz v7, :cond_f

    .line 213
    move-object v7, v0

    sget-object v8, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v7

    move v1, v7

    .line 214
    .local v1, "cmp":I
    move v7, v1

    const/4 v8, -0x3

    if-ne v7, v8, :cond_f

    .line 215
    const/16 v7, 0x1001

    move v0, v7

    goto/16 :goto_0

    .line 217
    .end local v1    # "cmp":I
    :cond_f
    const/16 v7, -0x1000

    move v0, v7

    goto/16 :goto_0
.end method

.method public static itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    :goto_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_0

    .line 253
    move-object v1, v0

    check-cast v1, Lgnu/kawa/reflect/OccurrenceType;

    invoke-virtual {v1}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 254
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    :goto_1
    move-object v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_1
    sget-object v1, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    goto :goto_1
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Values;

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/reflect/OccurrenceType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 75
    :cond_1
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 81
    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v3, :cond_0

    .line 54
    move-object v3, v1

    check-cast v3, Lgnu/kawa/reflect/OccurrenceType;

    move-object v2, v3

    .line 55
    .local v2, "occOther":Lgnu/kawa/reflect/OccurrenceType;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    move-object v4, v2

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    move-object v4, v2

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v4, :cond_0

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    move v0, v3

    .line 64
    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    .end local v2    # "occOther":Lgnu/kawa/reflect/OccurrenceType;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    :cond_0
    const/4 v3, -0x2

    move v0, v3

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return-object v0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 156
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v4, v5

    .line 139
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 140
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 141
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 143
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 144
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_1
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 147
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 148
    move-object v5, v4

    sget-object v6, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 149
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 150
    return-void
.end method

.method public getBase()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return-object v0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_9

    .line 88
    move-object v7, v1

    check-cast v7, Lgnu/mapping/Values;

    move-object v2, v7

    .line 89
    .local v2, "vals":Lgnu/mapping/Values;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/mapping/Values;->startPos()I

    move-result v7

    move v3, v7

    .line 90
    .local v3, "pos":I
    const/4 v7, 0x0

    move v4, v7

    .line 91
    .local v4, "n":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    instance-of v7, v7, Lgnu/lists/ItemPredicate;

    if-eqz v7, :cond_5

    .line 93
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    check-cast v7, Lgnu/lists/ItemPredicate;

    move-object v5, v7

    .line 97
    .local v5, "pred":Lgnu/lists/ItemPredicate;
    :goto_0
    move-object v7, v5

    move-object v8, v2

    move v9, v3

    invoke-interface {v7, v8, v9}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v7

    move v6, v7

    .line 98
    .local v6, "matches":Z
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    move v3, v7

    .line 99
    move v7, v3

    if-nez v7, :cond_2

    .line 101
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v7, :cond_0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    move v0, v7

    .line 131
    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    .end local v2    # "vals":Lgnu/mapping/Values;
    .end local v3    # "pos":I
    .end local v4    # "n":I
    .end local v5    # "pred":Lgnu/lists/ItemPredicate;
    .end local v6    # "matches":Z
    :goto_2
    return v0

    .line 101
    .restart local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    .restart local v2    # "vals":Lgnu/mapping/Values;
    .restart local v3    # "pos":I
    .restart local v4    # "n":I
    .restart local v5    # "pred":Lgnu/lists/ItemPredicate;
    .restart local v6    # "matches":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 104
    :cond_2
    move v7, v6

    if-nez v7, :cond_3

    .line 105
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_0

    .line 123
    .end local v6    # "matches":Z
    .local v5, "value":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 114
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    move v3, v7

    .line 115
    move v7, v3

    if-nez v7, :cond_8

    .line 117
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v7, v8, :cond_7

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v7, :cond_6

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v7, v8, :cond_7

    :cond_6
    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 120
    :cond_8
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 121
    .restart local v5    # "value":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 122
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 129
    .end local v2    # "vals":Lgnu/mapping/Values;
    .end local v3    # "pos":I
    .end local v4    # "n":I
    .end local v5    # "value":Ljava/lang/Object;
    :cond_9
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v8, 0x1

    if-gt v7, v8, :cond_a

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-nez v7, :cond_b

    .line 130
    :cond_a
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 131
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    move v0, v7

    goto :goto_2
.end method

.method public maxOccurs()I
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return v0
.end method

.method public minOccurs()I
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 301
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 302
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v4}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 268
    .local v1, "b":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 269
    .local v2, "parens":Z
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 270
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move v4, v2

    if-eqz v4, :cond_1

    .line 271
    move-object v4, v3

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 272
    :cond_1
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 273
    move v4, v2

    if-eqz v4, :cond_2

    .line 274
    move-object v4, v3

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 275
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 276
    .line 294
    :goto_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    return-object v0

    .line 268
    .end local v2    # "parens":Z
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "this":Lgnu/kawa/reflect/OccurrenceType;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 277
    .restart local v2    # "parens":Z
    .restart local v3    # "sbuf":Ljava/lang/StringBuffer;
    :cond_4
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v4, :cond_5

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 278
    move-object v4, v3

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 279
    :cond_5
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 280
    move-object v4, v3

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 281
    :cond_6
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v4, :cond_7

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 282
    move-object v4, v3

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 285
    :cond_7
    move-object v4, v3

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 286
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 287
    move-object v4, v3

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 288
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v4, :cond_8

    .line 289
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 292
    :goto_2
    move-object v4, v3

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 291
    :cond_8
    move-object v4, v3

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/OccurrenceType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 262
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 263
    return-void
.end method
