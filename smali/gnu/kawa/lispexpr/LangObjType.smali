.class public Lgnu/kawa/lispexpr/LangObjType;
.super Lgnu/bytecode/ObjectType;
.source "LangObjType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field private static final CLASSTYPE_TYPE_CODE:I = 0x6

.field private static final CLASS_TYPE_CODE:I = 0x4

.field private static final DFLONUM_TYPE_CODE:I = 0xf

.field private static final FILEPATH_TYPE_CODE:I = 0x2

.field private static final INTEGER_TYPE_CODE:I = 0x7

.field private static final LIST_TYPE_CODE:I = 0xb

.field private static final NUMERIC_TYPE_CODE:I = 0xa

.field private static final PATH_TYPE_CODE:I = 0x1

.field private static final RATIONAL_TYPE_CODE:I = 0x8

.field private static final REAL_TYPE_CODE:I = 0x9

.field private static final REGEX_TYPE_CODE:I = 0xe

.field private static final STRING_TYPE_CODE:I = 0xd

.field private static final TYPE_TYPE_CODE:I = 0x5

.field public static final URIType:Lgnu/kawa/lispexpr/LangObjType;

.field private static final URI_TYPE_CODE:I = 0x3

.field static final VARARGS_SUFFIX:Ljava/lang/String; = ""

.field private static final VECTOR_TYPE_CODE:I = 0xc

.field public static final dflonumType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final filepathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final integerType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final listType:Lgnu/kawa/lispexpr/LangObjType;

.field static makeFilepathProc:Lgnu/expr/PrimProcedure;

.field static makePathProc:Lgnu/expr/PrimProcedure;

.field static makeURIProc:Lgnu/expr/PrimProcedure;

.field public static final numericType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final pathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final rationalType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final realType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final regexType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final stringType:Lgnu/kawa/lispexpr/LangObjType;

.field static final typeArithmetic:Lgnu/bytecode/ClassType;

.field public static final typeClass:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeClassType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeLangObjType:Lgnu/bytecode/ClassType;

.field public static final typeType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final vectorType:Lgnu/kawa/lispexpr/LangObjType;


# instance fields
.field implementationType:Lgnu/bytecode/ClassType;

.field final typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 34
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "path"

    const-string/jumbo v3, "gnu.text.Path"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 37
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "filepath"

    const-string/jumbo v3, "gnu.text.FilePath"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 40
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "URI"

    const-string/jumbo v3, "gnu.text.URIPath"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    .line 44
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "class"

    const-string/jumbo v3, "java.lang.Class"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    .line 47
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "gnu.bytecode.Type"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    .line 50
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "class-type"

    const-string/jumbo v3, "gnu.bytecode.ClassType"

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    .line 54
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "number"

    const-string/jumbo v3, "gnu.math.Numeric"

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    .line 58
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "real"

    const-string/jumbo v3, "gnu.math.RealNum"

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    .line 62
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "rational"

    const-string/jumbo v3, "gnu.math.RatNum"

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    .line 66
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "integer"

    const-string/jumbo v3, "gnu.math.IntNum"

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    .line 70
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "DFloNum"

    const-string/jumbo v3, "gnu.math.DFloNum"

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    .line 74
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "vector"

    const-string/jumbo v3, "gnu.lists.FVector"

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    .line 78
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "regex"

    const-string/jumbo v3, "java.util.regex.Pattern"

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->regexType:Lgnu/kawa/lispexpr/LangObjType;

    .line 82
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "java.lang.CharSequence"

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    .line 92
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "list"

    const-string/jumbo v3, "gnu.lists.LList"

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    .line 96
    const-string/jumbo v0, "gnu.kawa.functions.Arithmetic"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeArithmetic:Lgnu/bytecode/ClassType;

    .line 196
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "gnu.text.Path"

    const-string/jumbo v3, "valueOf"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    .line 198
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "gnu.text.FilePath"

    const-string/jumbo v3, "makeFilePath"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    .line 200
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "gnu.text.URIPath"

    const-string/jumbo v3, "makeURI"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    .line 597
    const-string/jumbo v0, "gnu.kawa.lispexpr.LangObjType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "implClass":Ljava/lang/String;
    move v3, p3

    .local v3, "typeCode":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 102
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 103
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    .line 104
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/lispexpr/LangObjType;->setSignature(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static coerceDFloNum(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .locals 8

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/DFloNum;->asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;

    move-result-object v2

    move-object v1, v2

    .line 240
    .local v1, "rval":Lgnu/math/DFloNum;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x4

    move-object v5, v0

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v2

    .line 242
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 8

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    .line 256
    .local v1, "ival":Lgnu/math/IntNum;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x4

    move-object v5, v0

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v2

    .line 258
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v1, v2

    .line 224
    .local v1, "rval":Lgnu/math/Numeric;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x4

    move-object v5, v0

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v2

    .line 226
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 8

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    .line 248
    .local v1, "rval":Lgnu/math/RatNum;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 249
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x4

    move-object v5, v0

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v2

    .line 250
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/RealNum;->asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2

    move-object v1, v2

    .line 232
    .local v1, "rval":Lgnu/math/RealNum;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 233
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x4

    move-object v5, v0

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v2

    .line 234
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 7

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 278
    .local v1, "coerced":Ljava/lang/Class;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 279
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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "type":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 264
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    .line 272
    .end local v0    # "type":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 265
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    .line 267
    move-object v1, v0

    instance-of v1, v1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/PairClassType;

    if-nez v1, :cond_1

    .line 269
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v1, v2

    .line 300
    .local v1, "coerced":Lgnu/bytecode/ClassType;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 301
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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to class-type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "type":Ljava/lang/Object;
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    .line 286
    move-object v3, v0

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v0, v3

    .line 294
    .end local v0    # "type":Ljava/lang/Object;
    .local v1, "language":Lgnu/expr/Language;
    .local v2, "t":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 287
    .end local v1    # "language":Lgnu/expr/Language;
    .end local v2    # "t":Lgnu/bytecode/Type;
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 289
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    move-object v1, v3

    .line 290
    .restart local v1    # "language":Lgnu/expr/Language;
    move-object v3, v1

    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 291
    .restart local v2    # "t":Lgnu/bytecode/Type;
    move-object v3, v2

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_1

    .line 292
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v0, v3

    goto :goto_0

    .line 294
    .end local v1    # "language":Lgnu/expr/Language;
    .end local v2    # "t":Lgnu/bytecode/Type;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 320
    .local v1, "coerced":Lgnu/bytecode/Type;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 321
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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "type":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    .line 308
    move-object v2, v0

    check-cast v2, Lgnu/bytecode/Type;

    move-object v0, v2

    .line 314
    .end local v0    # "type":Ljava/lang/Object;
    .local v1, "language":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .line 309
    .end local v1    # "language":Lgnu/expr/Language;
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 311
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v1, v2

    .line 312
    .restart local v1    # "language":Lgnu/expr/Language;
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 314
    .end local v1    # "language":Lgnu/expr/Language;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v2, :pswitch_data_0

    .line 461
    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/ObjectType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_0
    return-object v0

    .line 435
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :pswitch_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 437
    :pswitch_2
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 439
    :pswitch_3
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 441
    :pswitch_4
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 443
    :pswitch_5
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 445
    :pswitch_6
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 447
    :pswitch_7
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 449
    :pswitch_8
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 451
    :pswitch_9
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 453
    :pswitch_a
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 455
    :pswitch_b
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceDFloNum(Ljava/lang/Object;)Lgnu/math/DFloNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method coercionMethod()Lgnu/bytecode/Method;
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v1, :pswitch_data_0

    .line 351
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v1

    check-cast v1, Lgnu/expr/PrimProcedure;

    invoke-virtual {v1}, Lgnu/expr/PrimProcedure;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_0
    return-object v0

    .line 330
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :pswitch_0
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceToClass"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 332
    :pswitch_1
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceToClassType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 334
    :pswitch_2
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceToType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 336
    :pswitch_3
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceNumeric"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 338
    :pswitch_4
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceRealNum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 340
    :pswitch_5
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceRatNum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 342
    :pswitch_6
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceIntNum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 344
    :pswitch_7
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "coerceDFloNum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 349
    :pswitch_8
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method coercionOrNullMethod()Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 359
    .local v1, "methodDeclaringClass":Lgnu/bytecode/ClassType;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v3, :pswitch_data_0

    .line 403
    :pswitch_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 405
    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_0
    return-object v0

    .line 362
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :pswitch_1
    const-string/jumbo v3, "coerceToPathOrNull"

    move-object v2, v3

    .line 405
    .local v2, "mname":Ljava/lang/String;
    :goto_1
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 365
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "coerceToFilePathOrNull"

    move-object v2, v3

    .line 366
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 368
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "coerceToURIPathOrNull"

    move-object v2, v3

    .line 369
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 371
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_4
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 372
    const-string/jumbo v3, "coerceToClassOrNull"

    move-object v2, v3

    .line 373
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 375
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_5
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 376
    const-string/jumbo v3, "coerceToClassTypeOrNull"

    move-object v2, v3

    .line 377
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 379
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_6
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 380
    const-string/jumbo v3, "coerceToTypeOrNull"

    move-object v2, v3

    .line 381
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 383
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_7
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 384
    const-string/jumbo v3, "asNumericOrNull"

    move-object v2, v3

    .line 385
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 387
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_8
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 388
    const-string/jumbo v3, "asDFloNumOrNull"

    move-object v2, v3

    .line 389
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 391
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_9
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 392
    const-string/jumbo v3, "asRealNumOrNull"

    move-object v2, v3

    .line 393
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 395
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_a
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 396
    const-string/jumbo v3, "asRatNumOrNull"

    move-object v2, v3

    .line 397
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 399
    .end local v2    # "mname":Ljava/lang/String;
    :pswitch_b
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 400
    const-string/jumbo v3, "asIntNumOrNull"

    move-object v2, v3

    .line 401
    .restart local v2    # "mname":Ljava/lang/String;
    goto :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v3, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/LangObjType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_1
    return v0

    .line 114
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :pswitch_1
    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    .line 117
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 120
    :pswitch_2
    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_2

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_2

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_2

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_3

    .line 123
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 125
    :cond_3
    :pswitch_3
    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_4

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_5

    .line 126
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 127
    :cond_5
    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq v3, v4, :cond_6

    move-object v3, v1

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    .line 128
    :cond_6
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 131
    :pswitch_4
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_7

    .line 133
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 134
    .local v2, "sig1":C
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 142
    .end local v2    # "sig1":C
    :cond_7
    :pswitch_5
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 145
    .restart local v2    # "sig1":C
    move v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 148
    :pswitch_7
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_1

    .line 137
    :sswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_1

    .line 544
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 550
    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_0
    return-object v0

    .line 545
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LangObjType;->coercionMethod()Lgnu/bytecode/Method;

    move-result-object v4

    move-object v2, v4

    .line 546
    .local v2, "method":Lgnu/bytecode/Method;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 547
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 548
    :cond_2
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v3, v4

    .line 549
    .local v3, "aexp":Lgnu/expr/ApplyExp;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 550
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v2, :pswitch_data_0

    .line 564
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/LangObjType;->coercionMethod()Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 566
    :goto_0
    return-void

    .line 561
    :pswitch_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 562
    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V
    .locals 12

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "stackType":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    const/4 v7, 0x0

    move-object v3, v7

    .line 468
    .local v3, "argType":Lgnu/bytecode/Type;
    const/4 v7, 0x0

    move-object v4, v7

    .line 469
    .local v4, "cname":Ljava/lang/String;
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v7, :pswitch_data_0

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    move-object v7, v4

    if-eqz v7, :cond_8

    .line 527
    move-object v7, v4

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v5, v7

    .line 528
    .local v5, "clas":Lgnu/bytecode/ClassType;
    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v6, v7

    .line 529
    .local v6, "args":[Lgnu/bytecode/Type;
    move-object v7, v2

    move-object v8, v5

    const-string/jumbo v9, "make"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 530
    .line 533
    .end local v5    # "clas":Lgnu/bytecode/ClassType;
    .end local v6    # "args":[Lgnu/bytecode/Type;
    :goto_1
    return-void

    .line 472
    :pswitch_1
    move-object v7, v1

    instance-of v7, v7, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_0

    .line 474
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_1

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_1

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_1

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_1

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_2

    .line 480
    :cond_1
    move-object v7, v2

    move-object v8, v1

    sget-object v9, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 481
    sget-object v7, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object v1, v7

    .line 483
    :cond_2
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_0

    .line 485
    const-string/jumbo v7, "gnu.math.DFloNum"

    move-object v4, v7

    .line 486
    move-object v7, v1

    move-object v3, v7

    goto :goto_0

    .line 494
    :pswitch_2
    move-object v7, v1

    instance-of v7, v7, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_0

    .line 496
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_3

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    if-eq v7, v8, :cond_3

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_4

    .line 500
    :cond_3
    const-string/jumbo v7, "gnu.math.IntNum"

    move-object v4, v7

    .line 501
    sget-object v7, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    move-object v3, v7

    goto :goto_0

    .line 503
    :cond_4
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_5

    .line 505
    const-string/jumbo v7, "gnu.math.IntNum"

    move-object v4, v7

    .line 506
    sget-object v7, Lgnu/bytecode/Type;->long_type:Lgnu/bytecode/PrimType;

    move-object v3, v7

    goto :goto_0

    .line 508
    :cond_5
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_6

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 511
    :cond_6
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_7

    .line 513
    move-object v7, v2

    sget-object v8, Lgnu/bytecode/Type;->float_type:Lgnu/bytecode/PrimType;

    sget-object v9, Lgnu/bytecode/Type;->double_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 514
    sget-object v7, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object v1, v7

    .line 516
    :cond_7
    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    if-ne v7, v8, :cond_0

    .line 518
    const-string/jumbo v7, "gnu.math.DFloNum"

    move-object v4, v7

    .line 519
    sget-object v7, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object v3, v7

    goto/16 :goto_0

    .line 532
    :cond_8
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lgnu/bytecode/ObjectType;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    goto/16 :goto_1

    .line 469
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v4, :pswitch_data_0

    .line 217
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 219
    :goto_0
    return-void

    .line 212
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 213
    move-object v4, v3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 215
    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v4, v6

    .line 411
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 412
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 413
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LangObjType;->coercionOrNullMethod()Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 414
    .local v5, "method":Lgnu/bytecode/Method;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 415
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 416
    :cond_1
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 418
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 419
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 421
    :cond_2
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 422
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 426
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    goto :goto_0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 7

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v1, :pswitch_data_0

    .line 593
    :pswitch_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :goto_0
    return-object v0

    .line 579
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    :pswitch_1
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    move-object v0, v1

    goto :goto_0

    .line 581
    :pswitch_2
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    move-object v0, v1

    goto :goto_0

    .line 583
    :pswitch_3
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    move-object v0, v1

    goto :goto_0

    .line 585
    :pswitch_4
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "gnu.lists.FVector"

    const-string/jumbo v4, "make"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 587
    :pswitch_5
    sget-object v1, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    move-object v0, v1

    goto :goto_0

    .line 589
    :pswitch_6
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "kawa.lib.strings"

    const-string/jumbo v4, "$make$string$"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 591
    :pswitch_7
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "java.util.regex.Pattern"

    const-string/jumbo v4, "compile"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "argCount":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "mask":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg_types":[Lgnu/bytecode/Type;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    move-object v3, p3

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return v0
.end method

.method public getRealType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangObjType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangObjType;
    return-object v0
.end method
