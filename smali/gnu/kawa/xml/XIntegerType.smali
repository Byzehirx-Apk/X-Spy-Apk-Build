.class public Lgnu/kawa/xml/XIntegerType;
.super Lgnu/kawa/xml/XDataType;
.source "XIntegerType.java"


# static fields
.field public static final byteType:Lgnu/kawa/xml/XIntegerType;

.field public static final intType:Lgnu/kawa/xml/XIntegerType;

.field public static final integerType:Lgnu/kawa/xml/XIntegerType;

.field public static final longType:Lgnu/kawa/xml/XIntegerType;

.field public static final negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final shortType:Lgnu/kawa/xml/XIntegerType;

.field static typeIntNum:Lgnu/bytecode/ClassType;

.field public static final unsignedByteType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedIntType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedLongType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedShortType:Lgnu/kawa/xml/XIntegerType;


# instance fields
.field isUnsignedType:Z

.field public final maxValue:Lgnu/math/IntNum;

.field public final minValue:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 23
    const-string/jumbo v0, "gnu.math.IntNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    .line 32
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "integer"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->decimalType:Lgnu/kawa/xml/XDataType;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    .line 35
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "long"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x8

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    .line 38
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "int"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x9

    const/high16 v5, -0x80000000

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    .line 42
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "short"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xa

    const/16 v5, -0x8000

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    const/16 v6, 0x7fff

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    .line 46
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "byte"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xb

    const/16 v5, -0x80

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    const/16 v6, 0x7f

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    .line 50
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "nonPositiveInteger"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 54
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "negativeInteger"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 58
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "nonNegativeInteger"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xc

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 62
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "unsignedLong"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xd

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const-string/jumbo v6, "18446744073709551615"

    invoke-static {v6}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    .line 66
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "unsignedInt"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xe

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const-wide v6, 0xffffffffL

    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    .line 70
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "unsignedShort"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xf

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const v6, 0xffff

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    .line 74
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "unsignedByte"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x10

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const/16 v6, 0xff

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    .line 78
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "positiveInteger"

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x11

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 10

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "base":Lgnu/kawa/xml/XDataType;
    move v3, p3

    .local v3, "typeCode":I
    move-object v4, p4

    .local v4, "min":Lgnu/math/IntNum;
    move-object v5, p5

    .local v5, "max":Lgnu/math/IntNum;
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 95
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    .line 96
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    .line 97
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lgnu/kawa/xml/XIntegerType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 12

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "base":Lgnu/kawa/xml/XDataType;
    move v3, p3

    .local v3, "typeCode":I
    move-object/from16 v4, p4

    .local v4, "min":Lgnu/math/IntNum;
    move-object/from16 v5, p5

    .local v5, "max":Lgnu/math/IntNum;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 88
    move-object v6, v0

    move-object v7, v1

    const-string/jumbo v8, "unsigned"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    .line 89
    return-void
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 138
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    .line 148
    .end local v1    # "this":Lgnu/kawa/xml/XIntegerType;
    :goto_1
    return-object v1

    .line 138
    .restart local v1    # "this":Lgnu/kawa/xml/XIntegerType;
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_0

    .line 140
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Lgnu/math/IntNum;

    if-eqz v3, :cond_2

    .line 141
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lgnu/math/IntNum;

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 142
    :cond_2
    move-object v3, v2

    instance-of v3, v3, Ljava/math/BigDecimal;

    if-eqz v3, :cond_3

    .line 143
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/math/BigDecimal;

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 144
    :cond_3
    move-object v3, v2

    instance-of v3, v3, Lgnu/math/RealNum;

    if-eqz v3, :cond_4

    .line 145
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 146
    :cond_4
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 147
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 148
    :cond_5
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/IntNum;

    if-nez v3, :cond_0

    .line 103
    const/4 v3, 0x0

    move v0, v3

    .line 115
    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    :goto_0
    return v0

    .line 104
    .restart local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    :cond_0
    move-object v3, v0

    sget-object v4, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    if-ne v3, v4, :cond_1

    .line 105
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 106
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/XInteger;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/XInteger;

    invoke-virtual {v3}, Lgnu/kawa/xml/XInteger;->getIntegerType()Lgnu/kawa/xml/XIntegerType;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 109
    .local v2, "objType":Lgnu/kawa/xml/XDataType;
    :goto_2
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 111
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_3

    .line 112
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 106
    .end local v2    # "objType":Lgnu/kawa/xml/XDataType;
    :cond_2
    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    goto :goto_1

    .line 113
    .restart local v2    # "objType":Lgnu/kawa/xml/XDataType;
    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    move-object v2, v3

    goto :goto_2

    .line 115
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isUnsignedType()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    return v0
.end method

.method public valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "value":Lgnu/math/IntNum;
    move-object v2, v0

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    if-eq v2, v3, :cond_3

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v2

    if-lez v2, :cond_2

    .line 129
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot cast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/XIntegerType;->name:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_2
    new-instance v2, Lgnu/kawa/xml/XInteger;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/XInteger;-><init>(Lgnu/math/IntNum;Lgnu/kawa/xml/XIntegerType;)V

    move-object v0, v2

    .line 132
    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move v2, p2

    .local v2, "radix":I
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XIntegerType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XIntegerType;
    return-object v0
.end method
