.class public Lgnu/xquery/lang/XQuery;
.super Lgnu/expr/Language;
.source "XQuery.java"


# static fields
.field public static final DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_FUNCTION_PREFIX:Ljava/lang/String; = "(functions)"

.field public static final KAWA_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://kawa.gnu.org/"

.field public static final LOCAL_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final PARSE_WITH_FOCUS:I = 0x10000

.field public static final QEXO_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://qexo.gnu.org/"

.field public static final SCHEMA_INSTANCE_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final VARIADIC_FUNCTION_NAMESPACE:I = -0x2

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XQUERY_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field static charIsInt:Z

.field public static final defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

.field static envCounter:I

.field public static extensionsEnvEnv:Lgnu/mapping/Environment;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static final falseFunction:Lgnu/kawa/functions/ConstantFunction0;

.field public static final instance:Lgnu/xquery/lang/XQuery;

.field public static final kawaFunctionNamespace:Lgnu/mapping/Namespace;

.field public static final qexoFunctionNamespace:Lgnu/mapping/Namespace;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static final trueFunction:Lgnu/kawa/functions/ConstantFunction0;

.field static typeMap:[Ljava/lang/Object;

.field public static final xqEnvironment:Lgnu/mapping/Environment;

.field public static final xqueryFunctionNamespace:Lgnu/mapping/Namespace;


# instance fields
.field defaultNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const-string/jumbo v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    .line 43
    const-string/jumbo v0, "http://kawa.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    .line 45
    const-string/jumbo v0, "http://qexo.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lgnu/mapping/Namespace;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v3, v1, v2

    sput-object v0, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/xquery/lang/XQuery;->charIsInt:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    sput v0, Lgnu/xquery/lang/XQuery;->envCounter:I

    .line 282
    const-string/jumbo v0, "http://kawa.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Environment;->getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->extensionsEnvEnv:Lgnu/mapping/Environment;

    .line 553
    const-string/jumbo v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 558
    new-instance v0, Lgnu/xquery/lang/XQuery;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lgnu/xquery/lang/XQuery;-><init>()V

    sput-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    .line 559
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;->initXQuery()V

    .line 763
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v1, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    .line 765
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v1, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    .line 768
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "false"

    sget-object v3, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 770
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "true"

    sget-object v3, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 778
    const/16 v0, 0x60

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "string"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "untypedAtomic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "boolean"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "integer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "long"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "int"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "short"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "byte"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "unsignedLong"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "unsignedInt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "unsignedShort"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "unsignedByte"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "positiveInteger"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "nonPositiveInteger"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "negativeInteger"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "nonNegativeInteger"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x20

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x21

    sget-object v3, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x22

    const-string/jumbo v3, "dateTime"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x23

    sget-object v3, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x24

    const-string/jumbo v3, "time"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x25

    sget-object v3, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x26

    const-string/jumbo v3, "duration"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x27

    sget-object v3, Lgnu/kawa/xml/XTimeType;->durationType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x28

    const-string/jumbo v3, "yearMonthDuration"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x29

    sget-object v3, Lgnu/kawa/xml/XTimeType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2a

    const-string/jumbo v3, "dayTimeDuration"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2b

    sget-object v3, Lgnu/kawa/xml/XTimeType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2c

    const-string/jumbo v3, "gYearMonth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2d

    sget-object v3, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2e

    const-string/jumbo v3, "gYear"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2f

    sget-object v3, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x30

    const-string/jumbo v3, "gMonthDay"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x31

    sget-object v3, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x32

    const-string/jumbo v3, "gDay"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x33

    sget-object v3, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x34

    const-string/jumbo v3, "gMonth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x35

    sget-object v3, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x36

    const-string/jumbo v3, "decimal"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x37

    sget-object v3, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x38

    const-string/jumbo v3, "float"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x39

    sget-object v3, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3a

    const-string/jumbo v3, "double"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3b

    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3c

    const-string/jumbo v3, "anyURI"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3d

    sget-object v3, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3e

    const-string/jumbo v3, "hexBinary"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3f

    sget-object v3, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x40

    const-string/jumbo v3, "base64Binary"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x41

    sget-object v3, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x42

    const-string/jumbo v3, "NOTATION"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x43

    sget-object v3, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x44

    const-string/jumbo v3, "QName"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x45

    const-string/jumbo v3, "gnu.mapping.Symbol"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x46

    const-string/jumbo v3, "normalizedString"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x47

    sget-object v3, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x48

    const-string/jumbo v3, "token"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x49

    sget-object v3, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4a

    const-string/jumbo v3, "language"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4b

    sget-object v3, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4c

    const-string/jumbo v3, "NMTOKEN"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4d

    sget-object v3, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4e

    const-string/jumbo v3, "Name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4f

    sget-object v3, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x50

    const-string/jumbo v3, "NCName"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x51

    sget-object v3, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x52

    const-string/jumbo v3, "ID"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x53

    sget-object v3, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x54

    const-string/jumbo v3, "IDREF"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x55

    sget-object v3, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x56

    const-string/jumbo v3, "ENTITY"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x57

    sget-object v3, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x58

    const-string/jumbo v3, "anyAtomicType"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x59

    sget-object v3, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5a

    const-string/jumbo v3, "anySimpleType"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5b

    sget-object v3, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5c

    const-string/jumbo v3, "untyped"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5d

    sget-object v3, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5e

    const-string/jumbo v3, "anyType"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5f

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    sput-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Language;-><init>()V

    .line 563
    move-object v1, v0

    sget-object v2, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    .line 564
    move-object v1, v0

    sget-object v2, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v2, v1, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 565
    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Char;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v0

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    move v0, v2

    .line 84
    .end local v0    # "x":Ljava/lang/Object;
    .local v1, "i":I
    :goto_0
    return v0

    .line 78
    .end local v1    # "i":I
    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/math/Numeric;

    if-eqz v2, :cond_2

    .line 79
    move-object v2, v0

    check-cast v2, Lgnu/math/Numeric;

    invoke-virtual {v2}, Lgnu/math/Numeric;->intValue()I

    move-result v2

    move v1, v2

    .line 82
    .restart local v1    # "i":I
    :goto_1
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "not a character value"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v1    # "i":I
    :cond_2
    const/4 v2, -0x1

    move v1, v2

    .restart local v1    # "i":I
    goto :goto_1

    .line 84
    :cond_3
    move v2, v1

    int-to-char v2, v2

    move v0, v2

    goto :goto_0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 69
    move-object v1, v0

    check-cast v1, Lgnu/text/Char;

    invoke-virtual {v1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .line 70
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/math/Numeric;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getExternal(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 997
    move-object v1, p0

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p1

    .local v2, "type":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    move-object v3, v6

    .line 998
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 999
    .local v4, "value":Ljava/lang/Object;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 1000
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1003
    :cond_0
    move-object v6, v4

    if-nez v6, :cond_1

    .line 1004
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbound external "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1005
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1006
    move-object v6, v4

    move-object v1, v6

    .line 1029
    .end local v1    # "name":Lgnu/mapping/Symbol;
    :goto_0
    return-object v1

    .line 1007
    .restart local v1    # "name":Lgnu/mapping/Symbol;
    :cond_2
    move-object v6, v2

    instance-of v6, v6, Lgnu/kawa/xml/XDataType;

    if-eqz v6, :cond_3

    .line 1008
    move-object v6, v2

    check-cast v6, Lgnu/kawa/xml/XDataType;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1009
    :cond_3
    move-object v6, v2

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_5

    .line 1011
    move-object v6, v2

    check-cast v6, Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1013
    .local v5, "cname":Ljava/lang/String;
    const-string/jumbo v6, "gnu.math.IntNum"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1014
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1015
    :cond_4
    const-string/jumbo v6, "gnu.math.RealNum"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1016
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1020
    .end local v5    # "cname":Ljava/lang/String;
    :cond_5
    move-object v6, v2

    :try_start_0
    check-cast v6, Lgnu/bytecode/Type;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 1028
    .line 1029
    move-object v6, v4

    move-object v1, v6

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1024
    .local v5, "ex":Ljava/lang/ClassCastException;
    new-instance v6, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x2

    move-object v10, v4

    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v6
.end method

.method public static getInstance()Lgnu/xquery/lang/XQuery;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    return-object v0
.end method

.method public static getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    array-length v3, v3

    move v1, v3

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x2

    move v3, v1

    if-ltz v3, :cond_2

    .line 833
    sget-object v3, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    sget-object v3, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 836
    .local v2, "t":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 837
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    .line 842
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 839
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "t":Ljava/lang/Object;
    :cond_1
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/Type;

    move-object v0, v3

    goto :goto_0

    .line 842
    .end local v2    # "t":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private initXQuery()V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 571
    move-object v1, v0

    const-string/jumbo v2, "unescaped-data"

    const-string/jumbo v3, "gnu.kawa.xml.MakeUnescapedData"

    const-string/jumbo v4, "unescapedData"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    move-object v1, v0

    const-string/jumbo v2, "item-at"

    const-string/jumbo v3, "gnu.xquery.util.ItemAt"

    const-string/jumbo v4, "itemAt"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object v1, v0

    const-string/jumbo v2, "count"

    const-string/jumbo v3, "gnu.kawa.functions.CountValues"

    const-string/jumbo v4, "countValues"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    move-object v1, v0

    const-string/jumbo v2, "sum"

    const-string/jumbo v3, "gnu.xquery.util.Reduce"

    const-string/jumbo v4, "sum"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    move-object v1, v0

    const-string/jumbo v2, "avg"

    const-string/jumbo v3, "gnu.xquery.util.Average"

    const-string/jumbo v4, "avg"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object v1, v0

    const-string/jumbo v2, "sublist"

    const-string/jumbo v3, "gnu.xquery.util.SubList"

    const-string/jumbo v4, "subList"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object v1, v0

    const-string/jumbo v2, "subsequence"

    const-string/jumbo v3, "gnu.xquery.util.SubList"

    const-string/jumbo v4, "subList"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object v1, v0

    const-string/jumbo v2, "empty"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "isEmptySequence"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object v1, v0

    const-string/jumbo v2, "exists"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "exists"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    move-object v1, v0

    const-string/jumbo v2, "insert-before"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "insertBefore$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object v1, v0

    const-string/jumbo v2, "remove"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "remove$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object v1, v0

    const-string/jumbo v2, "reverse"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "reverse$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    move-object v1, v0

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "gnu.xquery.lang.XQuery"

    const-string/jumbo v4, "falseFunction"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    move-object v1, v0

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "gnu.xquery.lang.XQuery"

    const-string/jumbo v4, "trueFunction"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    move-object v1, v0

    const-string/jumbo v2, "boolean"

    const-string/jumbo v3, "gnu.xquery.util.BooleanValue"

    const-string/jumbo v4, "booleanValue"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    move-object v1, v0

    const-string/jumbo v2, "trace"

    const-string/jumbo v3, "gnu.xquery.util.Debug"

    const-string/jumbo v4, "trace"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object v1, v0

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "gnu.xquery.util.XQException"

    const-string/jumbo v4, "error"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    move-object v1, v0

    const-string/jumbo v2, "write-to"

    const-string/jumbo v3, "gnu.kawa.xml.WriteTo"

    const-string/jumbo v4, "writeTo"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object v1, v0

    const-string/jumbo v2, "write-to-if-changed"

    const-string/jumbo v3, "gnu.kawa.xml.WriteTo"

    const-string/jumbo v4, "writeToIfChanged"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object v1, v0

    const-string/jumbo v2, "iterator-items"

    const-string/jumbo v3, "gnu.kawa.xml.IteratorItems"

    const-string/jumbo v4, "iteratorItems"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    move-object v1, v0

    const-string/jumbo v2, "list-items"

    const-string/jumbo v3, "gnu.kawa.xml.ListItems"

    const-string/jumbo v4, "listItems"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object v1, v0

    const-string/jumbo v2, "node-name"

    const-string/jumbo v3, "gnu.xquery.util.NodeUtils"

    const-string/jumbo v4, "nodeName"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object v1, v0

    const-string/jumbo v2, "nilled"

    const-string/jumbo v3, "gnu.xquery.util.NodeUtils"

    const-string/jumbo v4, "nilled"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object v1, v0

    const-string/jumbo v2, "data"

    const-string/jumbo v3, "gnu.xquery.util.NodeUtils"

    const-string/jumbo v4, "data$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object v1, v0

    const-string/jumbo v2, "lower-case"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "lowerCase"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    move-object v1, v0

    const-string/jumbo v2, "upper-case"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "upperCase"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    move-object v1, v0

    const-string/jumbo v2, "substring"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "substring"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object v1, v0

    const-string/jumbo v2, "string-length"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "stringLength"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object v1, v0

    const-string/jumbo v2, "substring-before"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "substringBefore"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move-object v1, v0

    const-string/jumbo v2, "substring-after"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "substringAfter"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object v1, v0

    const-string/jumbo v2, "translate"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "translate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object v1, v0

    const-string/jumbo v2, "encode-for-uri"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "encodeForUri"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object v1, v0

    const-string/jumbo v2, "iri-to-uri"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "iriToUri"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object v1, v0

    const-string/jumbo v2, "escape-html-uri"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "escapeHtmlUri"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object v1, v0

    const-string/jumbo v2, "contains"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "contains"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object v1, v0

    const-string/jumbo v2, "starts-with"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "startsWith"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object v1, v0

    const-string/jumbo v2, "ends-with"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "endsWith"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object v1, v0

    const-string/jumbo v2, "codepoint-equal"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "codepointEqual"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    move-object v1, v0

    const-string/jumbo v2, "normalize-unicode"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "normalizeUnicode"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object v1, v0

    const-string/jumbo v2, "string-join"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "stringJoin"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object v1, v0

    const-string/jumbo v2, "concat"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "concat$V"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object v1, v0

    const-string/jumbo v2, "matches"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "matches"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    move-object v1, v0

    const-string/jumbo v2, "replace"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "replace"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    move-object v1, v0

    const-string/jumbo v2, "tokenize"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "tokenize$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object v1, v0

    const-string/jumbo v2, "string-to-codepoints"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "stringToCodepoints$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move-object v1, v0

    const-string/jumbo v2, "codepoints-to-string"

    const-string/jumbo v3, "gnu.xquery.util.StringUtils"

    const-string/jumbo v4, "codepointsToString"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object v1, v0

    const-string/jumbo v2, "abs"

    const-string/jumbo v3, "gnu.xquery.util.NumberValue"

    const-string/jumbo v4, "abs"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object v1, v0

    const-string/jumbo v2, "floor"

    const-string/jumbo v3, "gnu.xquery.util.NumberValue"

    const-string/jumbo v4, "floor"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    move-object v1, v0

    const-string/jumbo v2, "ceiling"

    const-string/jumbo v3, "gnu.xquery.util.NumberValue"

    const-string/jumbo v4, "ceiling"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    move-object v1, v0

    const-string/jumbo v2, "round"

    const-string/jumbo v3, "gnu.xquery.util.NumberValue"

    const-string/jumbo v4, "round"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object v1, v0

    const-string/jumbo v2, "round-half-to-even"

    const-string/jumbo v3, "gnu.xquery.util.NumberValue"

    const-string/jumbo v4, "roundHalfToEven"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move-object v1, v0

    const-string/jumbo v2, "QName"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "makeQName"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    move-object v1, v0

    const-string/jumbo v2, "resolve-QName"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "resolveQNameUsingElement"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object v1, v0

    const-string/jumbo v2, "prefix-from-QName"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "prefixFromQName"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    move-object v1, v0

    const-string/jumbo v2, "local-name-from-QName"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "localNameFromQName"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    move-object v1, v0

    const-string/jumbo v2, "namespace-uri-from-QName"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "namespaceURIFromQName"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object v1, v0

    const-string/jumbo v2, "namespace-uri-for-prefix"

    const-string/jumbo v3, "gnu.xquery.util.QNameUtils"

    const-string/jumbo v4, "namespaceURIForPrefix"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    move-object v1, v0

    const-string/jumbo v2, "in-scope-prefixes"

    const-string/jumbo v3, "gnu.xquery.util.NodeUtils"

    const-string/jumbo v4, "inScopePrefixes$X"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object v1, v0

    const-string/jumbo v2, "document-uri"

    const-string/jumbo v3, "gnu.xquery.util.NodeUtils"

    const-string/jumbo v4, "documentUri"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    move-object v1, v0

    const-string/jumbo v2, "years-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "yearsFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    move-object v1, v0

    const-string/jumbo v2, "months-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "monthsFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object v1, v0

    const-string/jumbo v2, "days-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "daysFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object v1, v0

    const-string/jumbo v2, "hours-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "hoursFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object v1, v0

    const-string/jumbo v2, "minutes-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "minutesFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    move-object v1, v0

    const-string/jumbo v2, "seconds-from-duration"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "secondsFromDuration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    move-object v1, v0

    const-string/jumbo v2, "year-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "yearFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object v1, v0

    const-string/jumbo v2, "month-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "monthFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object v1, v0

    const-string/jumbo v2, "day-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "dayFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    move-object v1, v0

    const-string/jumbo v2, "hours-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "hoursFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object v1, v0

    const-string/jumbo v2, "minutes-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "minutesFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    move-object v1, v0

    const-string/jumbo v2, "seconds-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "secondsFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object v1, v0

    const-string/jumbo v2, "timezone-from-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "timezoneFromDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object v1, v0

    const-string/jumbo v2, "year-from-date"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "yearFromDate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object v1, v0

    const-string/jumbo v2, "month-from-date"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "monthFromDate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object v1, v0

    const-string/jumbo v2, "day-from-date"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "dayFromDate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    move-object v1, v0

    const-string/jumbo v2, "timezone-from-date"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "timezoneFromDate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object v1, v0

    const-string/jumbo v2, "hours-from-time"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "hoursFromTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    move-object v1, v0

    const-string/jumbo v2, "minutes-from-time"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "minutesFromTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object v1, v0

    const-string/jumbo v2, "seconds-from-time"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "secondsFromTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    move-object v1, v0

    const-string/jumbo v2, "timezone-from-time"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "timezoneFromTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    move-object v1, v0

    const-string/jumbo v2, "adjust-dateTime-to-timezone"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "adjustDateTimeToTimezone"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object v1, v0

    const-string/jumbo v2, "adjust-date-to-timezone"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "adjustDateToTimezone"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object v1, v0

    const-string/jumbo v2, "adjust-time-to-timezone"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "adjustTimeToTimezone"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object v1, v0

    const-string/jumbo v2, "dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "dateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object v1, v0

    const-string/jumbo v2, "current-dateTime"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "currentDateTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    move-object v1, v0

    const-string/jumbo v2, "current-date"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "currentDate"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object v1, v0

    const-string/jumbo v2, "current-time"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "currentTime"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object v1, v0

    const-string/jumbo v2, "implicit-timezone"

    const-string/jumbo v3, "gnu.xquery.util.TimeUtils"

    const-string/jumbo v4, "implicitTimezone"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object v1, v0

    const-string/jumbo v2, "zero-or-one"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "zeroOrOne"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    move-object v1, v0

    const-string/jumbo v2, "one-or-more"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "oneOrMore"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object v1, v0

    const-string/jumbo v2, "exactly-one"

    const-string/jumbo v3, "gnu.xquery.util.SequenceUtils"

    const-string/jumbo v4, "exactlyOne"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    move-object v1, v0

    const-string/jumbo v2, "distinct-nodes"

    const-string/jumbo v3, "gnu.kawa.xml.SortNodes"

    const-string/jumbo v4, "sortNodes"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object v1, v0

    const-string/jumbo v2, "children"

    const-string/jumbo v3, "gnu.kawa.xml.Children"

    const-string/jumbo v4, "children"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    move-object v1, v0

    const-string/jumbo v2, "not"

    const-string/jumbo v3, "gnu.xquery.util.BooleanValue"

    const-string/jumbo v4, "not"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    move-object v1, v0

    sget-object v2, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v2, v1, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 729
    move-object v1, v0

    const-string/jumbo v2, "response-header"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object v1, v0

    const-string/jumbo v2, "response-content-type"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object v1, v0

    const-string/jumbo v2, "response-status"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    move-object v1, v0

    const-string/jumbo v2, "error-response"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    move-object v1, v0

    const-string/jumbo v2, "current-servlet"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    move-object v1, v0

    const-string/jumbo v2, "current-servlet-context"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object v1, v0

    const-string/jumbo v2, "current-servlet-config"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    move-object v1, v0

    const-string/jumbo v2, "servlet-context-realpath"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    move-object v1, v0

    const-string/jumbo v2, "get-response"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    move-object v1, v0

    const-string/jumbo v2, "get-request"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object v1, v0

    const-string/jumbo v2, "request-method"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    move-object v1, v0

    const-string/jumbo v2, "request-uri"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    move-object v1, v0

    const-string/jumbo v2, "request-url"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object v1, v0

    const-string/jumbo v2, "request-path-info"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    move-object v1, v0

    const-string/jumbo v2, "request-path-translated"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object v1, v0

    const-string/jumbo v2, "request-servlet-path"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    move-object v1, v0

    const-string/jumbo v2, "request-query-string"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object v1, v0

    const-string/jumbo v2, "request-parameter"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    move-object v1, v0

    const-string/jumbo v2, "request-parameters"

    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    move-object v1, v0

    sget-object v2, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v2, v1, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 749
    return-void
.end method

.method public static makeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "source":Ljava/lang/String;
    move-object v3, v0

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 986
    move-object v3, v0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v1, v3

    .line 987
    .local v1, "sl":I
    move v3, v1

    if-ltz v3, :cond_0

    .line 988
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 989
    :cond_0
    move-object v3, v0

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 990
    .local v2, "dot":I
    move v3, v2

    if-ltz v3, :cond_1

    .line 991
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 992
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "source":Ljava/lang/String;
    return-object v0
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 979
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object v5, v1

    const/16 v6, 0x55

    invoke-static {v2, v3, v4, v5, v6}, Lgnu/xquery/lang/XQuery;->mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V

    .line 980
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method static mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V
    .locals 13

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "length":I
    move-object/from16 v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move/from16 v4, p4

    .local v4, "mode":C
    const/16 v10, 0x50

    move v5, v10

    .line 929
    .local v5, "prev":C
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    move v6, v10

    .line 930
    .local v6, "outStart":I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v2

    if-ge v10, v11, :cond_f

    .line 933
    move-object v10, v0

    move v11, v1

    move v12, v7

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v9, v10

    .line 934
    .local v9, "ch":C
    add-int/lit8 v7, v7, 0x1

    .line 935
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 937
    move v10, v5

    const/16 v11, 0x55

    if-ne v10, v11, :cond_0

    move v10, v7

    move v11, v2

    if-ge v10, v11, :cond_4

    move-object v10, v0

    move v11, v1

    move v12, v7

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    const/4 v10, 0x1

    :goto_1
    move v8, v10

    .line 940
    .local v8, "wordStart":Z
    const/16 v10, 0x55

    move v5, v10

    .line 967
    :goto_2
    move v10, v8

    if-nez v10, :cond_1

    move v10, v4

    const/16 v11, 0x5f

    if-ne v10, v11, :cond_3

    .line 969
    :cond_1
    move v10, v8

    if-eqz v10, :cond_2

    move v10, v4

    const/16 v11, 0x5f

    if-ne v10, v11, :cond_2

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    move v11, v6

    if-le v10, v11, :cond_2

    .line 970
    move-object v10, v3

    const/16 v11, 0x5f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 971
    :cond_2
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    move v9, v10

    .line 973
    :cond_3
    move-object v10, v3

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 974
    goto :goto_0

    .line 937
    .end local v8    # "wordStart":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 942
    :cond_5
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 944
    move v10, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_6

    move v10, v5

    const/16 v11, 0x55

    if-eq v10, v11, :cond_7

    :cond_6
    const/4 v10, 0x1

    :goto_3
    move v8, v10

    .line 945
    .restart local v8    # "wordStart":Z
    const/16 v10, 0x4c

    move v5, v10

    goto :goto_2

    .line 944
    .end local v8    # "wordStart":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 947
    :cond_8
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 949
    move v10, v5

    const/16 v11, 0x4f

    if-eq v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_4
    move v8, v10

    .line 950
    .restart local v8    # "wordStart":Z
    const/16 v10, 0x4f

    move v5, v10

    goto :goto_2

    .line 949
    .end local v8    # "wordStart":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 952
    :cond_a
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 954
    move v10, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_b

    const/4 v10, 0x1

    :goto_5
    move v8, v10

    .line 955
    .restart local v8    # "wordStart":Z
    const/16 v10, 0x44

    move v5, v10

    goto :goto_2

    .line 954
    .end local v8    # "wordStart":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 957
    :cond_c
    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 959
    move v10, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_d

    move v10, v5

    const/16 v11, 0x4d

    if-eq v10, v11, :cond_d

    const/4 v10, 0x1

    :goto_6
    move v8, v10

    .line 960
    .restart local v8    # "wordStart":Z
    const/16 v10, 0x4d

    move v5, v10

    goto/16 :goto_2

    .line 959
    .end local v8    # "wordStart":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_6

    .line 964
    :cond_e
    const/16 v10, 0x50

    move v5, v10

    .line 965
    goto/16 :goto_0

    .line 975
    .end local v9    # "ch":C
    :cond_f
    return-void
.end method

.method public static namespaceForFunctions(I)I
    .locals 3

    .prologue
    .line 202
    move v0, p0

    .local v0, "argCount":I
    move v1, v0

    const/4 v2, 0x2

    shl-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    or-int/lit8 v1, v1, 0x2

    move v0, v1

    .end local v0    # "argCount":I
    return v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 760
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 761
    return-void
.end method


# virtual methods
.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "values":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v3, v6

    .line 374
    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v6

    move v4, v6

    .line 377
    .local v4, "oldIndex":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    :try_start_0
    invoke-virtual {v6, v7, v8, v9}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 378
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0

    .line 380
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 382
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 383
    move-object v6, v5

    throw v6
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "position":I
    move/from16 v4, p4

    .local v4, "size":I
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v8

    move-object v5, v8

    .line 325
    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v8

    move v6, v8

    .line 328
    .local v6, "oldIndex":I
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    :try_start_0
    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    move v11, v4

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 329
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0

    .line 331
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 333
    .local v7, "ex":Ljava/lang/Throwable;
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 334
    move-object v8, v7

    throw v8
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v2, p2

    .local v2, "item":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "position":I
    move/from16 v4, p4

    .local v4, "size":I
    move-object/from16 v5, p5

    .local v5, "out":Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v9

    move-object v6, v9

    .line 299
    .local v6, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move v12, v4

    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 300
    move-object v9, v6

    iget-object v9, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v7, v9

    .line 303
    .local v7, "save":Lgnu/lists/Consumer;
    move-object v9, v6

    move-object v10, v5

    :try_start_0
    iput-object v10, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    move-object v9, v6

    move-object v10, v7

    iput-object v10, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 309
    .line 310
    return-void

    .line 308
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    move-object v10, v7

    iput-object v10, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v9, v8

    throw v9
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "values":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    move-object v4, v7

    .line 350
    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v4

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v5, v7

    .line 353
    .local v5, "save":Lgnu/lists/Consumer;
    move-object v7, v4

    move-object v8, v3

    :try_start_0
    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 354
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    move-object v7, v4

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 359
    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v7, v6

    throw v7
.end method

.method public applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v2, p2

    .local v2, "values":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/Values;

    if-eqz v9, :cond_2

    .line 402
    move-object v9, v2

    check-cast v9, Lgnu/mapping/Values;

    move-object v4, v9

    .line 403
    .local v4, "v":Lgnu/mapping/Values;
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/mapping/Values;->size()I

    move-result v9

    move v5, v9

    .line 404
    .local v5, "count":I
    move v9, v5

    if-nez v9, :cond_0

    .line 405
    .line 423
    .end local v4    # "v":Lgnu/mapping/Values;
    .end local v5    # "count":I
    :goto_0
    return-void

    .line 406
    .restart local v4    # "v":Lgnu/mapping/Values;
    .restart local v5    # "count":I
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    .line 407
    .local v6, "ipos":I
    move v9, v5

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    move-object v7, v9

    .line 408
    .local v7, "size":Lgnu/math/IntNum;
    const/4 v9, 0x1

    move v8, v9

    .line 410
    .local v8, "i":I
    :goto_1
    move-object v9, v1

    move-object v10, v4

    move v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v10

    move v11, v8

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object v12, v7

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 411
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 412
    move v9, v8

    move v10, v5

    if-ne v9, v10, :cond_1

    .line 413
    .line 416
    .line 423
    .end local v4    # "v":Lgnu/mapping/Values;
    .end local v5    # "count":I
    .end local v6    # "ipos":I
    .end local v7    # "size":Lgnu/math/IntNum;
    .end local v8    # "i":I
    :goto_2
    goto :goto_0

    .line 414
    .restart local v4    # "v":Lgnu/mapping/Values;
    .restart local v5    # "count":I
    .restart local v6    # "ipos":I
    .restart local v7    # "size":Lgnu/math/IntNum;
    .restart local v8    # "i":I
    :cond_1
    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v9

    move v6, v9

    .line 408
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 419
    .end local v4    # "v":Lgnu/mapping/Values;
    .end local v5    # "count":I
    .end local v6    # "ipos":I
    .end local v7    # "size":Lgnu/math/IntNum;
    .end local v8    # "i":I
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v9

    move-object v4, v9

    .line 420
    .local v4, "one":Lgnu/math/IntNum;
    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v4

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 421
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_2
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v3, v5

    .line 259
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v5, v2

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_0

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_0
    move-object v4, v5

    .line 260
    .local v4, "prop":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    return-void

    .line 259
    .end local v4    # "prop":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "mname":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v4, v7

    .line 268
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v7, v2

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v5, v7

    .line 269
    .local v5, "ctype":Lgnu/bytecode/ClassType;
    move-object v7, v5

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v0

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v7

    move-object v6, v7

    .line 270
    .local v6, "proc":Lgnu/mapping/Procedure;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 271
    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    move-object v8, v4

    sget-object v9, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object/from16 v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v8, v1

    instance-of v8, v8, Lgnu/mapping/InPort;

    if-eqz v8, :cond_0

    move-object v8, v1

    check-cast v8, Lgnu/mapping/InPort;

    :goto_0
    move-object v3, v8

    .line 453
    .local v3, "port":Lgnu/mapping/InPort;
    move-object v8, v0

    move-object v9, v3

    move-object v10, v2

    const v11, 0x10001

    invoke-virtual {v8, v9, v10, v11}, Lgnu/xquery/lang/XQuery;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v8

    move-object v4, v8

    .line 454
    .local v4, "comp":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v8

    move-object v5, v8

    .line 455
    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v8

    move v6, v8

    .line 458
    .local v6, "oldIndex":I
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    move-object v9, v5

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v8

    .line 459
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0

    .line 452
    .end local v3    # "port":Lgnu/mapping/InPort;
    .end local v4    # "comp":Lgnu/expr/Compilation;
    .end local v5    # "ctx":Lgnu/mapping/CallContext;
    .end local v6    # "oldIndex":I
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :cond_0
    new-instance v8, Lgnu/mapping/InPort;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 461
    .restart local v3    # "port":Lgnu/mapping/InPort;
    .restart local v4    # "comp":Lgnu/expr/Compilation;
    .restart local v5    # "ctx":Lgnu/mapping/CallContext;
    .restart local v6    # "oldIndex":I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 463
    .local v7, "ex":Ljava/lang/Throwable;
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 464
    move-object v8, v7

    throw v8
.end method

.method public evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/String;
    new-instance v4, Lgnu/text/SourceMessages;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lgnu/text/SourceMessages;-><init>()V

    move-object v2, v4

    .line 435
    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v4, v0

    new-instance v5, Lgnu/mapping/CharArrayInPort;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v4

    move-object v3, v4

    .line 436
    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid syntax in eval form:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 439
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/String;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    move v3, p3

    .local v3, "position":I
    move v4, p4

    .local v4, "size":I
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object/from16 v3, p3

    .local v3, "item":Ljava/lang/Object;
    move/from16 v4, p4

    .local v4, "position":I
    move/from16 v5, p5

    .local v5, "size":I
    move-object/from16 v6, p6

    .local v6, "out":Lgnu/lists/Consumer;
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v8

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V

    .line 522
    return-void
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "values":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 480
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;IILgnu/mapping/CallContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/String;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    move v3, p3

    .local v3, "position":I
    move/from16 v4, p4

    .local v4, "size":I
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v7

    move-object v6, v7

    .line 550
    .local v6, "proc":Lgnu/mapping/Procedure;
    move-object v7, v6

    move-object v8, v2

    move v9, v3

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    move v10, v4

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 551
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 536
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 857
    .local v2, "tname":Ljava/lang/String;
    const-string/jumbo v3, "gnu.math.IntNum"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    const-string/jumbo v3, "xs:integer"

    move-object v0, v3

    .line 862
    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    :goto_0
    return-object v0

    .line 859
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :cond_0
    const-string/jumbo v3, "java.lang.String"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "java.lang.CharSequence"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 861
    :cond_1
    const-string/jumbo v3, "xs:string"

    move-object v0, v3

    goto :goto_0

    .line 862
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 10

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "lexer":Lgnu/text/Lexer;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "lexical":Lgnu/expr/NameLookup;
    new-instance v4, Lgnu/expr/Compilation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "inp":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    new-instance v3, Lgnu/xquery/lang/XQParser;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    const-string/jumbo v1, "XQuery"

    move-object v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 212
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCode()I

    move-result v7

    if-gez v7, :cond_0

    .line 213
    const/4 v7, -0x2

    move v0, v7

    .line 238
    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    :goto_0
    return v0

    .line 214
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v2, v7

    .line 215
    .local v2, "value":Lgnu/expr/Expression;
    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_2

    .line 217
    move-object v7, v2

    check-cast v7, Lgnu/expr/LambdaExp;

    move-object v3, v7

    .line 218
    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v3

    iget v7, v7, Lgnu/expr/LambdaExp;->min_args:I

    move-object v8, v3

    iget v8, v8, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v7, v8, :cond_1

    .line 219
    move-object v7, v3

    iget v7, v7, Lgnu/expr/LambdaExp;->min_args:I

    invoke-static {v7}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 220
    .line 236
    .end local v3    # "lexp":Lgnu/expr/LambdaExp;
    :cond_1
    :goto_1
    const/4 v7, -0x2

    move v0, v7

    goto :goto_0

    .line 221
    :cond_2
    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_4

    .line 223
    move-object v7, v2

    check-cast v7, Lgnu/expr/QuoteExp;

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 224
    .local v3, "val":Ljava/lang/Object;
    move-object v7, v3

    instance-of v7, v7, Lgnu/mapping/Procedure;

    if-eqz v7, :cond_3

    .line 226
    move-object v7, v3

    check-cast v7, Lgnu/mapping/Procedure;

    move-object v4, v7

    .line 227
    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v7

    move v5, v7

    .line 228
    .local v5, "min":I
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v7

    move v6, v7

    .line 229
    .local v6, "max":I
    move v7, v5

    move v8, v6

    if-ne v7, v8, :cond_3

    .line 230
    move v7, v5

    invoke-static {v7}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 232
    .end local v4    # "proc":Lgnu/mapping/Procedure;
    .end local v5    # "min":I
    .end local v6    # "max":I
    :cond_3
    goto :goto_1

    .line 233
    .end local v3    # "val":Ljava/lang/Object;
    :cond_4
    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_1

    .line 234
    move-object v7, v0

    move-object v8, v2

    check-cast v8, Lgnu/expr/ReferenceExp;

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 238
    .end local v2    # "value":Lgnu/expr/Expression;
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 7

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    new-instance v2, Lgnu/xml/XMLPrinter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 4

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    new-instance v1, Lgnu/xquery/lang/Prompter;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lgnu/xquery/lang/Prompter;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 870
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    .line 894
    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 872
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 874
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_9

    .line 876
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 877
    .restart local v2    # "name":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "java.lang.String"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 878
    sget-object v3, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 879
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "gnu.kawa.xml.UntypedAtomic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 880
    sget-object v3, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 881
    :cond_3
    move-object v3, v2

    const-string/jumbo v4, "java.lang.Boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 882
    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 883
    :cond_4
    move-object v3, v2

    const-string/jumbo v4, "java.lang.Float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 884
    sget-object v3, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 885
    :cond_5
    move-object v3, v2

    const-string/jumbo v4, "java.lang.Double"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 886
    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 887
    :cond_6
    move-object v3, v2

    const-string/jumbo v4, "java.math.BigDecimal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 888
    sget-object v3, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 889
    :cond_7
    move-object v3, v2

    const-string/jumbo v4, "gnu.math.Duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 890
    sget-object v3, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto :goto_0

    .line 891
    :cond_8
    move-object v3, v2

    const-string/jumbo v4, "gnu.text.Path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 892
    sget-object v3, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    move-object v0, v3

    goto/16 :goto_0

    .line 894
    .end local v2    # "name":Ljava/lang/String;
    :cond_9
    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "xs:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 850
    .local v2, "core":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v4}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 851
    .local v3, "t":Lgnu/bytecode/Type;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    :goto_1
    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return-object v0

    .line 847
    .end local v2    # "core":Ljava/lang/String;
    .end local v3    # "t":Lgnu/bytecode/Type;
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "xdt:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_0

    .line 851
    .restart local v2    # "core":Ljava/lang/String;
    .restart local v3    # "t":Lgnu/bytecode/Type;
    :cond_2
    move-object v4, v1

    invoke-static {v4}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_1
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move v2, p2

    .local v2, "namespace":I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v4

    move v3, v4

    .line 244
    .local v3, "dnspace":I
    move v4, v3

    move v5, v2

    if-eq v4, v5, :cond_1

    move v4, v3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    move v4, v2

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    :cond_0
    move v4, v2

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return v0

    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    return v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQuery;
    move-object/from16 v1, p1

    .local v1, "tr":Lgnu/expr/Compilation;
    move/from16 v2, p2

    .local v2, "options":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v3, v11

    .line 109
    .local v3, "mexp":Lgnu/expr/ModuleExp;
    const/4 v11, 0x2

    sput v11, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 110
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 111
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v11, Lgnu/xquery/lang/XQParser;

    move-object v4, v11

    .line 112
    .local v4, "parser":Lgnu/xquery/lang/XQParser;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 114
    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v5, v11

    .line 115
    .local v5, "sexp":Lgnu/expr/Expression;
    move-object v11, v5

    if-nez v11, :cond_0

    .line 116
    const/4 v11, 0x0

    move v0, v11

    .line 193
    .end local v0    # "this":Lgnu/xquery/lang/XQuery;
    .end local v5    # "sexp":Lgnu/expr/Expression;
    :goto_0
    return v0

    .line 117
    .restart local v0    # "this":Lgnu/xquery/lang/XQuery;
    .restart local v5    # "sexp":Lgnu/expr/Expression;
    :cond_0
    move-object v11, v3

    move-object v12, v5

    iput-object v12, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 118
    .line 177
    .end local v5    # "sexp":Lgnu/expr/Expression;
    :goto_1
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 188
    new-instance v11, Lgnu/xquery/lang/XQResolveNames;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    invoke-direct {v12, v13}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    move-object v5, v11

    .line 189
    .local v5, "resolver":Lgnu/xquery/lang/XQResolveNames;
    move-object v11, v5

    move-object v12, v4

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v12, v11, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 190
    move-object v11, v5

    move-object v12, v4

    iput-object v12, v11, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 191
    move-object v11, v5

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 192
    move-object v11, v1

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->setState(I)V

    .line 193
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0

    .line 119
    .end local v5    # "resolver":Lgnu/xquery/lang/XQResolveNames;
    :cond_1
    move v11, v2

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    .line 121
    new-instance v11, Lgnu/expr/LambdaExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v5, v11

    .line 122
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    move-object v11, v5

    sget-object v12, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v6, v11

    .line 123
    .local v6, "dotDecl":Lgnu/expr/Declaration;
    move-object v11, v6

    const-wide/32 v12, 0x40000

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 124
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    move-object v11, v5

    sget-object v12, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v13, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v11

    .line 126
    move-object v11, v5

    sget-object v12, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v13, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v11

    .line 127
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 128
    move-object v11, v5

    move-object v12, v4

    move-object v13, v1

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 129
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 130
    move-object v11, v3

    move-object v12, v5

    iput-object v12, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 131
    goto :goto_1

    .line 134
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    .end local v6    # "dotDecl":Lgnu/expr/Declaration;
    :cond_2
    new-instance v11, Ljava/util/Vector;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Ljava/util/Vector;-><init>(I)V

    move-object v5, v11

    .line 135
    .local v5, "exps":Ljava/util/Vector;
    move-object v11, v3

    iget-object v11, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    move-object v6, v11

    .line 136
    .local v6, "sexp":Lgnu/expr/Expression;
    move-object v11, v6

    instance-of v11, v11, Lgnu/expr/BeginExp;

    if-eqz v11, :cond_4

    .line 138
    move-object v11, v6

    check-cast v11, Lgnu/expr/BeginExp;

    move-object v7, v11

    .line 139
    .local v7, "bexp":Lgnu/expr/BeginExp;
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v11

    move v8, v11

    .line 140
    .local v8, "blen":I
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v11

    move-object v9, v11

    .line 141
    .local v9, "bexps":[Lgnu/expr/Expression;
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_2
    move v11, v10

    move v12, v8

    if-ge v11, v12, :cond_3

    .line 142
    move-object v11, v5

    move-object v12, v9

    move v13, v10

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 143
    .line 150
    .end local v7    # "bexp":Lgnu/expr/BeginExp;
    .end local v8    # "blen":I
    .end local v9    # "bexps":[Lgnu/expr/Expression;
    .end local v10    # "i":I
    :cond_3
    :goto_3
    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v6, v11

    .line 151
    move-object v11, v6

    if-nez v11, :cond_5

    .line 153
    move-object v11, v4

    iget v11, v11, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-nez v11, :cond_6

    move-object v11, v4

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v11

    if-nez v11, :cond_6

    .line 155
    move-object v11, v4

    const/16 v12, 0x65

    const-string/jumbo v13, "empty module"

    const-string/jumbo v14, "XPST0003"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0

    .line 144
    :cond_4
    move-object v11, v6

    if-eqz v11, :cond_3

    move-object v11, v6

    sget-object v12, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-eq v11, v12, :cond_3

    .line 146
    move-object v11, v5

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 160
    :cond_5
    move-object v11, v5

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 162
    :cond_6
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    move v7, v11

    .line 163
    .local v7, "nexps":I
    move v11, v7

    if-nez v11, :cond_7

    .line 164
    move-object v11, v3

    sget-object v12, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v12, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 165
    :cond_7
    move v11, v7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 166
    move-object v11, v3

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/expr/Expression;

    iput-object v12, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 169
    :cond_8
    move v11, v7

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object v8, v11

    .line 170
    .local v8, "arr":[Lgnu/expr/Expression;
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 171
    move-object v11, v3

    new-instance v12, Lgnu/expr/BeginExp;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v8

    invoke-direct {v13, v14}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    iput-object v12, v11, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 198
    return-void
.end method
