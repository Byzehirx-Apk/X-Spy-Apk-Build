.class public Lgnu/kawa/xml/XDataType;
.super Lgnu/bytecode/Type;
.source "XDataType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final ANY_ATOMIC_TYPE_CODE:I = 0x3

.field public static final ANY_SIMPLE_TYPE_CODE:I = 0x2

.field public static final ANY_URI_TYPE_CODE:I = 0x21

.field public static final BASE64_BINARY_TYPE_CODE:I = 0x22

.field public static final BOOLEAN_TYPE_CODE:I = 0x1f

.field public static final BYTE_TYPE_CODE:I = 0xb

.field public static final DATE_TIME_TYPE_CODE:I = 0x14

.field public static final DATE_TYPE_CODE:I = 0x15

.field public static final DAY_TIME_DURATION_TYPE_CODE:I = 0x1e

.field public static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field public static final DECIMAL_TYPE_CODE:I = 0x4

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_TYPE_CODE:I = 0x13

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final DURATION_TYPE_CODE:I = 0x1c

.field public static final ENTITY_TYPE_CODE:I = 0x2f

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_TYPE_CODE:I = 0x12

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final G_DAY_TYPE_CODE:I = 0x1a

.field public static final G_MONTH_DAY_TYPE_CODE:I = 0x19

.field public static final G_MONTH_TYPE_CODE:I = 0x1b

.field public static final G_YEAR_MONTH_TYPE_CODE:I = 0x17

.field public static final G_YEAR_TYPE_CODE:I = 0x18

.field public static final HEX_BINARY_TYPE_CODE:I = 0x23

.field public static final IDREF_TYPE_CODE:I = 0x2e

.field public static final ID_TYPE_CODE:I = 0x2d

.field public static final INTEGER_TYPE_CODE:I = 0x5

.field public static final INT_TYPE_CODE:I = 0x9

.field public static final LANGUAGE_TYPE_CODE:I = 0x29

.field public static final LONG_TYPE_CODE:I = 0x8

.field public static final NAME_TYPE_CODE:I = 0x2b

.field public static final NCNAME_TYPE_CODE:I = 0x2c

.field public static final NEGATIVE_INTEGER_TYPE_CODE:I = 0x7

.field public static final NMTOKEN_TYPE_CODE:I = 0x2a

.field public static final NONNEGATIVE_INTEGER_TYPE_CODE:I = 0xc

.field public static final NON_POSITIVE_INTEGER_TYPE_CODE:I = 0x6

.field public static final NORMALIZED_STRING_TYPE_CODE:I = 0x27

.field public static final NOTATION_TYPE_CODE:I = 0x24

.field public static final NotationType:Lgnu/kawa/xml/XDataType;

.field public static final POSITIVE_INTEGER_TYPE_CODE:I = 0x11

.field public static final QNAME_TYPE_CODE:I = 0x20

.field public static final SHORT_TYPE_CODE:I = 0xa

.field public static final STRING_TYPE_CODE:I = 0x26

.field public static final TIME_TYPE_CODE:I = 0x16

.field public static final TOKEN_TYPE_CODE:I = 0x28

.field public static final UNSIGNED_BYTE_TYPE_CODE:I = 0x10

.field public static final UNSIGNED_INT_TYPE_CODE:I = 0xe

.field public static final UNSIGNED_LONG_TYPE_CODE:I = 0xd

.field public static final UNSIGNED_SHORT_TYPE_CODE:I = 0xf

.field public static final UNTYPED_ATOMIC_TYPE_CODE:I = 0x25

.field public static final UNTYPED_TYPE_CODE:I = 0x30

.field public static final YEAR_MONTH_DURATION_TYPE_CODE:I = 0x1d

.field public static final anyAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final anySimpleType:Lgnu/kawa/xml/XDataType;

.field public static final anyURIType:Lgnu/kawa/xml/XDataType;

.field public static final base64BinaryType:Lgnu/kawa/xml/XDataType;

.field public static final booleanType:Lgnu/kawa/xml/XDataType;

.field public static final dayTimeDurationType:Lgnu/kawa/xml/XDataType;

.field public static final decimalType:Lgnu/kawa/xml/XDataType;

.field public static final doubleType:Lgnu/kawa/xml/XDataType;

.field public static final durationType:Lgnu/kawa/xml/XDataType;

.field public static final floatType:Lgnu/kawa/xml/XDataType;

.field public static final hexBinaryType:Lgnu/kawa/xml/XDataType;

.field public static final stringStringType:Lgnu/kawa/xml/XDataType;

.field public static final stringType:Lgnu/kawa/xml/XDataType;

.field public static final untypedAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final untypedType:Lgnu/kawa/xml/XDataType;

.field public static final yearMonthDurationType:Lgnu/kawa/xml/XDataType;


# instance fields
.field baseType:Lgnu/kawa/xml/XDataType;

.field implementationType:Lgnu/bytecode/Type;

.field name:Ljava/lang/Object;

.field typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 100
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "anySimpleType"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    .line 105
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "anyAtomicType"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    .line 110
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "java.lang.CharSequence"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x26

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    .line 122
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "String"

    const-string/jumbo v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x26

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    .line 127
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "gnu.kawa.xml.UntypedAtomic"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x25

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    .line 131
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "base64Binary"

    const-string/jumbo v3, "gnu.kawa.xml.Base64Binary"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x22

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    .line 135
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "hexBinary"

    const-string/jumbo v3, "gnu.kawa.xml.HexBinary"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x23

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    .line 139
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "boolean"

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const/16 v4, 0x1f

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    .line 143
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "anyURI"

    const-string/jumbo v3, "gnu.text.Path"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    .line 146
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "NOTATION"

    const-string/jumbo v3, "gnu.kawa.xml.Notation"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x24

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    .line 151
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "decimal"

    const-string/jumbo v3, "java.lang.Number"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    .line 158
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "float"

    const-string/jumbo v3, "java.lang.Float"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    .line 161
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "double"

    const-string/jumbo v3, "java.lang.Double"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    .line 164
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "duration"

    const-string/jumbo v3, "gnu.math.Duration"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    .line 168
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "yearMonthDuration"

    const-string/jumbo v3, "gnu.math.Duration"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    .line 172
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "dayTimeDuration"

    const-string/jumbo v3, "gnu.math.Duration"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    .line 176
    new-instance v0, Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "untyped"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v4, 0x30

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    .line 544
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 545
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    .line 546
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    .line 547
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    .line 548
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "implementationType":Lgnu/bytecode/Type;
    move v3, p3

    .local v3, "typeCode":I
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/bytecode/Type;-><init>(Lgnu/bytecode/Type;)V

    .line 93
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    .line 94
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 95
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->setName(Ljava/lang/String;)V

    .line 96
    :cond_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    .line 97
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/xml/XDataType;->typeCode:I

    .line 98
    return-void
.end method

.method public static makeDouble(D)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 538
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":D
    return-object v0
.end method

.method public static makeFloat(F)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 529
    move v0, p0

    .local v0, "value":F
    move v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":F
    return-object v0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 333
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/xml/XDataType;
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;
    move-object v6, v2

    invoke-static {v6}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 334
    move-object v6, v2

    instance-of v6, v6, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v6, :cond_1

    .line 336
    move-object v6, v1

    iget v6, v6, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v7, 0x25

    if-ne v6, v7, :cond_0

    .line 337
    move-object v6, v2

    move-object v1, v6

    .line 435
    .end local v1    # "this":Lgnu/kawa/xml/XDataType;
    :goto_0
    return-object v1

    .line 338
    .restart local v1    # "this":Lgnu/kawa/xml/XDataType;
    :cond_0
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 340
    :cond_1
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 341
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 342
    :cond_2
    move-object v6, v1

    iget v6, v6, Lgnu/kawa/xml/XDataType;->typeCode:I

    packed-switch v6, :pswitch_data_0

    .line 435
    :cond_3
    :pswitch_0
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 345
    :pswitch_1
    move-object v6, v2

    invoke-static {v6}, Lgnu/xml/TextUtils;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 347
    :pswitch_2
    new-instance v6, Lgnu/kawa/xml/UntypedAtomic;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-static {v8}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_0

    .line 349
    :pswitch_3
    move-object v6, v2

    invoke-static {v6}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 351
    :pswitch_4
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    .line 352
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v1, v6

    goto :goto_0

    :cond_4
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 354
    :cond_5
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_3

    .line 356
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v3, v6

    .line 357
    .local v3, "d":D
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    move-object v1, v6

    goto :goto_0

    :cond_7
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 362
    .end local v3    # "d":D
    :pswitch_5
    move-object v6, v2

    instance-of v6, v6, Ljava/math/BigDecimal;

    if-eqz v6, :cond_8

    .line 363
    move-object v6, v2

    move-object v1, v6

    goto/16 :goto_0

    .line 364
    :cond_8
    move-object v6, v2

    instance-of v6, v6, Lgnu/math/RealNum;

    if-eqz v6, :cond_9

    .line 365
    move-object v6, v2

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 366
    :cond_9
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Float;

    if-nez v6, :cond_a

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_b

    .line 368
    :cond_a
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v3, v6

    .line 370
    .restart local v3    # "d":D
    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 375
    .end local v3    # "d":D
    :cond_b
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 376
    move-object v6, v1

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_3

    .line 380
    :pswitch_6
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_d

    .line 381
    move-object v6, v2

    move-object v1, v6

    goto/16 :goto_0

    .line 382
    :cond_d
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_e

    .line 384
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 385
    :cond_e
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 386
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    :goto_4
    move-object v1, v6

    goto/16 :goto_0

    :cond_f
    sget-object v6, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    goto :goto_4

    .line 389
    :pswitch_7
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_10

    .line 390
    move-object v6, v2

    move-object v1, v6

    goto/16 :goto_0

    .line 391
    :cond_10
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_11

    .line 393
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 394
    :cond_11
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 395
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    :goto_5
    move-object v1, v6

    goto/16 :goto_0

    :cond_12
    sget-object v6, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    goto :goto_5

    .line 402
    :pswitch_8
    move-object v6, v2

    instance-of v6, v6, Lgnu/math/DateTime;

    if-eqz v6, :cond_3

    .line 404
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/XTimeType;

    iget v6, v6, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v6}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v6

    move v3, v6

    .line 405
    .local v3, "dstMask":I
    move-object v6, v2

    check-cast v6, Lgnu/math/DateTime;

    move-object v4, v6

    .line 406
    .local v4, "dt":Lgnu/math/DateTime;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/math/DateTime;->components()I

    move-result v6

    move v5, v6

    .line 407
    .local v5, "srcMask":I
    move v6, v3

    move v7, v5

    if-eq v6, v7, :cond_13

    move v6, v5

    const/16 v7, 0xe

    and-int/lit8 v6, v6, 0xe

    const/16 v7, 0xe

    if-ne v6, v7, :cond_14

    .line 409
    :cond_13
    move-object v6, v4

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 410
    :cond_14
    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v6

    .line 416
    .end local v3    # "dstMask":I
    .end local v4    # "dt":Lgnu/math/DateTime;
    .end local v5    # "srcMask":I
    :pswitch_9
    move-object v6, v2

    instance-of v6, v6, Lgnu/math/DateTime;

    if-eqz v6, :cond_3

    .line 418
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/XTimeType;

    iget v6, v6, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v6}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v6

    move v3, v6

    .line 419
    .local v3, "mask":I
    move-object v6, v2

    check-cast v6, Lgnu/math/DateTime;

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 423
    .end local v3    # "mask":I
    :pswitch_a
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 425
    :pswitch_b
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 427
    :pswitch_c
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 429
    :pswitch_d
    move-object v6, v2

    instance-of v6, v6, Lgnu/kawa/xml/BinaryObject;

    if-eqz v6, :cond_15

    .line 430
    new-instance v6, Lgnu/kawa/xml/Base64Binary;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    check-cast v8, Lgnu/kawa/xml/BinaryObject;

    invoke-virtual {v8}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/Base64Binary;-><init>([B)V

    move-object v1, v6

    goto/16 :goto_0

    .line 432
    :cond_15
    :pswitch_e
    move-object v6, v2

    instance-of v6, v6, Lgnu/kawa/xml/BinaryObject;

    if-eqz v6, :cond_3

    .line 433
    new-instance v6, Lgnu/kawa/xml/HexBinary;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    check-cast v8, Lgnu/kawa/xml/BinaryObject;

    invoke-virtual {v8}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    move-object v1, v6

    goto/16 :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 14

    .prologue
    .line 440
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/xml/XDataType;
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "unit":Lgnu/math/Unit;
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/Duration;

    if-eqz v9, :cond_3

    .line 442
    move-object v9, v2

    check-cast v9, Lgnu/math/Duration;

    move-object v4, v9

    .line 443
    .local v4, "dur":Lgnu/math/Duration;
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v9

    move-object v10, v3

    if-ne v9, v10, :cond_0

    .line 444
    move-object v9, v4

    move-object v1, v9

    .line 457
    .end local v1    # "this":Lgnu/kawa/xml/XDataType;
    .end local v4    # "dur":Lgnu/math/Duration;
    :goto_0
    return-object v1

    .line 445
    .restart local v1    # "this":Lgnu/kawa/xml/XDataType;
    .restart local v4    # "dur":Lgnu/math/Duration;
    :cond_0
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v9

    move v5, v9

    .line 446
    .local v5, "months":I
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v9

    move-wide v6, v9

    .line 447
    .local v6, "seconds":J
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v9

    move v8, v9

    .line 448
    .local v8, "nanos":I
    move-object v9, v3

    sget-object v10, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v9, v10, :cond_1

    .line 449
    const/4 v9, 0x0

    move v5, v9

    .line 450
    :cond_1
    move-object v9, v3

    sget-object v10, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v9, v10, :cond_2

    .line 452
    const-wide/16 v9, 0x0

    move-wide v6, v9

    .line 453
    const/4 v9, 0x0

    move v8, v9

    .line 455
    :cond_2
    move v9, v5

    move-wide v10, v6

    move v12, v8

    move-object v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 457
    .end local v4    # "dur":Lgnu/math/Duration;
    .end local v5    # "months":I
    .end local v6    # "seconds":J
    .end local v8    # "nanos":I
    :cond_3
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/math/Duration;

    move-object v1, v9

    goto :goto_0
.end method

.method public castable(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 323
    const/4 v3, 0x1

    move v0, v3

    .line 327
    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    :goto_0
    return v0

    .line 325
    .restart local v0    # "this":Lgnu/kawa/xml/XDataType;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 327
    .local v2, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XDataType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
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

    iget-object v5, v5, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    sget-object v3, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    sget-object v3, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-ne v2, v3, :cond_2

    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    if-ne v2, v3, :cond_2

    .line 472
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    .line 473
    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/XDataType;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    move-object v2, v4

    .line 194
    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    move-object v5, v0

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 195
    const-string/jumbo v4, "gnu.kawa.xml.XDataType"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string/jumbo v5, "coerceFromObject"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v3, v4

    .line 197
    .local v3, "meth":Lgnu/bytecode/Method;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 198
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 201
    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 206
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
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

    .line 301
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 9

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
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

    .line 214
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_2

    .line 216
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 217
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 218
    :cond_0
    sget-object v5, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 219
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 220
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 223
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 224
    sget-object v5, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 225
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 227
    .line 244
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    move-object v5, v3

    move-object v6, v0

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 231
    move-object v5, v1

    if-nez v5, :cond_4

    .line 232
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 235
    :goto_1
    move-object v5, v4

    sget-object v6, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v7, "isInstance"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 237
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 238
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 240
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 241
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/kawa/xml/XDataType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 242
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 244
    :cond_3
    goto :goto_0

    .line 234
    :cond_4
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/XDataType;->typeCode:I

    sparse-switch v2, :sswitch_data_0

    .line 293
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    :goto_0
    return v0

    .line 256
    .restart local v0    # "this":Lgnu/kawa/xml/XDataType;
    :sswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 258
    :sswitch_1
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/SeqPosition;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/Nodes;

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 264
    :sswitch_2
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Values;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/SeqPosition;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 267
    :sswitch_3
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/CharSequence;

    move v0, v2

    goto :goto_0

    .line 272
    :sswitch_4
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/UntypedAtomic;

    move v0, v2

    goto :goto_0

    .line 274
    :sswitch_5
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/Path;

    move v0, v2

    goto :goto_0

    .line 276
    :sswitch_6
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    move v0, v2

    goto :goto_0

    .line 278
    :sswitch_7
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    move v0, v2

    goto :goto_0

    .line 280
    :sswitch_8
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    move v0, v2

    goto :goto_0

    .line 282
    :sswitch_9
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-nez v2, :cond_3

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 285
    :sswitch_a
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    move v0, v2

    goto :goto_0

    .line 287
    :sswitch_b
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lgnu/math/Duration;

    invoke-virtual {v2}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v2

    sget-object v3, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 290
    :sswitch_c
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lgnu/math/Duration;

    invoke-virtual {v2}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v2

    sget-object v3, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_9
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x1f -> :sswitch_6
        0x21 -> :sswitch_5
        0x25 -> :sswitch_4
        0x26 -> :sswitch_3
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v1

    instance-of v3, v3, Lgnu/text/Printable;

    if-eqz v3, :cond_0

    .line 312
    move-object v3, v1

    check-cast v3, Lgnu/text/Printable;

    move-object v4, v2

    invoke-interface {v3, v4}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XDataType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/XDataType;->typeCode:I

    sparse-switch v4, :sswitch_data_0

    .line 522
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "valueOf not implemented for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :sswitch_0
    move-object v4, v1

    move-object v0, v4

    .line 520
    .end local v0    # "this":Lgnu/kawa/xml/XDataType;
    :goto_0
    return-object v0

    .line 483
    .restart local v0    # "this":Lgnu/kawa/xml/XDataType;
    :sswitch_1
    new-instance v4, Lgnu/kawa/xml/UntypedAtomic;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 485
    :sswitch_2
    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 487
    :sswitch_3
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 488
    move-object v4, v1

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v4

    goto :goto_0

    .line 490
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v4

    goto :goto_0

    .line 492
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a valid boolean: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    :sswitch_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 496
    const-string/jumbo v4, "INF"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "Infinity"

    move-object v1, v4

    .line 498
    :cond_4
    :goto_1
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    :goto_2
    move-object v0, v4

    goto/16 :goto_0

    .line 497
    :cond_5
    const-string/jumbo v4, "-INF"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "-Infinity"

    move-object v1, v4

    goto :goto_1

    .line 498
    :cond_6
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    goto :goto_2

    .line 501
    :sswitch_5
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 504
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .local v2, "i":I
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_9

    .line 506
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 507
    .local v3, "ch":C
    move v4, v3

    const/16 v5, 0x65

    if-eq v4, v5, :cond_7

    move v4, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_8

    .line 508
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a valid decimal: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 509
    :cond_8
    goto :goto_3

    .line 510
    .end local v3    # "ch":C
    :cond_9
    new-instance v4, Ljava/math/BigDecimal;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 512
    .end local v2    # "i":I
    :sswitch_6
    move-object v4, v1

    invoke-static {v4}, Lgnu/math/Duration;->parseDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 514
    :sswitch_7
    move-object v4, v1

    invoke-static {v4}, Lgnu/math/Duration;->parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 516
    :sswitch_8
    move-object v4, v1

    invoke-static {v4}, Lgnu/math/Duration;->parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 518
    :sswitch_9
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/xml/Base64Binary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 520
    :sswitch_a
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x12 -> :sswitch_4
        0x13 -> :sswitch_4
        0x1c -> :sswitch_6
        0x1d -> :sswitch_7
        0x1e -> :sswitch_8
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_9
        0x23 -> :sswitch_a
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method
