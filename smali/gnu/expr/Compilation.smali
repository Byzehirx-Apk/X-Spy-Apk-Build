.class public Lgnu/expr/Compilation;
.super Ljava/lang/Object;
.source "Compilation.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static final BODY_PARSED:I = 0x4

.field public static final CALL_WITH_CONSUMER:I = 0x2

.field public static final CALL_WITH_CONTINUATIONS:I = 0x4

.field public static final CALL_WITH_RETURN:I = 0x1

.field public static final CALL_WITH_TAILCALLS:I = 0x3

.field public static final CALL_WITH_UNSPECIFIED:I = 0x0

.field public static final CLASS_WRITTEN:I = 0xe

.field public static final COMPILED:I = 0xc

.field public static final COMPILE_SETUP:I = 0xa

.field public static final ERROR_SEEN:I = 0x64

.field public static final MODULE_NONSTATIC:I = -0x1

.field public static final MODULE_STATIC:I = 0x1

.field public static final MODULE_STATIC_DEFAULT:I = 0x0

.field public static final MODULE_STATIC_RUN:I = 0x2

.field public static final PROLOG_PARSED:I = 0x2

.field public static final PROLOG_PARSING:I = 0x1

.field public static final RESOLVED:I = 0x6

.field public static final WALKED:I = 0x8

.field public static apply0args:[Lgnu/bytecode/Type;

.field public static apply0method:Lgnu/bytecode/Method;

.field public static apply1args:[Lgnu/bytecode/Type;

.field public static apply1method:Lgnu/bytecode/Method;

.field public static apply2args:[Lgnu/bytecode/Type;

.field public static apply2method:Lgnu/bytecode/Method;

.field public static apply3method:Lgnu/bytecode/Method;

.field public static apply4method:Lgnu/bytecode/Method;

.field private static applyCpsArgs:[Lgnu/bytecode/Type;

.field public static applyCpsMethod:Lgnu/bytecode/Method;

.field public static applyNargs:[Lgnu/bytecode/Type;

.field public static applyNmethod:Lgnu/bytecode/Method;

.field public static applymethods:[Lgnu/bytecode/Method;

.field public static argsCallContextField:Lgnu/bytecode/Field;

.field private static chainUninitialized:Lgnu/expr/Compilation;

.field static checkArgCountMethod:Lgnu/bytecode/Method;

.field public static classPrefixDefault:Ljava/lang/String;

.field private static final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/expr/Compilation;",
            ">;"
        }
    .end annotation
.end field

.field public static debugPrintExpr:Z

.field public static debugPrintFinalExpr:Z

.field public static defaultCallConvention:I

.field public static defaultClassFileVersion:I

.field public static emitSourceDebugExtAttr:Z

.field public static final falseConstant:Lgnu/bytecode/Field;

.field public static generateMainDefault:Z

.field public static getCallContextInstanceMethod:Lgnu/bytecode/Method;

.field public static getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocationMethod:Lgnu/bytecode/Method;

.field public static final getProcedureBindingMethod:Lgnu/bytecode/Method;

.field public static final getSymbolProcedureMethod:Lgnu/bytecode/Method;

.field public static final getSymbolValueMethod:Lgnu/bytecode/Method;

.field public static inlineOk:Z

.field public static final int1Args:[Lgnu/bytecode/Type;

.field public static javaStringType:Lgnu/bytecode/ClassType;

.field static makeListMethod:Lgnu/bytecode/Method;

.field public static moduleStatic:I

.field public static noArgsField:Lgnu/bytecode/Field;

.field public static final objArrayType:Lgnu/bytecode/ArrayType;

.field public static options:Lgnu/text/Options;

.field public static pcCallContextField:Lgnu/bytecode/Field;

.field public static procCallContextField:Lgnu/bytecode/Field;

.field public static scmBooleanType:Lgnu/bytecode/ClassType;

.field public static scmKeywordType:Lgnu/bytecode/ClassType;

.field public static scmListType:Lgnu/bytecode/ClassType;

.field public static scmSequenceType:Lgnu/bytecode/ClassType;

.field static final setNameMethod:Lgnu/bytecode/Method;

.field public static final string1Arg:[Lgnu/bytecode/Type;

.field public static final sym1Arg:[Lgnu/bytecode/Type;

.field public static final trueConstant:Lgnu/bytecode/Field;

.field public static typeApplet:Lgnu/bytecode/ClassType;

.field public static typeCallContext:Lgnu/bytecode/ClassType;

.field public static typeClass:Lgnu/bytecode/ClassType;

.field public static typeClassType:Lgnu/bytecode/ClassType;

.field public static final typeConsumer:Lgnu/bytecode/ClassType;

.field public static typeEnvironment:Lgnu/bytecode/ClassType;

.field public static typeLanguage:Lgnu/bytecode/ClassType;

.field public static typeLocation:Lgnu/bytecode/ClassType;

.field public static typeMethodProc:Lgnu/bytecode/ClassType;

.field public static typeModuleBody:Lgnu/bytecode/ClassType;

.field public static typeModuleMethod:Lgnu/bytecode/ClassType;

.field public static typeModuleWithContext:Lgnu/bytecode/ClassType;

.field public static typeObject:Lgnu/bytecode/ClassType;

.field public static typeObjectType:Lgnu/bytecode/ClassType;

.field public static typePair:Lgnu/bytecode/ClassType;

.field public static typeProcedure:Lgnu/bytecode/ClassType;

.field public static typeProcedure0:Lgnu/bytecode/ClassType;

.field public static typeProcedure1:Lgnu/bytecode/ClassType;

.field public static typeProcedure2:Lgnu/bytecode/ClassType;

.field public static typeProcedure3:Lgnu/bytecode/ClassType;

.field public static typeProcedure4:Lgnu/bytecode/ClassType;

.field public static typeProcedureArray:[Lgnu/bytecode/ClassType;

.field public static typeProcedureN:Lgnu/bytecode/ClassType;

.field public static typeRunnable:Lgnu/bytecode/ClassType;

.field public static typeServlet:Lgnu/bytecode/ClassType;

.field public static typeString:Lgnu/bytecode/ClassType;

.field public static typeSymbol:Lgnu/bytecode/ClassType;

.field public static typeType:Lgnu/bytecode/ClassType;

.field public static typeValues:Lgnu/bytecode/ClassType;

.field public static warnAsError:Lgnu/text/Options$OptionInfo;

.field public static warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

.field public static warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

.field public static warnUnknownMember:Lgnu/text/Options$OptionInfo;


# instance fields
.field callContextVar:Lgnu/bytecode/Variable;

.field callContextVarForInit:Lgnu/bytecode/Variable;

.field public classPrefix:Ljava/lang/String;

.field classes:[Lgnu/bytecode/ClassType;

.field clinitChain:Lgnu/expr/Initializer;

.field clinitMethod:Lgnu/bytecode/Method;

.field public curClass:Lgnu/bytecode/ClassType;

.field public curLambda:Lgnu/expr/LambdaExp;

.field public currentOptions:Lgnu/text/Options;

.field protected current_scope:Lgnu/expr/ScopeExp;

.field public explicit:Z

.field public exprStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lgnu/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field forNameHelper:Lgnu/bytecode/Method;

.field fswitch:Lgnu/bytecode/SwitchState;

.field fswitchIndex:Lgnu/bytecode/Field;

.field public generateMain:Z

.field public immediate:Z

.field private keyUninitialized:I

.field langOptions:I

.field protected language:Lgnu/expr/Language;

.field public lexer:Lgnu/text/Lexer;

.field public lexical:Lgnu/expr/NameLookup;

.field litTable:Lgnu/expr/LitTable;

.field loader:Lgnu/bytecode/ArrayClassLoader;

.field localFieldIndex:I

.field public mainClass:Lgnu/bytecode/ClassType;

.field public mainLambda:Lgnu/expr/ModuleExp;

.field maxSelectorValue:I

.field protected messages:Lgnu/text/SourceMessages;

.field public method:Lgnu/bytecode/Method;

.field method_counter:I

.field public minfo:Lgnu/expr/ModuleInfo;

.field public moduleClass:Lgnu/bytecode/ClassType;

.field moduleInstanceMainField:Lgnu/bytecode/Field;

.field moduleInstanceVar:Lgnu/bytecode/Variable;

.field public mustCompile:Z

.field private nextUninitialized:Lgnu/expr/Compilation;

.field numClasses:I

.field pedantic:Z

.field public pendingImports:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field public thisDecl:Lgnu/bytecode/Variable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 107
    const/4 v3, 0x0

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintExpr:Z

    .line 112
    new-instance v3, Lgnu/text/Options;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lgnu/text/Options;-><init>()V

    sput-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    .line 113
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string/jumbo v4, "warn-undefined-variable"

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v7, "warn if no compiler-visible binding for a variable"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    .line 117
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string/jumbo v4, "warn-unknown-member"

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v7, "warn if referencing an unknown method or field"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    .line 121
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string/jumbo v4, "warn-invoke-unknown-method"

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    const-string/jumbo v7, "warn if invoke calls an unknown method (subsumed by warn-unknown-member)"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    .line 125
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string/jumbo v4, "warn-as-error"

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v7, "Make all warnings into errors"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    .line 160
    const/high16 v3, 0x310000    # 4.49994E-39f

    sput v3, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 201
    const/4 v3, 0x0

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    .line 232
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    sput-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    .line 233
    const-string/jumbo v3, "java.lang.Boolean"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .line 234
    const-string/jumbo v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    .line 235
    sget-object v3, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    sput-object v3, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    .line 236
    const-string/jumbo v3, "gnu.expr.Keyword"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    .line 237
    const-string/jumbo v3, "gnu.lists.Sequence"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    .line 238
    const-string/jumbo v3, "gnu.lists.LList"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    .line 239
    const-string/jumbo v3, "gnu.lists.Pair"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    .line 240
    sget-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-static {v3}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 241
    const-string/jumbo v3, "java.lang.Runnable"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    .line 242
    const-string/jumbo v3, "gnu.bytecode.Type"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    .line 243
    const-string/jumbo v3, "gnu.bytecode.ObjectType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    .line 245
    sget-object v3, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    .line 246
    const-string/jumbo v3, "gnu.bytecode.ClassType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    .line 247
    const-string/jumbo v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .line 249
    const-string/jumbo v3, "gnu.expr.Language"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    .line 251
    const-string/jumbo v3, "gnu.mapping.Environment"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    .line 253
    const-string/jumbo v3, "gnu.mapping.Location"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 255
    const-string/jumbo v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    .line 257
    sget-object v3, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getSymbolValue"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getSymbolValueMethod:Lgnu/bytecode/Method;

    .line 259
    sget-object v3, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getSymbolProcedure"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getSymbolProcedureMethod:Lgnu/bytecode/Method;

    .line 261
    sget-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "get"

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    .line 264
    sget-object v3, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getProcedure"

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getProcedureBindingMethod:Lgnu/bytecode/Method;

    .line 267
    sget-object v3, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    .line 269
    sget-object v3, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "FALSE"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    .line 272
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "setName"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->setNameMethod:Lgnu/bytecode/Method;

    .line 276
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->int1Args:[Lgnu/bytecode/Type;

    .line 277
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    .line 278
    sget-object v3, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sput-object v3, Lgnu/expr/Compilation;->sym1Arg:[Lgnu/bytecode/Type;

    .line 280
    sget-object v3, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getLocation"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

    .line 284
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v0, v3

    .line 285
    .local v0, "args":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getLocation"

    move-object v5, v0

    sget-object v6, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

    .line 291
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v6, v4, v5

    move-object v0, v3

    .line 292
    .local v0, "makeListArgs":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "makeList"

    move-object v5, v0

    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const/16 v7, 0x9

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    .line 297
    sget-object v3, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getCurrent"

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const/16 v7, 0x9

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

    .line 301
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sput-object v3, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 302
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    .line 303
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    .line 304
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    .line 308
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply0"

    sget-object v5, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    .line 319
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply1"

    sget-object v5, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    .line 321
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply2"

    sget-object v5, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    .line 323
    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v0, v3

    .line 324
    .local v0, "apply3args":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply3"

    move-object v5, v0

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    .line 326
    const/4 v3, 0x4

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v1, v3

    .line 327
    .local v1, "apply4args":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply4"

    move-object v5, v1

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    .line 329
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "applyN"

    sget-object v5, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .line 331
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v2, v3

    .line 332
    .local v2, "args":[Lgnu/bytecode/Type;
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v4

    .line 333
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v5, v3, v4

    .line 334
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "checkArgCount"

    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v7, 0x9

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->checkArgCountMethod:Lgnu/bytecode/Method;

    .line 339
    const/4 v3, 0x6

    new-array v3, v3, [Lgnu/bytecode/Method;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    sget-object v6, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-object v6, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    sget-object v6, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    sget-object v6, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .line 343
    const-string/jumbo v3, "gnu.mapping.Procedure0"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    .line 345
    const-string/jumbo v3, "gnu.mapping.Procedure1"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    .line 347
    const-string/jumbo v3, "gnu.mapping.Procedure2"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    .line 349
    const-string/jumbo v3, "gnu.mapping.Procedure3"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    .line 351
    const-string/jumbo v3, "gnu.mapping.Procedure4"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    .line 353
    const-string/jumbo v3, "gnu.mapping.ProcedureN"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    .line 355
    const-string/jumbo v3, "gnu.expr.ModuleBody"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    .line 357
    const-string/jumbo v3, "gnu.expr.ModuleWithContext"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    .line 359
    const-string/jumbo v3, "java.applet.Applet"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 360
    const-string/jumbo v3, "gnu.kawa.servlet.KawaServlet"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    .line 363
    const-string/jumbo v3, "gnu.mapping.CallContext"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 365
    const-string/jumbo v3, "gnu.lists.Consumer"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    .line 369
    const-string/jumbo v3, "gnu.mapping.Values"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 371
    sget-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "noArgs"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    .line 373
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "pc"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    .line 375
    const-string/jumbo v3, "gnu.mapping.MethodProc"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    .line 377
    const-string/jumbo v3, "gnu.expr.ModuleMethod"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 380
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "values"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->argsCallContextField:Lgnu/bytecode/Field;

    .line 382
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "proc"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    .line 384
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    .line 385
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v4, "apply"

    sget-object v5, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->applyCpsMethod:Lgnu/bytecode/Method;

    .line 389
    const/4 v3, 0x5

    new-array v3, v3, [Lgnu/bytecode/ClassType;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    sput-object v3, Lgnu/expr/Compilation;->typeProcedureArray:[Lgnu/bytecode/ClassType;

    .line 396
    const/4 v3, 0x0

    sput-boolean v3, Lgnu/expr/Compilation;->generateMainDefault:Z

    .line 459
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    .line 620
    const-string/jumbo v3, ""

    sput-object v3, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    .line 1080
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    .line 2971
    new-instance v3, Ljava/lang/InheritableThreadLocal;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v3, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 9

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "lexical":Lgnu/expr/NameLookup;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v4, v0

    sget-boolean v5, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    iput-boolean v5, v4, Lgnu/expr/Compilation;->mustCompile:Z

    .line 129
    move-object v4, v0

    new-instance v5, Lgnu/text/Options;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-direct {v6, v7}, Lgnu/text/Options;-><init>(Lgnu/text/Options;)V

    iput-object v5, v4, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    .line 398
    move-object v4, v0

    sget-boolean v5, Lgnu/expr/Compilation;->generateMainDefault:Z

    iput-boolean v5, v4, Lgnu/expr/Compilation;->generateMain:Z

    .line 622
    move-object v4, v0

    sget-object v5, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    iput-object v5, v4, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    .line 977
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    .line 978
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    .line 979
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    .line 980
    return-void
.end method

.method private checkLoop()V
    .locals 5

    .prologue
    .line 2696
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%do%loop"

    if-eq v1, v2, :cond_0

    .line 2697
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "internal error - bad loop state"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2698
    :cond_0
    return-void
.end method

.method public static demangle2(CC)C
    .locals 4

    .prologue
    .line 844
    move v0, p0

    .local v0, "char1":C
    move v1, p1

    .local v1, "char2":C
    move v2, v0

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move v3, v1

    or-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 876
    const v2, 0xffff

    move v0, v2

    .end local v0    # "char1":C
    :goto_0
    return v0

    .line 846
    .restart local v0    # "char1":C
    :sswitch_0
    const/16 v2, 0x26

    move v0, v2

    goto :goto_0

    .line 847
    :sswitch_1
    const/16 v2, 0x40

    move v0, v2

    goto :goto_0

    .line 848
    :sswitch_2
    const/16 v2, 0x3a

    move v0, v2

    goto :goto_0

    .line 849
    :sswitch_3
    const/16 v2, 0x2c

    move v0, v2

    goto :goto_0

    .line 850
    :sswitch_4
    const/16 v2, 0x22

    move v0, v2

    goto :goto_0

    .line 851
    :sswitch_5
    const/16 v2, 0x2e

    move v0, v2

    goto :goto_0

    .line 852
    :sswitch_6
    const/16 v2, 0x3d

    move v0, v2

    goto :goto_0

    .line 853
    :sswitch_7
    const/16 v2, 0x21

    move v0, v2

    goto :goto_0

    .line 854
    :sswitch_8
    const/16 v2, 0x3e

    move v0, v2

    goto :goto_0

    .line 855
    :sswitch_9
    const/16 v2, 0x5b

    move v0, v2

    goto :goto_0

    .line 856
    :sswitch_a
    const/16 v2, 0x7b

    move v0, v2

    goto :goto_0

    .line 857
    :sswitch_b
    const/16 v2, 0x28

    move v0, v2

    goto :goto_0

    .line 858
    :sswitch_c
    const/16 v2, 0x3c

    move v0, v2

    goto :goto_0

    .line 859
    :sswitch_d
    const/16 v2, 0x25

    move v0, v2

    goto :goto_0

    .line 860
    :sswitch_e
    const/16 v2, 0x2d

    move v0, v2

    goto :goto_0

    .line 861
    :sswitch_f
    const/16 v2, 0x23

    move v0, v2

    goto :goto_0

    .line 862
    :sswitch_10
    const/16 v2, 0x25

    move v0, v2

    goto :goto_0

    .line 863
    :sswitch_11
    const/16 v2, 0x2b

    move v0, v2

    goto :goto_0

    .line 864
    :sswitch_12
    const/16 v2, 0x3f

    move v0, v2

    goto :goto_0

    .line 865
    :sswitch_13
    const/16 v2, 0x5d

    move v0, v2

    goto :goto_0

    .line 866
    :sswitch_14
    const/16 v2, 0x7d

    move v0, v2

    goto :goto_0

    .line 867
    :sswitch_15
    const/16 v2, 0x29

    move v0, v2

    goto :goto_0

    .line 868
    :sswitch_16
    const/16 v2, 0x3b

    move v0, v2

    goto :goto_0

    .line 869
    :sswitch_17
    const/16 v2, 0x2f

    move v0, v2

    goto :goto_0

    .line 870
    :sswitch_18
    const/16 v2, 0x5c

    move v0, v2

    goto :goto_0

    .line 871
    :sswitch_19
    const/16 v2, 0x2a

    move v0, v2

    goto :goto_0

    .line 872
    :sswitch_1a
    const/16 v2, 0x7e

    move v0, v2

    goto :goto_0

    .line 873
    :sswitch_1b
    const/16 v2, 0x5e

    move v0, v2

    goto :goto_0

    .line 874
    :sswitch_1c
    const/16 v2, 0x7c

    move v0, v2

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x41006d -> :sswitch_0
        0x410074 -> :sswitch_1
        0x43006c -> :sswitch_2
        0x43006d -> :sswitch_3
        0x440071 -> :sswitch_4
        0x440074 -> :sswitch_5
        0x450071 -> :sswitch_6
        0x450078 -> :sswitch_7
        0x470072 -> :sswitch_8
        0x4c0042 -> :sswitch_9
        0x4c0043 -> :sswitch_a
        0x4c0050 -> :sswitch_b
        0x4c0073 -> :sswitch_c
        0x4d0063 -> :sswitch_d
        0x4d006e -> :sswitch_e
        0x4e006d -> :sswitch_f
        0x500063 -> :sswitch_10
        0x50006c -> :sswitch_11
        0x510075 -> :sswitch_12
        0x520042 -> :sswitch_13
        0x520043 -> :sswitch_14
        0x520050 -> :sswitch_15
        0x530043 -> :sswitch_16
        0x53006c -> :sswitch_17
        0x530071 -> :sswitch_18
        0x530074 -> :sswitch_19
        0x54006c -> :sswitch_1a
        0x550070 -> :sswitch_1b
        0x560042 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static demangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static demangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    .prologue
    .line 886
    move-object/from16 v0, p0

    .local v0, "name":Ljava/lang/String;
    move/from16 v1, p1

    .local v1, "reversible":Z
    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v12

    .line 887
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v3, v12

    .line 888
    .local v3, "len":I
    const/4 v12, 0x0

    move v4, v12

    .line 889
    .local v4, "mangled":Z
    const/4 v12, 0x0

    move v5, v12

    .line 890
    .local v5, "predicate":Z
    const/4 v12, 0x0

    move v6, v12

    .line 891
    .local v6, "downCaseNext":Z
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move v13, v3

    if-ge v12, v13, :cond_8

    .line 893
    move-object v12, v0

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v8, v12

    .line 894
    .local v8, "ch":C
    move v12, v6

    if-eqz v12, :cond_0

    move v12, v1

    if-nez v12, :cond_0

    .line 896
    move v12, v8

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    move v8, v12

    .line 897
    const/4 v12, 0x0

    move v6, v12

    .line 900
    :cond_0
    move v12, v1

    if-nez v12, :cond_3

    move v12, v8

    const/16 v13, 0x69

    if-ne v12, v13, :cond_3

    move v12, v7

    if-nez v12, :cond_3

    move v12, v3

    const/4 v13, 0x2

    if-le v12, v13, :cond_3

    move-object v12, v0

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x73

    if-ne v12, v13, :cond_3

    move-object v12, v0

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v15, v12

    move v12, v15

    move v13, v15

    move v9, v13

    .local v9, "d":C
    invoke-static {v12}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-nez v12, :cond_3

    .line 904
    const/4 v12, 0x1

    move v4, v12

    .line 905
    const/4 v12, 0x1

    move v5, v12

    .line 906
    add-int/lit8 v7, v7, 0x1

    .line 907
    move v12, v9

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-nez v12, :cond_1

    move v12, v9

    invoke-static {v12}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 909
    :cond_1
    move-object v12, v2

    move v13, v9

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 910
    add-int/lit8 v7, v7, 0x1

    .line 891
    .end local v9    # "d":C
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 915
    :cond_3
    move v12, v8

    const/16 v13, 0x24

    if-ne v12, v13, :cond_6

    move v12, v7

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move v13, v3

    if-ge v12, v13, :cond_6

    .line 917
    move-object v12, v0

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v10, v12

    .line 918
    .local v10, "c1":C
    move-object v12, v0

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v11, v12

    .line 919
    .local v11, "c2":C
    move v12, v10

    move v13, v11

    invoke-static {v12, v13}, Lgnu/expr/Compilation;->demangle2(CC)C

    move-result v12

    move v9, v12

    .line 920
    .restart local v9    # "d":C
    move v12, v9

    const v13, 0xffff

    if-eq v12, v13, :cond_4

    .line 922
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 923
    add-int/lit8 v7, v7, 0x2

    .line 924
    const/4 v12, 0x1

    move v4, v12

    .line 925
    const/4 v12, 0x1

    move v6, v12

    .line 926
    goto :goto_1

    .line 928
    :cond_4
    move v12, v10

    const/16 v13, 0x54

    if-ne v12, v13, :cond_5

    move v12, v11

    const/16 v13, 0x6f

    if-ne v12, v13, :cond_5

    move v12, v7

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    move v13, v3

    if-ge v12, v13, :cond_5

    move-object v12, v0

    move v13, v7

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x24

    if-ne v12, v13, :cond_5

    .line 931
    move-object v12, v2

    const-string/jumbo v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 932
    add-int/lit8 v7, v7, 0x3

    .line 933
    const/4 v12, 0x1

    move v4, v12

    .line 934
    const/4 v12, 0x1

    move v6, v12

    .line 935
    goto :goto_1

    .line 937
    .line 946
    .end local v9    # "d":C
    .end local v10    # "c1":C
    .end local v11    # "c2":C
    :cond_5
    :goto_2
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_1

    .line 938
    :cond_6
    move v12, v1

    if-nez v12, :cond_5

    move v12, v7

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    move v12, v8

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-nez v12, :cond_7

    move v12, v8

    invoke-static {v12}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_7
    move-object v12, v0

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 942
    move-object v12, v2

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 943
    const/4 v12, 0x1

    move v4, v12

    .line 944
    move v12, v8

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    move v8, v12

    goto :goto_2

    .line 948
    .end local v8    # "ch":C
    :cond_8
    move v12, v5

    if-eqz v12, :cond_9

    .line 949
    move-object v12, v2

    const/16 v13, 0x3f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 950
    :cond_9
    move v12, v4

    if-eqz v12, :cond_a

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    move-object v0, v12

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    move-object v12, v0

    goto :goto_3
.end method

.method private dumpInitializers(Lgnu/expr/Initializer;)V
    .locals 5

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "inits":Lgnu/expr/Initializer;
    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/Initializer;->reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;

    move-result-object v3

    move-object v2, v3

    .line 603
    .local v2, "init":Lgnu/expr/Initializer;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 604
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/expr/Initializer;->emit(Lgnu/expr/Compilation;)V

    .line 603
    move-object v3, v2

    iget-object v3, v3, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    move-object v2, v3

    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method public static declared-synchronized findForImmediateLiterals(I)Lgnu/expr/Compilation;
    .locals 7

    .prologue
    .line 2946
    move v0, p0

    .local v0, "key":I
    const-class v6, Lgnu/expr/Compilation;

    monitor-enter v6

    const/4 v4, 0x0

    move-object v1, v4

    .line 2947
    .local v1, "prev":Lgnu/expr/Compilation;
    :try_start_0
    sget-object v4, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    move-object v2, v4

    .line 2949
    .local v2, "comp":Lgnu/expr/Compilation;
    :goto_0
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    move-object v3, v4

    .line 2950
    .local v3, "next":Lgnu/expr/Compilation;
    move-object v4, v2

    iget v4, v4, Lgnu/expr/Compilation;->keyUninitialized:I

    move v5, v0

    if-ne v4, v5, :cond_1

    .line 2952
    move-object v4, v1

    if-nez v4, :cond_0

    .line 2953
    move-object v4, v3

    sput-object v4, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2956
    :goto_1
    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "key":I
    monitor-exit v6

    return-object v0

    .line 2955
    .restart local v0    # "key":I
    :cond_0
    move-object v4, v1

    move-object v5, v3

    :try_start_1
    iput-object v5, v4, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2946
    .end local v2    # "comp":Lgnu/expr/Compilation;
    .end local v3    # "next":Lgnu/expr/Compilation;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "key":I
    throw v0

    .line 2959
    .restart local v0    # "key":I
    .restart local v2    # "comp":Lgnu/expr/Compilation;
    .restart local v3    # "next":Lgnu/expr/Compilation;
    :cond_1
    move-object v4, v2

    move-object v1, v4

    .line 2960
    move-object v4, v3

    move-object v2, v4

    .line 2961
    goto :goto_0
.end method

.method public static final getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 9

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "clas":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v4, v0

    const-string/jumbo v5, "<init>"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v2, v4

    .line 1155
    .local v2, "meth":Lgnu/bytecode/Method;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1156
    move-object v4, v2

    move-object v0, v4

    .line 1165
    .end local v0    # "clas":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v0

    .line 1158
    .restart local v0    # "clas":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/ClassExp;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v4, :cond_1

    .line 1160
    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/bytecode/Type;

    move-object v3, v4

    .line 1161
    .local v3, "args":[Lgnu/bytecode/Type;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1165
    :goto_1
    move-object v4, v0

    const-string/jumbo v5, "<init>"

    const/4 v6, 0x1

    move-object v7, v3

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1164
    .end local v3    # "args":[Lgnu/bytecode/Type;
    :cond_1
    sget-object v4, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    move-object v3, v4

    .restart local v3    # "args":[Lgnu/bytecode/Type;
    goto :goto_1
.end method

.method public static getCurrent()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 2976
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    return-object v0
.end method

.method public static isValidJavaName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v3

    .line 721
    .local v1, "len":I
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 726
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return v0

    .line 723
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    move v3, v1

    move v2, v3

    .local v2, "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-lez v3, :cond_3

    .line 724
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 725
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 726
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 9

    .prologue
    .line 2788
    move-object v0, p0

    .local v0, "value":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "type":Lgnu/expr/Expression;
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v2, v4

    .line 2789
    .local v2, "exps":[Lgnu/expr/Expression;
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    .line 2790
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    aput-object v6, v4, v5

    .line 2791
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-static {}, Lgnu/kawa/functions/Convert;->getInstance()Lgnu/kawa/functions/Convert;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 2792
    .local v3, "c":Lgnu/expr/QuoteExp;
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .end local v0    # "value":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 2803
    move-object v0, p0

    .local v0, "value":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "kind":I
    move v9, v1

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v2, v9

    .line 745
    .local v2, "reversible":Z
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v3, v9

    .line 746
    .local v3, "len":I
    move v9, v3

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    move-object v9, v0

    const-string/jumbo v10, "*init*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 747
    const-string/jumbo v9, "<init>"

    move-object v0, v9

    .line 836
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 744
    .end local v2    # "reversible":Z
    .end local v3    # "len":I
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 748
    .restart local v2    # "reversible":Z
    .restart local v3    # "len":I
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move v11, v3

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v9

    .line 749
    .local v4, "mangled":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    move v5, v9

    .line 750
    .local v5, "upcaseNext":Z
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_2
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_10

    .line 752
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v7, v9

    .line 753
    .local v7, "ch":C
    move v9, v5

    if-eqz v9, :cond_2

    .line 755
    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v9

    move v7, v9

    .line 756
    const/4 v9, 0x0

    move v5, v9

    .line 758
    :cond_2
    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 760
    move v9, v6

    if-nez v9, :cond_3

    .line 761
    move-object v9, v4

    const-string/jumbo v10, "$N"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 762
    :cond_3
    move-object v9, v4

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 750
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 764
    :cond_5
    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v7

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_7

    .line 765
    :cond_6
    move-object v9, v4

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_3

    .line 766
    :cond_7
    move v9, v7

    const/16 v10, 0x24

    if-ne v9, v10, :cond_9

    .line 767
    move-object v9, v4

    move v10, v1

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    const-string/jumbo v10, "$$"

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_3

    :cond_8
    const-string/jumbo v10, "$"

    goto :goto_4

    .line 770
    :cond_9
    move v9, v7

    sparse-switch v9, :sswitch_data_0

    .line 825
    move-object v9, v4

    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 826
    move-object v9, v4

    move v10, v7

    const/16 v11, 0xc

    shr-int/lit8 v10, v10, 0xc

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 827
    move-object v9, v4

    move v10, v7

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 828
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x4

    shr-int/lit8 v10, v10, 0x4

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 829
    move-object v9, v4

    move v10, v7

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 831
    :goto_5
    move v9, v2

    if-nez v9, :cond_4

    .line 832
    const/4 v9, 0x1

    move v5, v9

    goto/16 :goto_3

    .line 772
    :sswitch_0
    move-object v9, v4

    const-string/jumbo v10, "$Pl"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 774
    :sswitch_1
    move v9, v2

    if-eqz v9, :cond_a

    .line 775
    move-object v9, v4

    const-string/jumbo v10, "$Mn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 778
    :cond_a
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v3

    if-ge v9, v10, :cond_c

    move-object v9, v0

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    move v8, v9

    .line 779
    .local v8, "next":C
    move v9, v8

    const/16 v10, 0x3e

    if-ne v9, v10, :cond_d

    .line 781
    move-object v9, v4

    const-string/jumbo v10, "$To$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 782
    add-int/lit8 v6, v6, 0x1

    .line 787
    :cond_b
    :goto_7
    goto :goto_5

    .line 778
    .end local v8    # "next":C
    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    .line 784
    .restart local v8    # "next":C
    :cond_d
    move v9, v8

    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-nez v9, :cond_b

    .line 785
    move-object v9, v4

    const-string/jumbo v10, "$Mn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_7

    .line 788
    .end local v8    # "next":C
    :sswitch_2
    move-object v9, v4

    const-string/jumbo v10, "$St"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 789
    :sswitch_3
    move-object v9, v4

    const-string/jumbo v10, "$Sl"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 790
    :sswitch_4
    move-object v9, v4

    const-string/jumbo v10, "$Eq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 791
    :sswitch_5
    move-object v9, v4

    const-string/jumbo v10, "$Ls"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 792
    :sswitch_6
    move-object v9, v4

    const-string/jumbo v10, "$Gr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 793
    :sswitch_7
    move-object v9, v4

    const-string/jumbo v10, "$At"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 794
    :sswitch_8
    move-object v9, v4

    const-string/jumbo v10, "$Tl"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 795
    :sswitch_9
    move-object v9, v4

    const-string/jumbo v10, "$Pc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 796
    :sswitch_a
    move-object v9, v4

    const-string/jumbo v10, "$Dt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 797
    :sswitch_b
    move-object v9, v4

    const-string/jumbo v10, "$Cm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 798
    :sswitch_c
    move-object v9, v4

    const-string/jumbo v10, "$LP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 799
    :sswitch_d
    move-object v9, v4

    const-string/jumbo v10, "$RP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 800
    :sswitch_e
    move-object v9, v4

    const-string/jumbo v10, "$LB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 801
    :sswitch_f
    move-object v9, v4

    const-string/jumbo v10, "$RB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 802
    :sswitch_10
    move-object v9, v4

    const-string/jumbo v10, "$LC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 803
    :sswitch_11
    move-object v9, v4

    const-string/jumbo v10, "$RC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 804
    :sswitch_12
    move-object v9, v4

    const-string/jumbo v10, "$Sq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 805
    :sswitch_13
    move-object v9, v4

    const-string/jumbo v10, "$Dq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 806
    :sswitch_14
    move-object v9, v4

    const-string/jumbo v10, "$Am"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 807
    :sswitch_15
    move-object v9, v4

    const-string/jumbo v10, "$Nm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 809
    :sswitch_16
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_e

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    :goto_8
    move v8, v9

    .line 810
    .local v8, "first":C
    move v9, v2

    if-nez v9, :cond_f

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v3

    if-ne v9, v10, :cond_f

    move v9, v8

    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 813
    move-object v9, v4

    const/4 v10, 0x0

    move v11, v8

    invoke-static {v11}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 814
    move-object v9, v4

    const/4 v10, 0x0

    const-string/jumbo v11, "is"

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 809
    .end local v8    # "first":C
    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 817
    .restart local v8    # "first":C
    :cond_f
    move-object v9, v4

    const-string/jumbo v10, "$Qu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 818
    goto/16 :goto_5

    .line 819
    .end local v8    # "first":C
    :sswitch_17
    move-object v9, v4

    const-string/jumbo v10, "$Ex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 820
    :sswitch_18
    move-object v9, v4

    const-string/jumbo v10, "$Cl"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 821
    :sswitch_19
    move-object v9, v4

    const-string/jumbo v10, "$SC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 822
    :sswitch_1a
    move-object v9, v4

    const-string/jumbo v10, "$Up"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 823
    :sswitch_1b
    move-object v9, v4

    const-string/jumbo v10, "$VB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto/16 :goto_5

    .line 835
    .end local v7    # "ch":C
    :cond_10
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 836
    .local v6, "mname":Ljava/lang/String;
    move-object v9, v6

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v0

    :goto_9
    move-object v0, v9

    goto/16 :goto_1

    :cond_11
    move-object v9, v6

    goto :goto_9

    .line 770
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_17
        0x22 -> :sswitch_13
        0x23 -> :sswitch_15
        0x25 -> :sswitch_9
        0x26 -> :sswitch_14
        0x27 -> :sswitch_12
        0x28 -> :sswitch_c
        0x29 -> :sswitch_d
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_b
        0x2d -> :sswitch_1
        0x2e -> :sswitch_a
        0x2f -> :sswitch_3
        0x3a -> :sswitch_18
        0x3b -> :sswitch_19
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_6
        0x3f -> :sswitch_16
        0x40 -> :sswitch_7
        0x5b -> :sswitch_e
        0x5d -> :sswitch_f
        0x5e -> :sswitch_1a
        0x7b -> :sswitch_10
        0x7c -> :sswitch_1b
        0x7d -> :sswitch_11
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method public static mangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "reversible":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 715
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static mangleURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v10, v0

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .line 643
    .local v1, "hasSlash":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v2, v10

    .line 644
    .local v2, "len":I
    move v10, v2

    const/4 v11, 0x6

    if-le v10, v11, :cond_1

    move-object v10, v0

    const-string/jumbo v11, "class:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 645
    move-object v10, v0

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 702
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 642
    .end local v1    # "hasSlash":Z
    .end local v2    # "len":I
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 647
    .restart local v1    # "hasSlash":Z
    .restart local v2    # "len":I
    :cond_1
    move v10, v2

    const/4 v11, 0x5

    if-le v10, v11, :cond_5

    move-object v10, v0

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_5

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 650
    move-object v10, v0

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 651
    add-int/lit8 v2, v2, -0x5

    .line 652
    const/4 v10, 0x1

    move v1, v10

    .line 660
    :cond_2
    :goto_2
    const/4 v10, 0x0

    move v3, v10

    .line 661
    .local v3, "start":I
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v10

    .line 664
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    :goto_3
    move-object v10, v0

    const/16 v11, 0x2f

    move v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    move v5, v10

    .line 665
    .local v5, "slash":I
    move v10, v5

    if-gez v10, :cond_6

    move v10, v2

    :goto_4
    move v6, v10

    .line 666
    .local v6, "end":I
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    :goto_5
    move v7, v10

    .line 667
    .local v7, "first":Z
    move v10, v7

    if-eqz v10, :cond_8

    move v10, v1

    if-eqz v10, :cond_8

    .line 670
    move-object v10, v0

    move v11, v3

    move v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 671
    .local v8, "host":Ljava/lang/String;
    move v10, v6

    move v11, v3

    sub-int/2addr v10, v11

    const/4 v11, 0x4

    if-le v10, v11, :cond_3

    move-object v10, v8

    const-string/jumbo v11, "www."

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 672
    move-object v10, v8

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 674
    :cond_3
    move-object v10, v8

    move-object v11, v4

    invoke-static {v10, v11}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 675
    .line 698
    .end local v8    # "host":Ljava/lang/String;
    :cond_4
    :goto_6
    move v10, v5

    if-gez v10, :cond_c

    .line 699
    .line 702
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 654
    .end local v3    # "start":I
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v5    # "slash":I
    .end local v6    # "end":I
    .end local v7    # "first":Z
    :cond_5
    move v10, v2

    const/4 v11, 0x4

    if-le v10, v11, :cond_2

    move-object v10, v0

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_2

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "uri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 657
    move-object v10, v0

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 658
    add-int/lit8 v2, v2, -0x4

    goto :goto_2

    .line 665
    .restart local v3    # "start":I
    .restart local v4    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v5    # "slash":I
    :cond_6
    move v10, v5

    goto :goto_4

    .line 666
    .restart local v6    # "end":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 676
    .restart local v7    # "first":Z
    :cond_8
    move v10, v3

    move v11, v6

    if-eq v10, v11, :cond_4

    .line 678
    move v10, v7

    if-nez v10, :cond_9

    .line 679
    move-object v10, v4

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 680
    :cond_9
    move v10, v6

    move v11, v2

    if-ne v10, v11, :cond_b

    .line 682
    move-object v10, v0

    const/16 v11, 0x2e

    move v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    move v8, v10

    .line 683
    .local v8, "dot":I
    move v10, v8

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    if-le v10, v11, :cond_b

    move v10, v7

    if-nez v10, :cond_b

    .line 686
    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    move v9, v10

    .line 687
    .local v9, "extLen":I
    move v10, v9

    const/4 v11, 0x4

    if-le v10, v11, :cond_a

    move v10, v9

    const/4 v11, 0x5

    if-ne v10, v11, :cond_b

    move-object v10, v0

    const-string/jumbo v11, "html"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 690
    :cond_a
    move v10, v2

    move v11, v9

    sub-int/2addr v10, v11

    move v2, v10

    .line 691
    move v10, v2

    move v6, v10

    .line 692
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 696
    .end local v8    # "dot":I
    .end local v9    # "extLen":I
    :cond_b
    move-object v10, v4

    move-object v11, v0

    move v12, v3

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto/16 :goto_6

    .line 700
    :cond_c
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v3, v10

    .line 701
    goto/16 :goto_3
.end method

.method private static putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v2, v3

    .line 628
    .local v2, "dot":I
    move v3, v2

    if-lez v3, :cond_0

    .line 630
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 631
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 632
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 634
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 635
    return-void
.end method

.method private registerClass(Lgnu/bytecode/ClassType;)V
    .locals 10

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "new_class":Lgnu/bytecode/ClassType;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    if-nez v3, :cond_2

    .line 1085
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1092
    :cond_0
    :goto_0
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->addModifiers(I)V

    .line 1094
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/expr/Compilation;->numClasses:I

    if-lez v3, :cond_1

    .line 1097
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v1, v3

    .line 1098
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v4

    .line 1100
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/expr/Compilation;->numClasses:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/Compilation;->numClasses:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 1101
    return-void

    .line 1086
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/expr/Compilation;->numClasses:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1088
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/bytecode/ClassType;

    move-object v2, v3

    .line 1089
    .local v2, "new_classes":[Lgnu/bytecode/ClassType;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/expr/Compilation;->numClasses:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1092
    .end local v2    # "new_classes":[Lgnu/bytecode/ClassType;
    :cond_3
    const/16 v4, 0x21

    goto :goto_1
.end method

.method public static declared-synchronized registerForImmediateLiterals(Lgnu/expr/Compilation;)I
    .locals 6

    .prologue
    .line 2932
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    const-class v5, Lgnu/expr/Compilation;

    monitor-enter v5

    const/4 v3, 0x0

    move v1, v3

    .line 2933
    .local v1, "i":I
    :try_start_0
    sget-object v3, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    move-object v2, v3

    .local v2, "c":Lgnu/expr/Compilation;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2935
    move v3, v1

    move-object v4, v2

    iget v4, v4, Lgnu/expr/Compilation;->keyUninitialized:I

    if-gt v3, v4, :cond_0

    .line 2936
    move-object v3, v2

    iget v3, v3, Lgnu/expr/Compilation;->keyUninitialized:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 2933
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    move-object v2, v3

    goto :goto_0

    .line 2938
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/expr/Compilation;->keyUninitialized:I

    .line 2939
    move-object v3, v0

    sget-object v4, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    iput-object v4, v3, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2940
    move-object v3, v0

    sput-object v3, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    move v3, v1

    move v0, v3

    .end local v0    # "comp":Lgnu/expr/Compilation;
    monitor-exit v5

    return v0

    .line 2932
    .end local v2    # "c":Lgnu/expr/Compilation;
    .restart local v0    # "comp":Lgnu/expr/Compilation;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "comp":Lgnu/expr/Compilation;
    throw v0
.end method

.method public static restoreCurrent(Lgnu/expr/Compilation;)V
    .locals 3

    .prologue
    .line 2993
    move-object v0, p0

    .local v0, "saved":Lgnu/expr/Compilation;
    sget-object v1, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2994
    return-void
.end method

.method public static setCurrent(Lgnu/expr/Compilation;)V
    .locals 3

    .prologue
    .line 2981
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    sget-object v1, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2982
    return-void
.end method

.method public static setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    .locals 4

    .prologue
    .line 2986
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    sget-object v2, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Compilation;

    move-object v1, v2

    .line 2987
    .local v1, "save":Lgnu/expr/Compilation;
    sget-object v2, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2988
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "comp":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public static setupLiterals(I)V
    .locals 9

    .prologue
    .line 2903
    move v0, p0

    .local v0, "key":I
    move v4, v0

    invoke-static {v4}, Lgnu/expr/Compilation;->findForImmediateLiterals(I)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v1, v4

    .line 2906
    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 2909
    .local v2, "clas":Ljava/lang/Class;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    iget-object v4, v4, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    move-object v3, v4

    .local v3, "init":Lgnu/expr/Literal;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2918
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v3

    iget-object v6, v6, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2910
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    move-object v3, v4

    goto :goto_0

    .line 2921
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2926
    .line 2927
    return-void

    .line 2923
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "init":Lgnu/expr/Literal;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2925
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "internal error"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private startClassInit()Lgnu/bytecode/Method;
    .locals 10

    .prologue
    .line 1905
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "<clinit>"

    sget-object v7, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v9, 0x9

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1908
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v1, v4

    .line 1910
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1912
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v2, v4

    .line 1914
    .local v2, "languageType":Lgnu/bytecode/ClassType;
    move-object v4, v2

    const-string/jumbo v5, "registerEnvironment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v3, v4

    .line 1916
    .local v3, "registerMethod":Lgnu/bytecode/Method;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1917
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1919
    .end local v2    # "languageType":Lgnu/bytecode/ClassType;
    .end local v3    # "registerMethod":Lgnu/bytecode/Method;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method private varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 18

    .prologue
    .line 1830
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object/from16 v1, p1

    .local v1, "source":Lgnu/expr/LambdaExp;
    move/from16 v2, p2

    .local v2, "singleArgs":I
    move-object/from16 v3, p3

    .local v3, "counter":Lgnu/bytecode/Variable;
    move-object/from16 v4, p4

    .local v4, "lastArgType":Lgnu/bytecode/Type;
    move-object/from16 v5, p5

    .local v5, "ctxVar":Lgnu/bytecode/Variable;
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v6, v11

    .line 1831
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v4

    check-cast v11, Lgnu/bytecode/ArrayType;

    invoke-virtual {v11}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v7, v11

    .line 1832
    .local v7, "elType":Lgnu/bytecode/Type;
    const-string/jumbo v11, "java.lang.Object"

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v8, v11

    .line 1833
    .local v8, "mustConvert":Z
    move-object v11, v5

    if-eqz v11, :cond_1

    move v11, v8

    if-nez v11, :cond_1

    .line 1835
    move-object v11, v6

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1836
    move-object v11, v6

    move v12, v2

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1837
    move-object v11, v6

    sget-object v12, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "getRestArgsArray"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1901
    :goto_1
    return-void

    .line 1832
    .end local v8    # "mustConvert":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1839
    .restart local v8    # "mustConvert":Z
    :cond_1
    move v11, v2

    if-nez v11, :cond_2

    move v11, v8

    if-nez v11, :cond_2

    .line 1840
    move-object v11, v6

    move-object v12, v6

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1

    .line 1843
    :cond_2
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v11

    .line 1844
    move-object v11, v3

    if-nez v11, :cond_4

    .line 1846
    move-object v11, v6

    sget-object v12, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v11

    move-object v3, v11

    .line 1847
    move-object v11, v5

    if-eqz v11, :cond_7

    .line 1849
    move-object v11, v6

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1850
    move-object v11, v6

    sget-object v12, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "getArgCount"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1857
    :goto_2
    move v11, v2

    if-eqz v11, :cond_3

    .line 1859
    move-object v11, v6

    move v12, v2

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1860
    move-object v11, v6

    sget-object v12, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1862
    :cond_3
    move-object v11, v6

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1864
    :cond_4
    move-object v11, v6

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1865
    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 1866
    new-instance v11, Lgnu/bytecode/Label;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v9, v11

    .line 1867
    .local v9, "testLabel":Lgnu/bytecode/Label;
    new-instance v11, Lgnu/bytecode/Label;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v10, v11

    .line 1868
    .local v10, "loopTopLabel":Lgnu/bytecode/Label;
    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1869
    move-object v11, v6

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1870
    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1872
    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1873
    move-object v11, v6

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1874
    move-object v11, v5

    if-eqz v11, :cond_8

    .line 1875
    move-object v11, v6

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1878
    :goto_3
    move-object v11, v6

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1879
    move v11, v2

    if-eqz v11, :cond_5

    .line 1881
    move-object v11, v6

    move v12, v2

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1882
    move-object v11, v6

    sget-object v12, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitAdd(Lgnu/bytecode/PrimType;)V

    .line 1884
    :cond_5
    move-object v11, v5

    if-eqz v11, :cond_9

    .line 1885
    move-object v11, v6

    sget-object v12, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "getArgAsObject"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1888
    :goto_4
    move v11, v8

    if-eqz v11, :cond_6

    .line 1890
    move-object v11, v0

    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v7

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1894
    :cond_6
    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 1895
    move-object v11, v9

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1896
    move-object v11, v6

    move-object v12, v3

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1897
    move-object v11, v6

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1898
    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V

    .line 1899
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v11

    goto/16 :goto_1

    .line 1854
    .end local v9    # "testLabel":Lgnu/bytecode/Label;
    .end local v10    # "loopTopLabel":Lgnu/bytecode/Label;
    :cond_7
    move-object v11, v6

    move-object v12, v6

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1855
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    goto/16 :goto_2

    .line 1877
    .restart local v9    # "testLabel":Lgnu/bytecode/Label;
    .restart local v10    # "loopTopLabel":Lgnu/bytecode/Label;
    :cond_8
    move-object v11, v6

    move-object v12, v6

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 1887
    :cond_9
    move-object v11, v6

    sget-object v12, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_4
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "new_class":Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v2, v2, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1107
    sget-boolean v2, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    if-eqz v2, :cond_0

    .line 1108
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setStratum(Ljava/lang/String;)V

    .line 1109
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v3, v3, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 1111
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 1112
    move-object v2, v1

    sget v3, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 1113
    return-void
.end method

.method public addMainClass(Lgnu/expr/ModuleExp;)V
    .locals 8

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "module":Lgnu/expr/ModuleExp;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1124
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v2, v5

    .line 1125
    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v3, v5

    .line 1126
    .local v3, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1127
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 1128
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v4, v5

    .line 1129
    .local v4, "sup":Lgnu/bytecode/ClassType;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 1131
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1132
    sget-object v5, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    move-object v4, v5

    .line 1138
    :cond_1
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1139
    move-object v5, v2

    sget-object v6, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->addInterface(Lgnu/bytecode/ClassType;)V

    .line 1140
    :cond_2
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1142
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 1143
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1144
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 1145
    return-void

    .line 1133
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1134
    sget-object v5, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    move-object v4, v5

    goto :goto_0

    .line 1136
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v4, v5

    goto :goto_0
.end method

.method public allocLocalField(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 10

    .prologue
    .line 2371
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 2372
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/expr/Compilation;->localFieldIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2373
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v4

    move-object v3, v4

    .line 2374
    .local v3, "field":Lgnu/bytecode/Field;
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/ClassType;",
            "Ljava/util/Vector",
            "<",
            "Lgnu/bytecode/ClassType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1240
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "clas":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "seen":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/ClassType;>;"
    move-object v8, v1

    if-nez v8, :cond_0

    .line 1241
    .line 1290
    :goto_0
    return-void

    .line 1243
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1244
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "java.lang.Object"

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1245
    goto :goto_0

    .line 1247
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    move v4, v8

    .local v4, "i":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v8, v4

    if-ltz v8, :cond_3

    .line 1248
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    if-ne v8, v9, :cond_2

    .line 1249
    goto :goto_0

    .line 1250
    :cond_3
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1255
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v8

    move-object v4, v8

    .line 1256
    .local v4, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 1258
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .line 1259
    .local v5, "n":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 1260
    move-object v8, v0

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1259
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1263
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_4
    const/4 v8, 0x1

    move v5, v8

    .line 1264
    .local v5, "clEnvArgs":I
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1266
    move-object v8, v1

    instance-of v8, v8, Lgnu/expr/PairClassType;

    if-eqz v8, :cond_6

    .line 1267
    move-object v8, v1

    check-cast v8, Lgnu/expr/PairClassType;

    iget-object v8, v8, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object v1, v8

    .line 1283
    :goto_2
    move-object v8, v1

    const-string/jumbo v9, "$finit$"

    move v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    move-object v6, v8

    .line 1284
    .local v6, "meth":Lgnu/bytecode/Method;
    move-object v8, v6

    if-eqz v8, :cond_5

    .line 1286
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    move-object v7, v8

    .line 1287
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1290
    .end local v7    # "code":Lgnu/bytecode/CodeAttr;
    :cond_5
    goto :goto_0

    .line 1272
    .end local v6    # "meth":Lgnu/bytecode/Method;
    :cond_6
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "$class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    .line 1278
    goto :goto_2

    .line 1275
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 1277
    .local v6, "ex":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1282
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_7
    const/4 v8, 0x0

    move v5, v8

    goto :goto_2
.end method

.method public cleanupAfterCompilation()V
    .locals 4

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "iClass":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v3, :cond_0

    .line 1020
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->cleanupAfterCompilation()V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1022
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 1024
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_1

    .line 1025
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1026
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1027
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 1028
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/expr/Compilation;->immediate:Z

    if-nez v2, :cond_2

    .line 1029
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1030
    :cond_2
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 443
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 444
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 449
    :goto_0
    return-void

    .line 445
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/expr/Compilation;->immediate:Z

    if-nez v3, :cond_1

    .line 446
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V
    .locals 13

    .prologue
    .line 491
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Compilation;
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;
    move-object v3, p2

    .local v3, "target":Lgnu/expr/Target;
    move-object v9, v3

    instance-of v9, v9, Lgnu/expr/IgnoreTarget;

    if-eqz v9, :cond_0

    .line 492
    .line 597
    :goto_0
    return-void

    .line 493
    :cond_0
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/Values;

    if-eqz v9, :cond_2

    .line 495
    move-object v9, v2

    check-cast v9, Lgnu/mapping/Values;

    invoke-virtual {v9}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 496
    .local v4, "values":[Ljava/lang/Object;
    move-object v9, v4

    array-length v9, v9

    move v5, v9

    .line 497
    .local v5, "len":I
    move-object v9, v3

    instance-of v9, v9, Lgnu/expr/ConsumerTarget;

    if-eqz v9, :cond_2

    .line 499
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 501
    move-object v9, v1

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 503
    :cond_1
    goto :goto_0

    .line 506
    .end local v4    # "values":[Ljava/lang/Object;
    .end local v5    # "len":I
    .end local v6    # "i":I
    :cond_2
    move-object v9, v3

    instance-of v9, v9, Lgnu/expr/ConditionalTarget;

    if-eqz v9, :cond_4

    .line 508
    move-object v9, v3

    check-cast v9, Lgnu/expr/ConditionalTarget;

    move-object v4, v9

    .line 509
    .local v4, "ctarg":Lgnu/expr/ConditionalTarget;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v4

    iget-object v10, v10, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    :goto_2
    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 511
    goto :goto_0

    .line 509
    :cond_3
    move-object v10, v4

    iget-object v10, v10, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_2

    .line 513
    .end local v4    # "ctarg":Lgnu/expr/ConditionalTarget;
    :cond_4
    move-object v9, v3

    instance-of v9, v9, Lgnu/expr/StackTarget;

    if-eqz v9, :cond_c

    .line 515
    move-object v9, v3

    check-cast v9, Lgnu/expr/StackTarget;

    invoke-virtual {v9}, Lgnu/expr/StackTarget;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    move-object v4, v9

    .line 516
    .local v4, "type":Lgnu/bytecode/Type;
    move-object v9, v4

    instance-of v9, v9, Lgnu/bytecode/PrimType;

    if-eqz v9, :cond_a

    .line 520
    move-object v9, v4

    :try_start_0
    invoke-virtual {v9}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 521
    .local v5, "signature":Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v6, v9

    .line 522
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v5

    if-eqz v9, :cond_5

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    :cond_5
    const/16 v9, 0x20

    :goto_3
    move v7, v9

    .line 524
    .local v7, "sig1":C
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Number;

    if-eqz v9, :cond_6

    .line 526
    move-object v9, v2

    check-cast v9, Ljava/lang/Number;

    move-object v8, v9

    .line 527
    .local v8, "num":Ljava/lang/Number;
    move v9, v7

    sparse-switch v9, :sswitch_data_0

    .line 549
    .end local v8    # "num":Ljava/lang/Number;
    :cond_6
    move v9, v7

    const/16 v10, 0x43

    if-ne v9, v10, :cond_8

    .line 551
    move-object v9, v6

    move-object v10, v4

    check-cast v10, Lgnu/bytecode/PrimType;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lgnu/bytecode/PrimType;->charValue(Ljava/lang/Object;)C

    move-result v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 552
    goto/16 :goto_0

    .line 522
    .end local v7    # "sig1":C
    :cond_7
    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_3

    .line 530
    .restart local v7    # "sig1":C
    .restart local v8    # "num":Ljava/lang/Number;
    :sswitch_0
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 531
    goto/16 :goto_0

    .line 533
    :sswitch_1
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->shortValue()S

    move-result v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 534
    goto/16 :goto_0

    .line 536
    :sswitch_2
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->byteValue()B

    move-result v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 537
    goto/16 :goto_0

    .line 539
    :sswitch_3
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 540
    goto/16 :goto_0

    .line 542
    :sswitch_4
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 543
    goto/16 :goto_0

    .line 545
    :sswitch_5
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    .line 546
    goto/16 :goto_0

    .line 554
    .end local v8    # "num":Ljava/lang/Number;
    :cond_8
    move v9, v7

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_a

    .line 556
    move-object v9, v2

    invoke-static {v9}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v9

    move v8, v9

    .line 557
    .local v8, "val":Z
    move-object v9, v6

    move v10, v8

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto/16 :goto_0

    .line 557
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 564
    .line 566
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .end local v7    # "sig1":C
    .end local v8    # "val":Z
    :cond_a
    :goto_5
    move-object v9, v4

    sget-object v10, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v9, v10, :cond_b

    move-object v9, v2

    instance-of v9, v9, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_b

    .line 568
    move-object v9, v1

    move-object v10, v2

    check-cast v10, Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 569
    goto/16 :goto_0

    .line 561
    :catch_0
    move-exception v9

    move-object v5, v9

    goto :goto_5

    .line 573
    :cond_b
    move-object v9, v4

    move-object v10, v2

    :try_start_1
    invoke-virtual {v9, v10}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v2, v9

    .line 591
    .line 593
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_c
    :goto_6
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 594
    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    if-nez v11, :cond_f

    move-object v11, v3

    invoke-virtual {v11}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    :goto_7
    invoke-virtual {v9, v10, v11}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 597
    goto/16 :goto_0

    .line 575
    .restart local v4    # "type":Lgnu/bytecode/Type;
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 577
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v9

    .line 578
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    move-object v9, v2

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_d

    .line 579
    move-object v9, v6

    const-string/jumbo v10, "cannot convert void to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 589
    :goto_8
    move-object v9, v6

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 590
    move-object v9, v1

    const/16 v10, 0x77

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_6

    .line 582
    :cond_d
    move-object v9, v6

    const-string/jumbo v10, "cannot convert literal (of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 583
    move-object v9, v2

    if-nez v9, :cond_e

    .line 584
    move-object v9, v6

    const-string/jumbo v10, "<null>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 587
    :goto_9
    move-object v9, v6

    const-string/jumbo v10, ") to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_8

    .line 586
    :cond_e
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_9

    .line 594
    .end local v4    # "type":Lgnu/bytecode/Type;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "sbuf":Ljava/lang/StringBuffer;
    :cond_f
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v11

    goto :goto_7

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;
    .locals 5

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v3

    move-object v2, v3

    .line 454
    .local v2, "literal":Lgnu/expr/Literal;
    move-object v3, v2

    iget-object v3, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v3, :cond_0

    .line 455
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v3, v4}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 456
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object/from16 v1, p1

    .local v1, "mexp":Lgnu/expr/ModuleExp;
    move-object/from16 v2, p2

    .local v2, "fname":Ljava/lang/String;
    const/4 v11, 0x0

    move v3, v11

    .line 1036
    .local v3, "makeJar":Z
    move-object v11, v2

    const-string/jumbo v12, ".zip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1037
    const/4 v11, 0x0

    move v3, v11

    .line 1046
    :goto_0
    move-object v11, v0

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->process(I)V

    .line 1048
    new-instance v11, Ljava/io/File;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v2

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 1049
    .local v4, "zar_file":Ljava/io/File;
    move-object v11, v4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1050
    move-object v11, v4

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    .line 1053
    :cond_0
    move v11, v3

    if-eqz v11, :cond_3

    .line 1054
    new-instance v11, Ljava/util/jar/JarOutputStream;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v4

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v11

    .line 1059
    .local v5, "zout":Ljava/util/zip/ZipOutputStream;
    :goto_1
    move-object v11, v0

    iget v11, v11, Lgnu/expr/Compilation;->numClasses:I

    new-array v11, v11, [[B

    move-object v6, v11

    .line 1060
    .local v6, "classBytes":[[B
    new-instance v11, Ljava/util/zip/CRC32;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    move-object v7, v11

    .line 1061
    .local v7, "zcrc":Ljava/util/zip/CRC32;
    const/4 v11, 0x0

    move v8, v11

    .local v8, "iClass":I
    :goto_2
    move v11, v8

    move-object v12, v0

    iget v12, v12, Lgnu/expr/Compilation;->numClasses:I

    if-ge v11, v12, :cond_4

    .line 1063
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 1064
    .local v9, "clas":Lgnu/bytecode/ClassType;
    move-object v11, v6

    move v12, v8

    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 1065
    new-instance v11, Ljava/util/zip/ZipEntry;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v9

    invoke-virtual {v14}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 1068
    .local v10, "zent":Ljava/util/zip/ZipEntry;
    move-object v11, v10

    move-object v12, v6

    move v13, v8

    aget-object v12, v12, v13

    array-length v12, v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 1069
    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->reset()V

    .line 1070
    move-object v11, v7

    move-object v12, v6

    move v13, v8

    aget-object v12, v12, v13

    const/4 v13, 0x0

    move-object v14, v6

    move v15, v8

    aget-object v14, v14, v15

    array-length v14, v14

    invoke-virtual {v11, v12, v13, v14}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1071
    move-object v11, v10

    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 1073
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1074
    move-object v11, v5

    move-object v12, v6

    move v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 1061
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1038
    .end local v4    # "zar_file":Ljava/io/File;
    .end local v5    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "classBytes":[[B
    .end local v7    # "zcrc":Ljava/util/zip/CRC32;
    .end local v8    # "iClass":I
    .end local v9    # "clas":Lgnu/bytecode/ClassType;
    .end local v10    # "zent":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v11, v2

    const-string/jumbo v12, ".jar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1039
    const/4 v11, 0x1

    move v3, v11

    goto/16 :goto_0

    .line 1042
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 1043
    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_0

    .line 1057
    .restart local v4    # "zar_file":Ljava/io/File;
    :cond_3
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v4

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v11

    .restart local v5    # "zout":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_1

    .line 1076
    .restart local v6    # "classBytes":[[B
    .restart local v7    # "zcrc":Ljava/util/zip/CRC32;
    .restart local v8    # "iClass":I
    :cond_4
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1077
    return-void
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 2

    .prologue
    .line 2428
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 2

    .prologue
    .line 2436
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public currentScope()Lgnu/expr/ScopeExp;
    .locals 2

    .prologue
    .line 2451
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 2598
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "msg1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "msg2":Ljava/lang/String;
    move-object v5, v0

    move v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V

    .line 2599
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 7

    .prologue
    .line 2590
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move v3, v1

    const/16 v4, 0x77

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2591
    const/16 v3, 0x65

    move v1, v3

    .line 2593
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method public error(CLjava/lang/String;Lgnu/text/SourceLocator;)V
    .locals 13

    .prologue
    .line 2573
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "location":Lgnu/text/SourceLocator;
    move-object v7, v3

    invoke-interface {v7}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 2574
    .local v4, "file":Ljava/lang/String;
    move-object v7, v3

    invoke-interface {v7}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v7

    move v5, v7

    .line 2575
    .local v5, "line":I
    move-object v7, v3

    invoke-interface {v7}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v7

    move v6, v7

    .line 2576
    .local v6, "column":I
    move-object v7, v4

    if-eqz v7, :cond_0

    move v7, v5

    if-gtz v7, :cond_1

    .line 2578
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 2579
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v7

    move v5, v7

    .line 2580
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v7

    move v6, v7

    .line 2583
    :cond_1
    move v7, v1

    const/16 v8, 0x77

    if-ne v7, v8, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2584
    const/16 v7, 0x65

    move v1, v7

    .line 2585
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v8, v1

    move-object v9, v4

    move v10, v5

    move v11, v6

    move-object v12, v2

    invoke-virtual/range {v7 .. v12}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 2586
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V
    .locals 16

    .prologue
    .line 2604
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move/from16 v1, p1

    .local v1, "severity":C
    move-object/from16 v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "code":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move v9, v1

    const/16 v10, 0x77

    if-ne v9, v10, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2605
    const/16 v9, 0x65

    move v1, v9

    .line 2607
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 2608
    .local v5, "filename":Ljava/lang/String;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v9

    move v6, v9

    .line 2609
    .local v6, "line":I
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v9

    move v7, v9

    .line 2610
    .local v7, "column":I
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v9

    move v8, v9

    .line 2611
    .local v8, "decl_line":I
    move v9, v8

    if-lez v9, :cond_1

    .line 2613
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 2614
    move v9, v8

    move v6, v9

    .line 2615
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getColumnNumber()I

    move-result v9

    move v7, v9

    .line 2617
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v10, v1

    move-object v11, v5

    move v12, v6

    move v13, v7

    move-object v14, v2

    move-object v15, v3

    invoke-virtual/range {v9 .. v15}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2618
    return-void
.end method

.method public findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 6

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/expr/Compilation;->numClasses:I

    if-ge v3, v4, :cond_1

    .line 614
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 617
    .end local v0    # "this":Lgnu/expr/Compilation;
    :goto_1
    return-object v0

    .line 612
    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public freeLocalField(Lgnu/bytecode/Field;)V
    .locals 0
    .param p1, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 2416
    return-void
.end method

.method public generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V
    .locals 39

    .prologue
    .line 1461
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/Compilation;
    move-object/from16 v3, p1

    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    const/16 v32, 0x0

    :goto_0
    move/from16 v4, v32

    .line 1463
    .local v4, "numApplyMethods":I
    move/from16 v32, v4

    if-nez v32, :cond_1

    .line 1464
    .line 1610
    :goto_1
    return-void

    .line 1461
    .end local v4    # "numApplyMethods":I
    :cond_0
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v32

    goto :goto_0

    .line 1465
    .restart local v4    # "numApplyMethods":I
    :cond_1
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    move-object/from16 v5, v32

    .line 1466
    .local v5, "save_class":Lgnu/bytecode/ClassType;
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1467
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v32

    sget-object v33, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v32

    if-nez v32, :cond_2

    .line 1468
    move-object/from16 v32, v2

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1469
    :cond_2
    sget-object v32, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object/from16 v6, v32

    .line 1470
    .local v6, "procType":Lgnu/bytecode/ClassType;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    move-object/from16 v7, v32

    .line 1471
    .local v7, "save_method":Lgnu/bytecode/Method;
    const/16 v32, 0x0

    move-object/from16 v8, v32

    .line 1472
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v32, v0

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    const/16 v34, 0x0

    sget-object v35, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v35, v33, v34

    move-object/from16 v9, v32

    .line 1475
    .local v9, "applyArgs":[Lgnu/bytecode/Type;
    move-object/from16 v32, v2

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v0

    const-string/jumbo v34, "apply"

    move-object/from16 v35, v9

    sget-object v36, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v37, 0x1

    invoke-virtual/range {v33 .. v37}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1478
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v32

    move-object/from16 v8, v32

    .line 1479
    move-object/from16 v32, v8

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v32

    move-object/from16 v10, v32

    .line 1481
    .local v10, "ctxVar":Lgnu/bytecode/Variable;
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1482
    move-object/from16 v32, v8

    sget-object v33, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1483
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v32

    move-object/from16 v11, v32

    .line 1485
    .local v11, "aswitch":Lgnu/bytecode/SwitchState;
    const/16 v32, 0x0

    move/from16 v12, v32

    .local v12, "j":I
    :goto_2
    move/from16 v32, v12

    move/from16 v33, v4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_18

    .line 1487
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v32, v0

    move/from16 v33, v12

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lgnu/expr/LambdaExp;

    move-object/from16 v13, v32

    .line 1488
    .local v13, "source":Lgnu/expr/LambdaExp;
    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    move-object/from16 v14, v32

    .line 1489
    .local v14, "primMethods":[Lgnu/bytecode/Method;
    move-object/from16 v32, v14

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v15, v32

    .line 1491
    .local v15, "numMethods":I
    const/16 v32, 0x0

    move/from16 v16, v32

    .local v16, "i":I
    :goto_3
    move/from16 v32, v16

    move/from16 v33, v15

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 1495
    move/from16 v32, v16

    move/from16 v33, v15

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v32, v0

    if-ltz v32, :cond_3

    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v32, v0

    move-object/from16 v33, v13

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v33, v0

    move/from16 v34, v15

    add-int v33, v33, v34

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    :cond_3
    const/16 v32, 0x1

    :goto_4
    move/from16 v17, v32

    .line 1499
    .local v17, "varArgs":Z
    move/from16 v32, v16

    move/from16 v18, v32

    .line 1501
    .local v18, "methodIndex":I
    move-object/from16 v32, v11

    move-object/from16 v33, v13

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v33

    move/from16 v34, v16

    add-int v33, v33, v34

    move-object/from16 v34, v8

    invoke-virtual/range {v32 .. v34}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    move-result v32

    .line 1503
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v32, v0

    move-object/from16 v33, v13

    invoke-virtual/range {v32 .. v33}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v32

    move-object/from16 v19, v32

    .line 1504
    .local v19, "saveLoc1":Lgnu/text/SourceLocator;
    move-object/from16 v32, v13

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v32

    move/from16 v20, v32

    .line 1505
    .local v20, "line":I
    move/from16 v32, v20

    if-lez v32, :cond_4

    .line 1506
    move-object/from16 v32, v8

    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v20

    invoke-virtual/range {v32 .. v34}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1508
    :cond_4
    move-object/from16 v32, v14

    move/from16 v33, v18

    aget-object v32, v32, v33

    move-object/from16 v21, v32

    .line 1509
    .local v21, "primMethod":Lgnu/bytecode/Method;
    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v32

    move-object/from16 v22, v32

    .line 1510
    .local v22, "primArgTypes":[Lgnu/bytecode/Type;
    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    move/from16 v33, v18

    add-int v32, v32, v33

    move/from16 v23, v32

    .line 1511
    .local v23, "singleArgs":I
    const/16 v32, 0x0

    move-object/from16 v24, v32

    .line 1512
    .local v24, "counter":Lgnu/bytecode/Variable;
    const/16 v32, 0x0

    move/from16 v25, v32

    .line 1514
    .local v25, "pendingIfEnds":I
    move/from16 v32, v16

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_6

    move/from16 v32, v15

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_6

    .line 1516
    move-object/from16 v32, v8

    sget-object v33, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v32

    move-object/from16 v24, v32

    .line 1517
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1518
    move-object/from16 v32, v8

    sget-object v33, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v34, "getArgCount"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1519
    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 1521
    move-object/from16 v32, v8

    move-object/from16 v33, v13

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1522
    move-object/from16 v32, v8

    sget-object v33, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1524
    :cond_5
    move-object/from16 v32, v8

    move-object/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1527
    :cond_6
    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x0

    :goto_5
    move/from16 v26, v32

    .line 1528
    .local v26, "needsThis":I
    move/from16 v32, v23

    move/from16 v33, v17

    if-eqz v33, :cond_d

    const/16 v33, 0x2

    :goto_6
    add-int v32, v32, v33

    move-object/from16 v33, v22

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    const/16 v32, 0x1

    :goto_7
    move/from16 v27, v32

    .line 1530
    .local v27, "explicitFrameArg":I
    move/from16 v32, v26

    move/from16 v33, v27

    add-int v32, v32, v33

    if-lez v32, :cond_7

    .line 1532
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1533
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_7

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 1534
    move-object/from16 v32, v8

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1537
    :cond_7
    move-object/from16 v32, v13

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v28, v32

    .line 1538
    .local v28, "var":Lgnu/expr/Declaration;
    move-object/from16 v32, v28

    if-eqz v32, :cond_8

    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1539
    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v28, v32

    .line 1540
    :cond_8
    const/16 v32, 0x0

    move/from16 v29, v32

    .local v29, "k":I
    :goto_8
    move/from16 v32, v29

    move/from16 v33, v23

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    .line 1542
    move-object/from16 v32, v24

    if-eqz v32, :cond_9

    move/from16 v32, v29

    move-object/from16 v33, v13

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_9

    .line 1544
    move-object/from16 v32, v8

    move-object/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1545
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1546
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1547
    move-object/from16 v32, v8

    move-object/from16 v33, v14

    move/from16 v34, v29

    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    aget-object v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1548
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1549
    add-int/lit8 v25, v25, 0x1

    .line 1550
    move-object/from16 v32, v8

    move-object/from16 v33, v24

    const/16 v34, -0x1

    invoke-virtual/range {v32 .. v34}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1553
    :cond_9
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1554
    move/from16 v32, v29

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_f

    move/from16 v32, v17

    if-nez v32, :cond_f

    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_f

    .line 1555
    move-object/from16 v32, v8

    sget-object v33, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v38, v34

    move-object/from16 v34, v38

    move-object/from16 v35, v38

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "value"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move/from16 v35, v29

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1564
    :goto_9
    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v32

    move-object/from16 v30, v32

    .line 1565
    .local v30, "ptype":Lgnu/bytecode/Type;
    move-object/from16 v32, v30

    sget-object v33, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 1567
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v32, v0

    move-object/from16 v33, v28

    invoke-virtual/range {v32 .. v33}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v32

    move-object/from16 v31, v32

    .line 1568
    .local v31, "saveLoc2":Lgnu/text/SourceLocator;
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    move/from16 v34, v29

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v30

    invoke-static/range {v32 .. v35}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1570
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v32, v0

    move-object/from16 v33, v31

    invoke-virtual/range {v32 .. v33}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v32

    .line 1572
    .end local v31    # "saveLoc2":Lgnu/text/SourceLocator;
    :cond_a
    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v28, v32

    .line 1540
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_8

    .line 1495
    .end local v17    # "varArgs":Z
    .end local v18    # "methodIndex":I
    .end local v19    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v20    # "line":I
    .end local v21    # "primMethod":Lgnu/bytecode/Method;
    .end local v22    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v23    # "singleArgs":I
    .end local v24    # "counter":Lgnu/bytecode/Variable;
    .end local v25    # "pendingIfEnds":I
    .end local v26    # "needsThis":I
    .end local v27    # "explicitFrameArg":I
    .end local v28    # "var":Lgnu/expr/Declaration;
    .end local v29    # "k":I
    .end local v30    # "ptype":Lgnu/bytecode/Type;
    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 1527
    .restart local v17    # "varArgs":Z
    .restart local v18    # "methodIndex":I
    .restart local v19    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v20    # "line":I
    .restart local v21    # "primMethod":Lgnu/bytecode/Method;
    .restart local v22    # "primArgTypes":[Lgnu/bytecode/Type;
    .restart local v23    # "singleArgs":I
    .restart local v24    # "counter":Lgnu/bytecode/Variable;
    .restart local v25    # "pendingIfEnds":I
    :cond_c
    const/16 v32, 0x1

    goto/16 :goto_5

    .line 1528
    .restart local v26    # "needsThis":I
    :cond_d
    const/16 v33, 0x1

    goto/16 :goto_6

    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 1559
    .restart local v27    # "explicitFrameArg":I
    .restart local v28    # "var":Lgnu/expr/Declaration;
    .restart local v29    # "k":I
    :cond_f
    move-object/from16 v32, v8

    sget-object v33, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v34, "values"

    invoke-virtual/range {v33 .. v34}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1561
    move-object/from16 v32, v8

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1562
    move-object/from16 v32, v8

    sget-object v33, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_9

    .line 1575
    :cond_10
    move/from16 v32, v17

    if-eqz v32, :cond_11

    .line 1577
    move-object/from16 v32, v22

    move/from16 v33, v27

    move/from16 v34, v23

    add-int v33, v33, v34

    aget-object v32, v32, v33

    move-object/from16 v29, v32

    .line 1578
    .local v29, "lastArgType":Lgnu/bytecode/Type;
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 1579
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    move/from16 v34, v23

    move-object/from16 v35, v24

    move-object/from16 v36, v29

    move-object/from16 v37, v10

    invoke-direct/range {v32 .. v37}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1592
    .end local v29    # "lastArgType":Lgnu/bytecode/Type;
    :cond_11
    :goto_a
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1593
    move-object/from16 v32, v8

    move-object/from16 v33, v21

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1594
    :goto_b
    add-int/lit8 v25, v25, -0x1

    move/from16 v32, v25

    if-ltz v32, :cond_15

    .line 1595
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_b

    .line 1580
    .restart local v29    # "lastArgType":Lgnu/bytecode/Type;
    :cond_12
    const-string/jumbo v32, "gnu.lists.LList"

    move-object/from16 v33, v29

    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 1583
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1584
    move-object/from16 v32, v8

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1585
    move-object/from16 v32, v8

    sget-object v33, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v34, "getRestArgsList"

    const/16 v35, 0x1

    invoke-virtual/range {v33 .. v35}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1587
    :cond_13
    move-object/from16 v32, v29

    sget-object v33, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 1588
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_a

    .line 1590
    :cond_14
    new-instance v32, Ljava/lang/RuntimeException;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v38, v34

    move-object/from16 v34, v38

    move-object/from16 v35, v38

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unsupported #!rest type:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v29

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 1596
    .end local v29    # "lastArgType":Lgnu/bytecode/Type;
    :cond_15
    sget v32, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_16

    .line 1597
    sget-object v32, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v33, v2

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1599
    :cond_16
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v32, v0

    move-object/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v32

    .line 1600
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1491
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1485
    .end local v17    # "varArgs":Z
    .end local v18    # "methodIndex":I
    .end local v19    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v20    # "line":I
    .end local v21    # "primMethod":Lgnu/bytecode/Method;
    .end local v22    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v23    # "singleArgs":I
    .end local v24    # "counter":Lgnu/bytecode/Variable;
    .end local v25    # "pendingIfEnds":I
    .end local v26    # "needsThis":I
    .end local v27    # "explicitFrameArg":I
    .end local v28    # "var":Lgnu/expr/Declaration;
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1603
    .end local v13    # "source":Lgnu/expr/LambdaExp;
    .end local v14    # "primMethods":[Lgnu/bytecode/Method;
    .end local v15    # "numMethods":I
    .end local v16    # "i":I
    :cond_18
    move-object/from16 v32, v11

    move-object/from16 v33, v8

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1604
    sget-object v32, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string/jumbo v33, "applyError"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v32

    move-object/from16 v12, v32

    .line 1605
    .local v12, "errMethod":Lgnu/bytecode/Method;
    move-object/from16 v32, v8

    move-object/from16 v33, v12

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1606
    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1607
    move-object/from16 v32, v11

    move-object/from16 v33, v8

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1608
    move-object/from16 v32, v2

    move-object/from16 v33, v7

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1609
    move-object/from16 v32, v2

    move-object/from16 v33, v5

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1610
    goto/16 :goto_1
.end method

.method public generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V
    .locals 42

    .prologue
    .line 1618
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/Compilation;
    move-object/from16 v3, p1

    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    const/16 v35, 0x0

    :goto_0
    move/from16 v4, v35

    .line 1620
    .local v4, "numApplyMethods":I
    move/from16 v35, v4

    if-nez v35, :cond_1

    .line 1621
    .line 1822
    :goto_1
    return-void

    .line 1618
    .end local v4    # "numApplyMethods":I
    :cond_0
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    goto :goto_0

    .line 1622
    .restart local v4    # "numApplyMethods":I
    :cond_1
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v5, v35

    .line 1623
    .local v5, "save_class":Lgnu/bytecode/ClassType;
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1624
    sget-object v35, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object/from16 v6, v35

    .line 1625
    .local v6, "procType":Lgnu/bytecode/ClassType;
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v35

    sget-object v36, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v35

    if-nez v35, :cond_2

    .line 1626
    move-object/from16 v35, v2

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1627
    :cond_2
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    move-object/from16 v7, v35

    .line 1628
    .local v7, "save_method":Lgnu/bytecode/Method;
    const/16 v35, 0x0

    move-object/from16 v8, v35

    .line 1629
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    sget v35, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_6

    const/16 v35, 0x5

    :goto_2
    move/from16 v9, v35

    .line 1631
    .local v9, "i":I
    :goto_3
    move/from16 v35, v9

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_26

    .line 1635
    const/16 v35, 0x0

    move/from16 v10, v35

    .line 1636
    .local v10, "needThisApply":Z
    const/16 v35, 0x0

    move-object/from16 v11, v35

    .line 1637
    .local v11, "aswitch":Lgnu/bytecode/SwitchState;
    const/16 v35, 0x0

    move-object/from16 v12, v35

    .line 1638
    .local v12, "mname":Ljava/lang/String;
    const/16 v35, 0x0

    move-object/from16 v13, v35

    .line 1640
    .local v13, "applyArgs":[Lgnu/bytecode/Type;
    const/16 v35, 0x0

    move/from16 v14, v35

    .local v14, "j":I
    :goto_4
    move/from16 v35, v14

    move/from16 v36, v4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_21

    .line 1642
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v36, v14

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lgnu/expr/LambdaExp;

    move-object/from16 v15, v35

    .line 1645
    .local v15, "source":Lgnu/expr/LambdaExp;
    move-object/from16 v35, v15

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    move-object/from16 v16, v35

    .line 1646
    .local v16, "primMethods":[Lgnu/bytecode/Method;
    move-object/from16 v35, v16

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v17, v35

    .line 1647
    .local v17, "numMethods":I
    move-object/from16 v35, v15

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v35, v0

    if-ltz v35, :cond_3

    move-object/from16 v35, v15

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v35, v0

    move-object/from16 v36, v15

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v36, v0

    move/from16 v37, v17

    add-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_7

    :cond_3
    const/16 v35, 0x1

    :goto_5
    move/from16 v18, v35

    .line 1650
    .local v18, "varArgs":Z
    const/16 v35, 0x0

    move/from16 v20, v35

    .line 1651
    .local v20, "skipThisProc":Z
    move/from16 v35, v9

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    .line 1653
    move/from16 v35, v9

    move-object/from16 v36, v15

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v19, v35

    .line 1654
    .local v19, "methodIndex":I
    move/from16 v35, v19

    if-ltz v35, :cond_4

    move/from16 v35, v19

    move/from16 v36, v17

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    move/from16 v35, v19

    move/from16 v36, v17

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move/from16 v35, v18

    if-eqz v35, :cond_5

    .line 1656
    :cond_4
    const/16 v35, 0x1

    move/from16 v20, v35

    .line 1657
    :cond_5
    const/16 v35, 0x1

    move/from16 v17, v35

    .line 1658
    const/16 v35, 0x0

    move/from16 v18, v35

    .line 1667
    :goto_6
    move/from16 v35, v20

    if-eqz v35, :cond_a

    .line 1668
    .line 1640
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1629
    .end local v9    # "i":I
    .end local v10    # "needThisApply":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "applyArgs":[Lgnu/bytecode/Type;
    .end local v14    # "j":I
    .end local v15    # "source":Lgnu/expr/LambdaExp;
    .end local v16    # "primMethods":[Lgnu/bytecode/Method;
    .end local v17    # "numMethods":I
    .end local v18    # "varArgs":Z
    .end local v19    # "methodIndex":I
    .end local v20    # "skipThisProc":Z
    :cond_6
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 1647
    .restart local v9    # "i":I
    .restart local v10    # "needThisApply":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "applyArgs":[Lgnu/bytecode/Type;
    .restart local v14    # "j":I
    .restart local v15    # "source":Lgnu/expr/LambdaExp;
    .restart local v16    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v17    # "numMethods":I
    :cond_7
    const/16 v35, 0x0

    goto :goto_5

    .line 1662
    .restart local v18    # "varArgs":Z
    .restart local v20    # "skipThisProc":Z
    :cond_8
    const/16 v35, 0x5

    move-object/from16 v36, v15

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v36, v0

    rsub-int/lit8 v35, v36, 0x5

    move/from16 v19, v35

    .line 1663
    .restart local v19    # "methodIndex":I
    move/from16 v35, v19

    if-lez v35, :cond_9

    move/from16 v35, v17

    move/from16 v36, v19

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_9

    move/from16 v35, v18

    if-nez v35, :cond_9

    .line 1664
    const/16 v35, 0x1

    move/from16 v20, v35

    .line 1665
    :cond_9
    move/from16 v35, v17

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v19, v35

    goto :goto_6

    .line 1669
    :cond_a
    move/from16 v35, v10

    if-nez v35, :cond_c

    .line 1672
    move/from16 v35, v9

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_14

    .line 1674
    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v41, v35

    move-object/from16 v35, v41

    move-object/from16 v36, v41

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "apply"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move/from16 v36, v9

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v12, v35

    .line 1675
    move/from16 v35, v9

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v35, v0

    move-object/from16 v13, v35

    .line 1676
    move/from16 v35, v9

    move/from16 v21, v35

    .local v21, "k":I
    :goto_8
    move/from16 v35, v21

    if-lez v35, :cond_b

    .line 1677
    move-object/from16 v35, v13

    move/from16 v36, v21

    sget-object v37, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v37, v35, v36

    .line 1676
    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    .line 1685
    .end local v21    # "k":I
    :cond_b
    :goto_9
    move-object/from16 v35, v13

    const/16 v36, 0x0

    move-object/from16 v37, v6

    aput-object v37, v35, v36

    .line 1686
    move-object/from16 v35, v2

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    sget v39, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_15

    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_a
    const/16 v40, 0x1

    invoke-virtual/range {v36 .. v40}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1689
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v35

    move-object/from16 v8, v35

    .line 1691
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1692
    move-object/from16 v35, v8

    move-object/from16 v36, v6

    const-string/jumbo v37, "selector"

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1693
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v35

    move-object/from16 v11, v35

    .line 1695
    const/16 v35, 0x1

    move/from16 v10, v35

    .line 1698
    :cond_c
    move-object/from16 v35, v11

    move-object/from16 v36, v15

    move-object/from16 v37, v2

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v36

    move-object/from16 v37, v8

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    move-result v35

    .line 1700
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v35, v0

    move-object/from16 v36, v15

    invoke-virtual/range {v35 .. v36}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v35

    move-object/from16 v21, v35

    .line 1701
    .local v21, "saveLoc1":Lgnu/text/SourceLocator;
    move-object/from16 v35, v15

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v35

    move/from16 v22, v35

    .line 1702
    .local v22, "line":I
    move/from16 v35, v22

    if-lez v35, :cond_d

    .line 1703
    move-object/from16 v35, v8

    move-object/from16 v36, v15

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v36

    move/from16 v37, v22

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1705
    :cond_d
    move-object/from16 v35, v16

    move/from16 v36, v19

    aget-object v35, v35, v36

    move-object/from16 v23, v35

    .line 1706
    .local v23, "primMethod":Lgnu/bytecode/Method;
    move-object/from16 v35, v23

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v35

    move-object/from16 v24, v35

    .line 1707
    .local v24, "primArgTypes":[Lgnu/bytecode/Type;
    move-object/from16 v35, v15

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v35, v0

    move/from16 v36, v19

    add-int v35, v35, v36

    move/from16 v25, v35

    .line 1708
    .local v25, "singleArgs":I
    const/16 v35, 0x0

    move-object/from16 v26, v35

    .line 1709
    .local v26, "counter":Lgnu/bytecode/Variable;
    const/16 v35, 0x0

    move/from16 v27, v35

    .line 1711
    .local v27, "pendingIfEnds":I
    move/from16 v35, v9

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_f

    move/from16 v35, v17

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_f

    .line 1713
    move-object/from16 v35, v8

    sget-object v36, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v35

    move-object/from16 v26, v35

    .line 1714
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1715
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1716
    move-object/from16 v35, v15

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v35, v0

    if-eqz v35, :cond_e

    .line 1718
    move-object/from16 v35, v8

    move-object/from16 v36, v15

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1719
    move-object/from16 v35, v8

    sget-object v36, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1721
    :cond_e
    move-object/from16 v35, v8

    move-object/from16 v36, v26

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1724
    :cond_f
    move-object/from16 v35, v23

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v35

    if-eqz v35, :cond_16

    const/16 v35, 0x0

    :goto_b
    move/from16 v28, v35

    .line 1725
    .local v28, "needsThis":I
    move/from16 v35, v25

    move/from16 v36, v18

    if-eqz v36, :cond_17

    const/16 v36, 0x1

    :goto_c
    add-int v35, v35, v36

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_18

    const/16 v35, 0x1

    :goto_d
    move/from16 v29, v35

    .line 1727
    .local v29, "explicitFrameArg":I
    move/from16 v35, v28

    move/from16 v36, v29

    add-int v35, v35, v36

    if-lez v35, :cond_10

    .line 1729
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1730
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_10

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_10

    .line 1731
    move-object/from16 v35, v8

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1734
    :cond_10
    move-object/from16 v35, v15

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v35

    move-object/from16 v30, v35

    .line 1735
    .local v30, "var":Lgnu/expr/Declaration;
    move-object/from16 v35, v30

    if-eqz v35, :cond_11

    move-object/from16 v35, v30

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v35

    if-eqz v35, :cond_11

    .line 1736
    move-object/from16 v35, v30

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    move-object/from16 v30, v35

    .line 1737
    :cond_11
    const/16 v35, 0x0

    move/from16 v31, v35

    .local v31, "k":I
    :goto_e
    move/from16 v35, v31

    move/from16 v36, v25

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    .line 1739
    move-object/from16 v35, v26

    if-eqz v35, :cond_12

    move/from16 v35, v31

    move-object/from16 v36, v15

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_12

    .line 1741
    move-object/from16 v35, v8

    move-object/from16 v36, v26

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1742
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1743
    move-object/from16 v35, v8

    move-object/from16 v36, v16

    move/from16 v37, v31

    move-object/from16 v38, v15

    move-object/from16 v0, v38

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1744
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1745
    add-int/lit8 v27, v27, 0x1

    .line 1746
    move-object/from16 v35, v8

    move-object/from16 v36, v26

    const/16 v37, -0x1

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1749
    :cond_12
    const/16 v35, 0x0

    move-object/from16 v32, v35

    .line 1750
    .local v32, "pvar":Lgnu/bytecode/Variable;
    move/from16 v35, v9

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_19

    .line 1752
    move-object/from16 v35, v8

    move/from16 v36, v31

    const/16 v37, 0x2

    add-int/lit8 v36, v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v35

    move-object/from16 v32, v35

    .line 1753
    move-object/from16 v35, v8

    move-object/from16 v36, v32

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1762
    :goto_f
    move-object/from16 v35, v30

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v35

    move-object/from16 v33, v35

    .line 1763
    .local v33, "ptype":Lgnu/bytecode/Type;
    move-object/from16 v35, v33

    sget-object v36, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_13

    .line 1765
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v35, v0

    move-object/from16 v36, v30

    invoke-virtual/range {v35 .. v36}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v35

    move-object/from16 v34, v35

    .line 1766
    .local v34, "saveLoc2":Lgnu/text/SourceLocator;
    move-object/from16 v35, v2

    move-object/from16 v36, v15

    move/from16 v37, v31

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v38, v33

    move-object/from16 v39, v32

    invoke-static/range {v35 .. v39}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1768
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v35, v0

    move-object/from16 v36, v34

    invoke-virtual/range {v35 .. v36}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v35

    .line 1770
    .end local v34    # "saveLoc2":Lgnu/text/SourceLocator;
    :cond_13
    move-object/from16 v35, v30

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    move-object/from16 v30, v35

    .line 1737
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_e

    .line 1681
    .end local v21    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v22    # "line":I
    .end local v23    # "primMethod":Lgnu/bytecode/Method;
    .end local v24    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v25    # "singleArgs":I
    .end local v26    # "counter":Lgnu/bytecode/Variable;
    .end local v27    # "pendingIfEnds":I
    .end local v28    # "needsThis":I
    .end local v29    # "explicitFrameArg":I
    .end local v30    # "var":Lgnu/expr/Declaration;
    .end local v31    # "k":I
    .end local v32    # "pvar":Lgnu/bytecode/Variable;
    .end local v33    # "ptype":Lgnu/bytecode/Type;
    :cond_14
    const-string/jumbo v35, "applyN"

    move-object/from16 v12, v35

    .line 1682
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v35, v0

    move-object/from16 v13, v35

    .line 1683
    move-object/from16 v35, v13

    const/16 v36, 0x1

    sget-object v37, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v37, v35, v36

    goto/16 :goto_9

    .line 1686
    :cond_15
    sget-object v39, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto/16 :goto_a

    .line 1724
    .restart local v21    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v22    # "line":I
    .restart local v23    # "primMethod":Lgnu/bytecode/Method;
    .restart local v24    # "primArgTypes":[Lgnu/bytecode/Type;
    .restart local v25    # "singleArgs":I
    .restart local v26    # "counter":Lgnu/bytecode/Variable;
    .restart local v27    # "pendingIfEnds":I
    :cond_16
    const/16 v35, 0x1

    goto/16 :goto_b

    .line 1725
    .restart local v28    # "needsThis":I
    :cond_17
    const/16 v36, 0x0

    goto/16 :goto_c

    :cond_18
    const/16 v35, 0x0

    goto/16 :goto_d

    .line 1758
    .restart local v29    # "explicitFrameArg":I
    .restart local v30    # "var":Lgnu/expr/Declaration;
    .restart local v31    # "k":I
    .restart local v32    # "pvar":Lgnu/bytecode/Variable;
    :cond_19
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1759
    move-object/from16 v35, v8

    move/from16 v36, v31

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1760
    move-object/from16 v35, v8

    sget-object v36, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto/16 :goto_f

    .line 1773
    .end local v32    # "pvar":Lgnu/bytecode/Variable;
    :cond_1a
    move/from16 v35, v18

    if-eqz v35, :cond_1b

    .line 1775
    move-object/from16 v35, v24

    move/from16 v36, v29

    move/from16 v37, v25

    add-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v31, v35

    .line 1776
    .local v31, "lastArgType":Lgnu/bytecode/Type;
    move-object/from16 v35, v31

    move-object/from16 v0, v35

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v35, v0

    if-eqz v35, :cond_1c

    .line 1777
    move-object/from16 v35, v2

    move-object/from16 v36, v15

    move/from16 v37, v25

    move-object/from16 v38, v26

    move-object/from16 v39, v31

    const/16 v40, 0x0

    invoke-direct/range {v35 .. v40}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1790
    .end local v31    # "lastArgType":Lgnu/bytecode/Type;
    :cond_1b
    :goto_10
    move-object/from16 v35, v8

    move-object/from16 v36, v23

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1791
    :goto_11
    add-int/lit8 v27, v27, -0x1

    move/from16 v35, v27

    if-ltz v35, :cond_1f

    .line 1792
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_11

    .line 1778
    .restart local v31    # "lastArgType":Lgnu/bytecode/Type;
    :cond_1c
    const-string/jumbo v35, "gnu.lists.LList"

    move-object/from16 v36, v31

    invoke-virtual/range {v36 .. v36}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 1781
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1782
    move-object/from16 v35, v8

    move/from16 v36, v25

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1783
    move-object/from16 v35, v8

    sget-object v36, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_10

    .line 1785
    :cond_1d
    move-object/from16 v35, v31

    sget-object v36, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 1786
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_10

    .line 1788
    :cond_1e
    new-instance v35, Ljava/lang/RuntimeException;

    move-object/from16 v41, v35

    move-object/from16 v35, v41

    move-object/from16 v36, v41

    new-instance v37, Ljava/lang/StringBuilder;

    move-object/from16 v41, v37

    move-object/from16 v37, v41

    move-object/from16 v38, v41

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "unsupported #!rest type:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v38, v31

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 1793
    .end local v31    # "lastArgType":Lgnu/bytecode/Type;
    :cond_1f
    sget v35, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_20

    .line 1794
    sget-object v35, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v36, v2

    move-object/from16 v37, v15

    invoke-virtual/range {v37 .. v37}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1796
    :cond_20
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v35, v0

    move-object/from16 v36, v21

    invoke-virtual/range {v35 .. v36}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v35

    .line 1797
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_7

    .line 1799
    .end local v15    # "source":Lgnu/expr/LambdaExp;
    .end local v16    # "primMethods":[Lgnu/bytecode/Method;
    .end local v17    # "numMethods":I
    .end local v18    # "varArgs":Z
    .end local v19    # "methodIndex":I
    .end local v20    # "skipThisProc":Z
    .end local v21    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v22    # "line":I
    .end local v23    # "primMethod":Lgnu/bytecode/Method;
    .end local v24    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v25    # "singleArgs":I
    .end local v26    # "counter":Lgnu/bytecode/Variable;
    .end local v27    # "pendingIfEnds":I
    .end local v28    # "needsThis":I
    .end local v29    # "explicitFrameArg":I
    .end local v30    # "var":Lgnu/expr/Declaration;
    :cond_21
    move/from16 v35, v10

    if-eqz v35, :cond_22

    .line 1801
    move-object/from16 v35, v11

    move-object/from16 v36, v8

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1802
    sget v35, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_23

    .line 1804
    sget-object v35, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string/jumbo v36, "applyError"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    move-object/from16 v14, v35

    .line 1806
    .local v14, "errMethod":Lgnu/bytecode/Method;
    move-object/from16 v35, v8

    move-object/from16 v36, v14

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1807
    .line 1816
    .end local v14    # "errMethod":Lgnu/bytecode/Method;
    :goto_12
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1817
    move-object/from16 v35, v11

    move-object/from16 v36, v8

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1631
    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1810
    .local v14, "j":I
    :cond_23
    move/from16 v35, v9

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_24

    const/16 v35, 0x2

    :goto_13
    move/from16 v14, v35

    .line 1811
    .local v14, "nargs":I
    add-int/lit8 v14, v14, 0x1

    .line 1812
    const/16 v35, 0x0

    move/from16 v15, v35

    .local v15, "k":I
    :goto_14
    move/from16 v35, v15

    move/from16 v36, v14

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_25

    .line 1813
    move-object/from16 v35, v8

    move-object/from16 v36, v8

    move/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1812
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    .line 1810
    .end local v15    # "k":I
    .local v14, "j":I
    :cond_24
    move/from16 v35, v9

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    goto :goto_13

    .line 1814
    .local v14, "nargs":I
    .restart local v15    # "k":I
    :cond_25
    move-object/from16 v35, v8

    sget-object v36, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    invoke-virtual/range {v36 .. v38}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_12

    .line 1820
    .end local v10    # "needThisApply":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "applyArgs":[Lgnu/bytecode/Type;
    .end local v14    # "nargs":I
    .end local v15    # "k":I
    :cond_26
    move-object/from16 v35, v2

    move-object/from16 v36, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1821
    move-object/from16 v35, v2

    move-object/from16 v36, v5

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1822
    goto/16 :goto_1
.end method

.method generateBytecode()V
    .locals 41

    .prologue
    .line 2018
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/Compilation;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v34

    move-object/from16 v3, v34

    .line 2019
    .local v3, "module":Lgnu/expr/ModuleExp;
    sget-boolean v34, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v34, :cond_0

    .line 2021
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v34

    move-object/from16 v4, v34

    .line 2022
    .local v4, "dout":Lgnu/mapping/OutPort;
    move-object/from16 v34, v4

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "[Compiling final "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 2024
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 2025
    move-object/from16 v34, v4

    const/16 v35, 0x5d

    invoke-virtual/range {v34 .. v35}, Lgnu/mapping/OutPort;->println(C)V

    .line 2026
    move-object/from16 v34, v4

    invoke-virtual/range {v34 .. v34}, Lgnu/mapping/OutPort;->flush()V

    .line 2029
    .end local v4    # "dout":Lgnu/mapping/OutPort;
    :cond_0
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v34

    move-object/from16 v4, v34

    .line 2030
    .local v4, "neededSuper":Lgnu/bytecode/ClassType;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v34

    move-object/from16 v35, v4

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 2031
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2040
    :goto_0
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 2042
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v34, v0

    move-object/from16 v6, v34

    .line 2043
    .local v6, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2045
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v34

    if-eqz v34, :cond_8

    .line 2047
    const/16 v34, 0x1

    move/from16 v5, v34

    .line 2048
    .local v5, "arg_count":I
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v34, v0

    move-object/from16 v7, v34

    .line 2049
    .local v7, "arg_types":[Lgnu/bytecode/Type;
    move-object/from16 v34, v7

    const/16 v35, 0x0

    sget-object v36, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v36, v34, v35

    .line 2066
    :cond_1
    :goto_1
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v34, v0

    move-object/from16 v9, v34

    .line 2067
    .local v9, "heapFrame":Lgnu/bytecode/Variable;
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v34

    move/from16 v10, v34

    .line 2070
    .local v10, "staticModule":Z
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    const-string/jumbo v35, "run"

    move-object/from16 v36, v7

    sget-object v37, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v38, 0x11

    invoke-virtual/range {v34 .. v38}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v34

    move-object/from16 v11, v34

    .line 2072
    .local v11, "apply_method":Lgnu/bytecode/Method;
    move-object/from16 v34, v2

    move-object/from16 v35, v11

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2077
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Method;->initCode()V

    .line 2078
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2081
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v35

    if-eqz v35, :cond_b

    const/16 v35, 0x0

    :goto_2
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    .line 2082
    move-object/from16 v34, v3

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/ModuleExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 2083
    move-object/from16 v34, v3

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v35

    if-eqz v35, :cond_c

    const/16 v35, 0x0

    :goto_3
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2084
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 2086
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v34

    if-nez v34, :cond_2

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v34

    if-eqz v34, :cond_3

    .line 2088
    :cond_2
    move-object/from16 v34, v2

    new-instance v35, Lgnu/bytecode/Variable;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    const-string/jumbo v37, "$ctx"

    sget-object v38, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct/range {v36 .. v38}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2089
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v34

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 2090
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 2093
    :cond_3
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->getLineNumber()I

    move-result v34

    move/from16 v12, v34

    .line 2094
    .local v12, "line":I
    move/from16 v34, v12

    if-lez v34, :cond_4

    .line 2095
    move-object/from16 v34, v8

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v35

    move/from16 v36, v12

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 2097
    :cond_4
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 2098
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 2099
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v34

    if-eqz v34, :cond_5

    .line 2101
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 2102
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2103
    move-object/from16 v34, v2

    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    .line 2104
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v36, v8

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    move-result v34

    .line 2107
    :cond_5
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 2108
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 2110
    const/16 v34, 0x0

    move-object/from16 v13, v34

    .line 2111
    .local v13, "startLiterals":Lgnu/bytecode/Label;
    const/16 v34, 0x0

    move-object/from16 v14, v34

    .line 2112
    .local v14, "afterLiterals":Lgnu/bytecode/Label;
    const/16 v34, 0x0

    move-object/from16 v15, v34

    .line 2114
    .local v15, "initMethod":Lgnu/bytecode/Method;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_10

    .line 2116
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    move-object/from16 v16, v34

    .line 2117
    .local v16, "save_method":Lgnu/bytecode/Method;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v34, v0

    move-object/from16 v17, v34

    .line 2118
    .local v17, "callContextSave":Lgnu/bytecode/Variable;
    move-object/from16 v34, v2

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2120
    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v34}, Lgnu/expr/Compilation;->startClassInit()Lgnu/bytecode/Method;

    move-result-object v34

    move-object/from16 v15, v34

    .line 2121
    move-object/from16 v34, v2

    move-object/from16 v35, v15

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    .line 2122
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2124
    new-instance v34, Lgnu/bytecode/Label;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v36, v8

    invoke-direct/range {v35 .. v36}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v13, v34

    .line 2125
    new-instance v34, Lgnu/bytecode/Label;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v36, v8

    invoke-direct/range {v35 .. v36}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v14, v34

    .line 2126
    move-object/from16 v34, v8

    move-object/from16 v35, v14

    move-object/from16 v36, v13

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2128
    move/from16 v34, v10

    if-eqz v34, :cond_6

    .line 2130
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 2132
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2133
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2134
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2135
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    const-string/jumbo v36, "$instance"

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    const/16 v38, 0x19

    invoke-virtual/range {v35 .. v38}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 2138
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 2141
    :cond_6
    :goto_4
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    move-object/from16 v34, v0

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v18, v35

    .local v18, "init":Lgnu/expr/Initializer;
    if-eqz v34, :cond_d

    .line 2143
    move-object/from16 v34, v2

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 2144
    move-object/from16 v34, v2

    move-object/from16 v35, v18

    invoke-direct/range {v34 .. v35}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_4

    .line 2034
    .end local v5    # "arg_count":I
    .end local v6    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v7    # "arg_types":[Lgnu/bytecode/Type;
    .end local v8    # "code":Lgnu/bytecode/CodeAttr;
    .end local v9    # "heapFrame":Lgnu/bytecode/Variable;
    .end local v10    # "staticModule":Z
    .end local v11    # "apply_method":Lgnu/bytecode/Method;
    .end local v12    # "line":I
    .end local v13    # "startLiterals":Lgnu/bytecode/Label;
    .end local v14    # "afterLiterals":Lgnu/bytecode/Label;
    .end local v15    # "initMethod":Lgnu/bytecode/Method;
    .end local v16    # "save_method":Lgnu/bytecode/Method;
    .end local v17    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v18    # "init":Lgnu/expr/Initializer;
    :cond_7
    move-object/from16 v34, v2

    new-instance v35, Lgnu/bytecode/ClassType;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v37, v2

    const-string/jumbo v38, "frame"

    invoke-virtual/range {v37 .. v38}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2035
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    move-object/from16 v35, v4

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2036
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2037
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    goto/16 :goto_0

    .line 2051
    .restart local v6    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_8
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v34, v0

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/expr/ModuleExp;->max_args:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_a

    .line 2053
    :cond_9
    const/16 v34, 0x1

    move/from16 v5, v34

    .line 2054
    .restart local v5    # "arg_count":I
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v34, v0

    move-object/from16 v7, v34

    .line 2055
    .restart local v7    # "arg_types":[Lgnu/bytecode/Type;
    move-object/from16 v34, v7

    const/16 v35, 0x0

    new-instance v36, Lgnu/bytecode/ArrayType;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    sget-object v38, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-direct/range {v37 .. v38}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v36, v34, v35

    goto/16 :goto_1

    .line 2059
    .end local v5    # "arg_count":I
    .end local v7    # "arg_types":[Lgnu/bytecode/Type;
    :cond_a
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v34, v0

    move/from16 v5, v34

    .line 2060
    .restart local v5    # "arg_count":I
    move/from16 v34, v5

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v34, v0

    move-object/from16 v7, v34

    .line 2061
    .restart local v7    # "arg_types":[Lgnu/bytecode/Type;
    move/from16 v34, v5

    move/from16 v8, v34

    .local v8, "i":I
    :goto_5
    add-int/lit8 v8, v8, -0x1

    move/from16 v34, v8

    if-ltz v34, :cond_1

    .line 2062
    move-object/from16 v34, v7

    move/from16 v35, v8

    sget-object v36, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v36, v34, v35

    goto :goto_5

    .line 2081
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    .restart local v9    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v10    # "staticModule":Z
    .restart local v11    # "apply_method":Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v35, v3

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lgnu/expr/ModuleExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v35

    goto/16 :goto_2

    .line 2083
    :cond_c
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v35, v0

    goto/16 :goto_3

    .line 2147
    .restart local v12    # "line":I
    .restart local v13    # "startLiterals":Lgnu/bytecode/Label;
    .restart local v14    # "afterLiterals":Lgnu/bytecode/Label;
    .restart local v15    # "initMethod":Lgnu/bytecode/Method;
    .restart local v16    # "save_method":Lgnu/bytecode/Method;
    .restart local v17    # "callContextSave":Lgnu/bytecode/Variable;
    .restart local v18    # "init":Lgnu/expr/Initializer;
    :cond_d
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 2149
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2150
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string/jumbo v36, "run"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 2152
    :cond_e
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2154
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_f

    move/from16 v34, v10

    if-nez v34, :cond_f

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v34, v0

    if-nez v34, :cond_f

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v34, v0

    if-nez v34, :cond_f

    .line 2158
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    const-string/jumbo v36, "run"

    const/16 v37, 0x1

    sget-object v38, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v35 .. v39}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2160
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2161
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v34

    move-object/from16 v19, v34

    .line 2162
    .local v19, "ctxVar":Lgnu/bytecode/Variable;
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v34

    move-object/from16 v20, v34

    .line 2163
    .local v20, "saveVar":Lgnu/bytecode/Variable;
    move-object/from16 v34, v8

    sget-object v35, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v34

    move-object/from16 v21, v34

    .line 2165
    .local v21, "exceptionVar":Lgnu/bytecode/Variable;
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2166
    move-object/from16 v34, v8

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2167
    sget-object v34, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v35, "consumer"

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v34

    move-object/from16 v22, v34

    .line 2169
    .local v22, "consumerFld":Lgnu/bytecode/Field;
    move-object/from16 v34, v8

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2170
    move-object/from16 v34, v8

    move-object/from16 v35, v22

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2171
    move-object/from16 v34, v8

    move-object/from16 v35, v20

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2173
    move-object/from16 v34, v8

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2174
    move-object/from16 v34, v8

    const-string/jumbo v35, "gnu.lists.VoidConsumer"

    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v35

    const-string/jumbo v36, "instance"

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2176
    move-object/from16 v34, v8

    move-object/from16 v35, v22

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 2178
    move-object/from16 v34, v8

    const/16 v35, 0x0

    sget-object v36, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2180
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2181
    move-object/from16 v34, v8

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2182
    move-object/from16 v34, v8

    move-object/from16 v35, v16

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2184
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2185
    move-object/from16 v34, v8

    move-object/from16 v35, v21

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2187
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2188
    move-object/from16 v34, v8

    move-object/from16 v35, v21

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2189
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2190
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2192
    move-object/from16 v34, v8

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2193
    move-object/from16 v34, v8

    move-object/from16 v35, v21

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2194
    move-object/from16 v34, v8

    move-object/from16 v35, v20

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2195
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string/jumbo v36, "runCleanup"

    const/16 v37, 0x3

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2197
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2200
    .end local v19    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v20    # "saveVar":Lgnu/bytecode/Variable;
    .end local v21    # "exceptionVar":Lgnu/bytecode/Variable;
    .end local v22    # "consumerFld":Lgnu/bytecode/Field;
    :cond_f
    move-object/from16 v34, v2

    move-object/from16 v35, v16

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2201
    move-object/from16 v34, v2

    move-object/from16 v35, v17

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2204
    .end local v16    # "save_method":Lgnu/bytecode/Method;
    .end local v17    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v18    # "init":Lgnu/expr/Initializer;
    :cond_10
    move-object/from16 v34, v3

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 2206
    move-object/from16 v34, v2

    move-object/from16 v35, v6

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2208
    move-object/from16 v34, v3

    move-object/from16 v35, v9

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2209
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 2211
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2212
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v34, v0

    move-object/from16 v35, v8

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2215
    :cond_11
    move-object/from16 v34, v13

    if-nez v34, :cond_12

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v34, v0

    if-eqz v34, :cond_14

    .line 2217
    :cond_12
    move-object/from16 v34, v2

    move-object/from16 v35, v15

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2218
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2220
    new-instance v34, Lgnu/bytecode/Label;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v36, v8

    invoke-direct/range {v35 .. v36}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v16, v34

    .line 2221
    .local v16, "endLiterals":Lgnu/bytecode/Label;
    move-object/from16 v34, v8

    move-object/from16 v35, v13

    move-object/from16 v36, v16

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2223
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v34, v0

    if-eqz v34, :cond_13

    .line 2225
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2226
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2231
    :cond_13
    move-object/from16 v34, v2

    :try_start_0
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v34, v0

    if-eqz v34, :cond_18

    .line 2233
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    invoke-static/range {v35 .. v35}, Lgnu/expr/Compilation;->registerForImmediateLiterals(Lgnu/expr/Compilation;)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2234
    move-object/from16 v34, v8

    const-string/jumbo v35, "gnu.expr.Compilation"

    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v35

    const-string/jumbo v36, "setupLiterals"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2243
    .line 2244
    :goto_6
    move-object/from16 v34, v8

    move-object/from16 v35, v16

    move-object/from16 v36, v14

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2247
    .end local v16    # "endLiterals":Lgnu/bytecode/Label;
    :cond_14
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v34, v0

    if-eqz v34, :cond_16

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_16

    .line 2249
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v34, v0

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    const/16 v36, 0x0

    new-instance v37, Lgnu/bytecode/ArrayType;

    move-object/from16 v40, v37

    move-object/from16 v37, v40

    move-object/from16 v38, v40

    sget-object v39, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    invoke-direct/range {v38 .. v39}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v37, v35, v36

    move-object/from16 v16, v34

    .line 2250
    .local v16, "args":[Lgnu/bytecode/Type;
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    const-string/jumbo v36, "main"

    const/16 v37, 0x9

    move-object/from16 v38, v16

    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v35 .. v39}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2253
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2255
    sget-object v34, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    if-eqz v34, :cond_15

    .line 2257
    move-object/from16 v34, v8

    sget-object v35, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2258
    move-object/from16 v34, v8

    const-string/jumbo v35, "kawa.Shell"

    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v35

    const-string/jumbo v36, "setDefaultFormat"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2261
    :cond_15
    move-object/from16 v34, v8

    move-object/from16 v35, v8

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2262
    move-object/from16 v34, v8

    const-string/jumbo v35, "gnu.expr.ApplicationMainSupport"

    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v35

    const-string/jumbo v36, "processArgs"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2264
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v34, v0

    if-eqz v34, :cond_19

    .line 2265
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2272
    :goto_7
    move-object/from16 v34, v8

    sget-object v35, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string/jumbo v36, "runAsMain"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2273
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2277
    .end local v16    # "args":[Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1f

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v16, v35

    .local v16, "uri":Ljava/lang/String;
    if-eqz v34, :cond_1f

    .line 2281
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v34

    move-object/from16 v17, v34

    .line 2282
    .local v17, "manager":Lgnu/expr/ModuleManager;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v18, v34

    .line 2283
    .local v18, "mainPrefix":Ljava/lang/String;
    move-object/from16 v34, v18

    const/16 v35, 0x2e

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v34

    move/from16 v19, v34

    .line 2284
    .local v19, "dot":I
    move/from16 v34, v19

    if-gez v34, :cond_1a

    .line 2286
    const-string/jumbo v34, ""

    move-object/from16 v18, v34

    .line 2305
    :goto_8
    new-instance v34, Lgnu/bytecode/ClassType;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v18

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "$ModulesMap$"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v34

    .line 2306
    .local v20, "mapClass":Lgnu/bytecode/ClassType;
    const-string/jumbo v34, "gnu.expr.ModuleSet"

    invoke-static/range {v34 .. v34}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v34

    move-object/from16 v21, v34

    .line 2307
    .local v21, "typeModuleSet":Lgnu/bytecode/ClassType;
    move-object/from16 v34, v20

    move-object/from16 v35, v21

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2308
    move-object/from16 v34, v2

    move-object/from16 v35, v20

    invoke-direct/range {v34 .. v35}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 2310
    move-object/from16 v34, v2

    move-object/from16 v35, v20

    const-string/jumbo v36, "<init>"

    const/16 v37, 0x1

    sget-object v38, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v35 .. v39}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2312
    move-object/from16 v34, v21

    const-string/jumbo v35, "<init>"

    const/16 v36, 0x1

    sget-object v37, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v38, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v34 .. v38}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v34

    move-object/from16 v22, v34

    .line 2315
    .local v22, "superConstructor":Lgnu/bytecode/Method;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2316
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2317
    move-object/from16 v34, v8

    move-object/from16 v35, v22

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2318
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2320
    const-string/jumbo v34, "gnu.expr.ModuleManager"

    invoke-static/range {v34 .. v34}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v34

    move-object/from16 v23, v34

    .line 2321
    .local v23, "typeModuleManager":Lgnu/bytecode/ClassType;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v34, v0

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    const/16 v36, 0x0

    move-object/from16 v37, v23

    aput-object v37, v35, v36

    move-object/from16 v24, v34

    .line 2322
    .local v24, "margs":[Lgnu/bytecode/Type;
    move-object/from16 v34, v2

    move-object/from16 v35, v20

    const-string/jumbo v36, "register"

    move-object/from16 v37, v24

    sget-object v38, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v39, 0x1

    invoke-virtual/range {v35 .. v39}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2324
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v34

    move-object/from16 v8, v34

    .line 2325
    move-object/from16 v34, v23

    const-string/jumbo v35, "register"

    const/16 v36, 0x3

    invoke-virtual/range {v34 .. v36}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v34

    move-object/from16 v25, v34

    .line 2327
    .local v25, "reg":Lgnu/bytecode/Method;
    move-object/from16 v34, v17

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/ModuleManager;->numModules:I

    move/from16 v34, v0

    move/from16 v26, v34

    .local v26, "i":I
    :cond_17
    :goto_9
    add-int/lit8 v26, v26, -0x1

    move/from16 v34, v26

    if-ltz v34, :cond_1e

    .line 2329
    move-object/from16 v34, v17

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move-object/from16 v34, v0

    move/from16 v35, v26

    aget-object v34, v34, v35

    move-object/from16 v27, v34

    .line 2330
    .local v27, "mi":Lgnu/expr/ModuleInfo;
    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v28, v34

    .line 2331
    .local v28, "miClassName":Ljava/lang/String;
    move-object/from16 v34, v28

    if-eqz v34, :cond_17

    move-object/from16 v34, v28

    move-object/from16 v35, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1b

    .line 2333
    goto :goto_9

    .line 2238
    .end local v17    # "manager":Lgnu/expr/ModuleManager;
    .end local v18    # "mainPrefix":Ljava/lang/String;
    .end local v19    # "dot":I
    .end local v20    # "mapClass":Lgnu/bytecode/ClassType;
    .end local v21    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v22    # "superConstructor":Lgnu/bytecode/Method;
    .end local v23    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .end local v24    # "margs":[Lgnu/bytecode/Type;
    .end local v25    # "reg":Lgnu/bytecode/Method;
    .end local v26    # "i":I
    .end local v27    # "mi":Lgnu/expr/ModuleInfo;
    .end local v28    # "miClassName":Ljava/lang/String;
    .local v16, "endLiterals":Lgnu/bytecode/Label;
    :cond_18
    move-object/from16 v34, v2

    :try_start_1
    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LitTable;->emit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 2240
    :catch_0
    move-exception v34

    move-object/from16 v17, v34

    .line 2242
    .local v17, "ex":Ljava/lang/Throwable;
    move-object/from16 v34, v2

    const/16 v35, 0x65

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Literals: Internal error:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_6

    .line 2268
    .end local v17    # "ex":Ljava/lang/Throwable;
    .local v16, "args":[Lgnu/bytecode/Type;
    :cond_19
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2269
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2270
    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_7

    .line 2290
    .local v16, "uri":Ljava/lang/String;
    .local v17, "manager":Lgnu/expr/ModuleManager;
    .restart local v18    # "mainPrefix":Ljava/lang/String;
    .restart local v19    # "dot":I
    :cond_1a
    move-object/from16 v34, v18

    const/16 v35, 0x0

    move/from16 v36, v19

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v20, v34

    .line 2293
    .local v20, "mainPackage":Ljava/lang/String;
    move-object/from16 v34, v17

    move-object/from16 v35, v20

    :try_start_2
    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2302
    .line 2303
    :goto_a
    move-object/from16 v34, v18

    const/16 v35, 0x0

    move/from16 v36, v19

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v18, v34

    goto/16 :goto_8

    .line 2295
    :catch_1
    move-exception v34

    move-object/from16 v21, v34

    .line 2302
    goto :goto_a

    .line 2299
    :catch_2
    move-exception v34

    move-object/from16 v21, v34

    .line 2301
    .local v21, "ex":Ljava/lang/Throwable;
    move-object/from16 v34, v2

    const/16 v35, 0x65

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "error loading map for "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v20

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " - "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v21

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_a

    .line 2334
    .local v20, "mapClass":Lgnu/bytecode/ClassType;
    .local v21, "typeModuleSet":Lgnu/bytecode/ClassType;
    .restart local v22    # "superConstructor":Lgnu/bytecode/Method;
    .restart local v23    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .restart local v24    # "margs":[Lgnu/bytecode/Type;
    .restart local v25    # "reg":Lgnu/bytecode/Method;
    .restart local v26    # "i":I
    .restart local v27    # "mi":Lgnu/expr/ModuleInfo;
    .restart local v28    # "miClassName":Ljava/lang/String;
    :cond_1b
    move-object/from16 v34, v27

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v29, v34

    .line 2335
    .local v29, "moduleSource":Ljava/lang/String;
    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v30, v34

    .line 2336
    .local v30, "moduleUri":Ljava/lang/String;
    move-object/from16 v34, v8

    move-object/from16 v35, v8

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2337
    move-object/from16 v34, v2

    move-object/from16 v35, v28

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2338
    move-object/from16 v34, v29

    invoke-static/range {v34 .. v34}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lgnu/text/Path;->isAbsolute()Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2344
    :try_start_3
    sget-char v34, Ljava/io/File;->separatorChar:C

    move/from16 v31, v34

    .line 2345
    .local v31, "sep":C
    move-object/from16 v34, v17

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v32, v34

    .line 2346
    .local v32, "path":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v32

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v18

    const/16 v36, 0x2e

    move/from16 v37, v31

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v32, v34

    .line 2347
    move-object/from16 v34, v32

    invoke-static/range {v34 .. v34}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v32, v34

    .line 2348
    move-object/from16 v34, v32

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v33, v34

    .line 2349
    .local v33, "plen":I
    move/from16 v34, v33

    if-lez v34, :cond_1c

    move-object/from16 v34, v32

    move/from16 v35, v33

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->charAt(I)C

    move-result v34

    move/from16 v35, v31

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1c

    .line 2350
    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v32

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move/from16 v35, v31

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v32, v34

    .line 2351
    :cond_1c
    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v32

    invoke-static/range {v34 .. v35}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v34

    move-object/from16 v29, v34

    .line 2359
    .line 2360
    .end local v31    # "sep":C
    .end local v32    # "path":Ljava/lang/String;
    .end local v33    # "plen":I
    :cond_1d
    move-object/from16 v34, v2

    move-object/from16 v35, v29

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2361
    move-object/from16 v34, v2

    move-object/from16 v35, v30

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2362
    move-object/from16 v34, v8

    move-object/from16 v35, v25

    invoke-virtual/range {v34 .. v35}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2363
    goto/16 :goto_9

    .line 2354
    :catch_3
    move-exception v34

    move-object/from16 v31, v34

    .line 2356
    .local v31, "ex":Ljava/lang/Throwable;
    new-instance v34, Lgnu/mapping/WrappedException;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "exception while fixing up \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v29

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x27

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v37, v31

    invoke-direct/range {v35 .. v37}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34

    .line 2364
    .end local v27    # "mi":Lgnu/expr/ModuleInfo;
    .end local v28    # "miClassName":Ljava/lang/String;
    .end local v29    # "moduleSource":Ljava/lang/String;
    .end local v30    # "moduleUri":Ljava/lang/String;
    .end local v31    # "ex":Ljava/lang/Throwable;
    :cond_1e
    move-object/from16 v34, v8

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2366
    .end local v16    # "uri":Ljava/lang/String;
    .end local v17    # "manager":Lgnu/expr/ModuleManager;
    .end local v18    # "mainPrefix":Ljava/lang/String;
    .end local v19    # "dot":I
    .end local v20    # "mapClass":Lgnu/bytecode/ClassType;
    .end local v21    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v22    # "superConstructor":Lgnu/bytecode/Method;
    .end local v23    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .end local v24    # "margs":[Lgnu/bytecode/Type;
    .end local v25    # "reg":Lgnu/bytecode/Method;
    .end local v26    # "i":I
    :cond_1f
    return-void
.end method

.method public generateClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "hint":Ljava/lang/String;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 960
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_1

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 964
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    if-nez v4, :cond_2

    .line 965
    move-object v4, v1

    move-object v0, v4

    .line 970
    .end local v0    # "this":Lgnu/expr/Compilation;
    :goto_1
    return-object v0

    .line 962
    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 966
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    .line 968
    .local v2, "i":I
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 969
    .local v3, "new_hint":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    if-nez v4, :cond_3

    .line 970
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 966
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V
    .locals 17

    .prologue
    .line 1175
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object/from16 v1, p1

    .local v1, "clas":Lgnu/bytecode/ClassType;
    move-object/from16 v2, p2

    .local v2, "lexp":Lgnu/expr/LambdaExp;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v3, v11

    .line 1176
    .local v3, "save_method":Lgnu/bytecode/Method;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v11

    .line 1177
    .local v4, "callContextSave":Lgnu/bytecode/Variable;
    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1178
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v11

    .line 1179
    .local v5, "save_class":Lgnu/bytecode/ClassType;
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1180
    move-object v11, v1

    move-object v12, v2

    invoke-static {v11, v12}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v6, v11

    .line 1181
    .local v6, "constructor_method":Lgnu/bytecode/Method;
    move-object v11, v1

    move-object v12, v6

    iput-object v12, v11, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    .line 1182
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1183
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v7, v11

    .line 1185
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v2

    instance-of v11, v11, Lgnu/expr/ClassExp;

    if-eqz v11, :cond_0

    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v11, :cond_0

    .line 1187
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1188
    move-object v11, v7

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1189
    move-object v11, v7

    move-object v12, v2

    iget-object v12, v12, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1191
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v8, v11

    .line 1192
    .local v8, "superClass":Lgnu/bytecode/ClassType;
    move-object v11, v8

    move-object v12, v0

    move-object v13, v2

    invoke-static {v11, v12, v13}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 1194
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v11, v12, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v11, v11, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 1199
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1200
    move-object v11, v7

    const-string/jumbo v12, "gnu.expr.ModuleInfo"

    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    const-string/jumbo v13, "register"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1204
    :cond_1
    move-object v11, v2

    if-eqz v11, :cond_3

    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    if-eqz v11, :cond_3

    .line 1208
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v9, v11

    .line 1209
    .local v9, "save":Lgnu/expr/LambdaExp;
    move-object v11, v0

    new-instance v12, Lgnu/expr/LambdaExp;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v12, v11, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1210
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v7

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1211
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v9

    iput-object v12, v11, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 1213
    :goto_0
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v10, v12

    .local v10, "init":Lgnu/expr/Initializer;
    if-eqz v11, :cond_2

    .line 1215
    move-object v11, v2

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 1216
    move-object v11, v0

    move-object v12, v10

    invoke-direct {v11, v12}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_0

    .line 1218
    :cond_2
    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1221
    .end local v9    # "save":Lgnu/expr/LambdaExp;
    .end local v10    # "init":Lgnu/expr/Initializer;
    :cond_3
    move-object v11, v2

    instance-of v11, v11, Lgnu/expr/ClassExp;

    if-eqz v11, :cond_4

    .line 1223
    move-object v11, v2

    check-cast v11, Lgnu/expr/ClassExp;

    move-object v9, v11

    .line 1224
    .local v9, "cexp":Lgnu/expr/ClassExp;
    move-object v11, v0

    move-object v12, v9

    move-object v13, v0

    invoke-virtual {v12, v13}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v12

    new-instance v13, Ljava/util/Vector;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1227
    .end local v9    # "cexp":Lgnu/expr/ClassExp;
    :cond_4
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1228
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1229
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1230
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1231
    return-void
.end method

.method public final generateConstructor(Lgnu/expr/LambdaExp;)V
    .locals 5

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 1171
    return-void
.end method

.method public generateMatchMethods(Lgnu/expr/LambdaExp;)V
    .locals 35

    .prologue
    .line 1294
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/Compilation;
    move-object/from16 v3, p1

    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    const/16 v28, 0x0

    :goto_0
    move/from16 v4, v28

    .line 1296
    .local v4, "numApplyMethods":I
    move/from16 v28, v4

    if-nez v28, :cond_1

    .line 1297
    .line 1454
    :goto_1
    return-void

    .line 1294
    .end local v4    # "numApplyMethods":I
    :cond_0
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v28

    goto :goto_0

    .line 1298
    .restart local v4    # "numApplyMethods":I
    :cond_1
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    move-object/from16 v5, v28

    .line 1299
    .local v5, "save_method":Lgnu/bytecode/Method;
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v6, v28

    .line 1300
    .local v6, "save_class":Lgnu/bytecode/ClassType;
    sget-object v28, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object/from16 v7, v28

    .line 1301
    .local v7, "procType":Lgnu/bytecode/ClassType;
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1302
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v28

    sget-object v29, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1303
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1304
    :cond_2
    const/16 v28, 0x0

    move-object/from16 v8, v28

    .line 1305
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    const/16 v28, 0x0

    move/from16 v9, v28

    .local v9, "i":I
    :goto_2
    move/from16 v28, v9

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_18

    .line 1307
    const/16 v28, 0x0

    move/from16 v10, v28

    .line 1308
    .local v10, "needThisMatch":Z
    const/16 v28, 0x0

    move-object/from16 v11, v28

    .line 1309
    .local v11, "aswitch":Lgnu/bytecode/SwitchState;
    const/16 v28, 0x0

    move-object/from16 v12, v28

    .line 1310
    .local v12, "mname":Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v13, v28

    .line 1311
    .local v13, "matchArgs":[Lgnu/bytecode/Type;
    move/from16 v28, v4

    move/from16 v14, v28

    .local v14, "j":I
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, -0x1

    move/from16 v28, v14

    if-ltz v28, :cond_14

    .line 1313
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v28, v0

    move/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lgnu/expr/LambdaExp;

    move-object/from16 v15, v28

    .line 1316
    .local v15, "source":Lgnu/expr/LambdaExp;
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    move-object/from16 v16, v28

    .line 1317
    .local v16, "primMethods":[Lgnu/bytecode/Method;
    move-object/from16 v28, v16

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v17, v28

    .line 1318
    .local v17, "numMethods":I
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v28, v0

    if-ltz v28, :cond_4

    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v28, v0

    move-object/from16 v29, v15

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v29, v0

    move/from16 v30, v17

    add-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 v28, 0x1

    :goto_4
    move/from16 v18, v28

    .line 1321
    .local v18, "varArgs":Z
    move/from16 v28, v9

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 1323
    move/from16 v28, v9

    move-object/from16 v29, v15

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v19, v28

    .line 1324
    .local v19, "methodIndex":I
    move/from16 v28, v19

    if-ltz v28, :cond_3

    move/from16 v28, v19

    move/from16 v29, v17

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    move/from16 v28, v19

    move/from16 v29, v17

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    move/from16 v28, v18

    if-eqz v28, :cond_6

    .line 1326
    goto/16 :goto_3

    .line 1318
    .end local v18    # "varArgs":Z
    .end local v19    # "methodIndex":I
    :cond_5
    const/16 v28, 0x0

    goto :goto_4

    .line 1327
    .restart local v18    # "varArgs":Z
    .restart local v19    # "methodIndex":I
    :cond_6
    const/16 v28, 0x1

    move/from16 v17, v28

    .line 1328
    const/16 v28, 0x0

    move/from16 v18, v28

    .line 1337
    :goto_5
    move/from16 v28, v10

    if-nez v28, :cond_a

    .line 1340
    move/from16 v28, v9

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 1342
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "match"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move/from16 v29, v9

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v12, v28

    .line 1343
    move/from16 v28, v9

    const/16 v29, 0x2

    add-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    move-object/from16 v13, v28

    .line 1344
    move/from16 v28, v9

    move/from16 v20, v28

    .local v20, "k":I
    :goto_6
    move/from16 v28, v20

    if-ltz v28, :cond_9

    .line 1345
    move-object/from16 v28, v13

    move/from16 v29, v20

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    sget-object v30, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v30, v28, v29

    .line 1344
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 1332
    .end local v19    # "methodIndex":I
    .end local v20    # "k":I
    :cond_7
    const/16 v28, 0x5

    move-object/from16 v29, v15

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v29, v0

    rsub-int/lit8 v28, v29, 0x5

    move/from16 v19, v28

    .line 1333
    .restart local v19    # "methodIndex":I
    move/from16 v28, v19

    if-lez v28, :cond_8

    move/from16 v28, v17

    move/from16 v29, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    move/from16 v28, v18

    if-nez v28, :cond_8

    .line 1334
    goto/16 :goto_3

    .line 1335
    :cond_8
    move/from16 v28, v17

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v19, v28

    goto :goto_5

    .line 1346
    .restart local v20    # "k":I
    :cond_9
    move-object/from16 v28, v13

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    sget-object v30, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v30, v28, v29

    .line 1355
    .end local v20    # "k":I
    :goto_7
    move-object/from16 v28, v13

    const/16 v29, 0x0

    move-object/from16 v30, v7

    aput-object v30, v28, v29

    .line 1356
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v29, v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    sget-object v32, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v33, 0x1

    invoke-virtual/range {v29 .. v33}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1358
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v28

    move-object/from16 v8, v28

    .line 1360
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1361
    move-object/from16 v28, v8

    move-object/from16 v29, v7

    const-string/jumbo v30, "selector"

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1362
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v28

    move-object/from16 v11, v28

    .line 1364
    const/16 v28, 0x1

    move/from16 v10, v28

    .line 1367
    :cond_a
    move-object/from16 v28, v11

    move-object/from16 v29, v15

    move-object/from16 v30, v2

    invoke-virtual/range {v29 .. v30}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v29

    move-object/from16 v30, v8

    invoke-virtual/range {v28 .. v30}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    move-result v28

    .line 1369
    move-object/from16 v28, v15

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v28

    move/from16 v20, v28

    .line 1370
    .local v20, "line":I
    move/from16 v28, v20

    if-lez v28, :cond_b

    .line 1371
    move-object/from16 v28, v8

    move-object/from16 v29, v15

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v29

    move/from16 v30, v20

    invoke-virtual/range {v28 .. v30}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1373
    :cond_b
    move-object/from16 v28, v8

    move/from16 v29, v9

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const/16 v29, 0x3

    :goto_8
    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v28

    move-object/from16 v21, v28

    .line 1375
    .local v21, "ctxVar":Lgnu/bytecode/Variable;
    move/from16 v28, v9

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 1377
    move-object/from16 v28, v15

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v28

    move-object/from16 v22, v28

    .line 1378
    .local v22, "var":Lgnu/expr/Declaration;
    const/16 v28, 0x1

    move/from16 v23, v28

    .local v23, "k":I
    :goto_9
    move/from16 v28, v23

    move/from16 v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_10

    .line 1380
    move-object/from16 v28, v8

    move-object/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1381
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    move/from16 v30, v23

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1382
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v28

    move-object/from16 v24, v28

    .line 1383
    .local v24, "ptype":Lgnu/bytecode/Type;
    move-object/from16 v28, v24

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 1385
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1387
    new-instance v28, Lgnu/bytecode/Label;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    move-object/from16 v30, v8

    invoke-direct/range {v29 .. v30}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v25, v28

    .line 1388
    .local v25, "trueLabel":Lgnu/bytecode/Label;
    new-instance v28, Lgnu/bytecode/Label;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    move-object/from16 v30, v8

    invoke-direct/range {v29 .. v30}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v26, v28

    .line 1389
    .local v26, "falseLabel":Lgnu/bytecode/Label;
    new-instance v28, Lgnu/expr/ConditionalTarget;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v32

    invoke-direct/range {v29 .. v32}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    move-object/from16 v27, v28

    .line 1392
    .local v27, "ctarget":Lgnu/expr/ConditionalTarget;
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1393
    move-object/from16 v28, v24

    check-cast v28, Lgnu/expr/TypeValue;

    const/16 v29, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v27

    invoke-interface/range {v28 .. v31}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1395
    move-object/from16 v28, v26

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1396
    move-object/from16 v28, v8

    const/high16 v29, -0xc0000

    move/from16 v30, v23

    or-int v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1397
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1398
    move-object/from16 v28, v25

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1399
    .line 1412
    .end local v25    # "trueLabel":Lgnu/bytecode/Label;
    .end local v26    # "falseLabel":Lgnu/bytecode/Label;
    .end local v27    # "ctarget":Lgnu/expr/ConditionalTarget;
    :cond_c
    :goto_a
    move-object/from16 v28, v8

    sget-object v29, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v31, v23

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1413
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v28

    move-object/from16 v22, v28

    .line 1378
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1350
    .end local v20    # "line":I
    .end local v21    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v22    # "var":Lgnu/expr/Declaration;
    .end local v23    # "k":I
    .end local v24    # "ptype":Lgnu/bytecode/Type;
    :cond_d
    const-string/jumbo v28, "matchN"

    move-object/from16 v12, v28

    .line 1351
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    move-object/from16 v13, v28

    .line 1352
    move-object/from16 v28, v13

    const/16 v29, 0x1

    sget-object v30, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v30, v28, v29

    .line 1353
    move-object/from16 v28, v13

    const/16 v29, 0x2

    sget-object v30, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v30, v28, v29

    goto/16 :goto_7

    .line 1373
    .restart local v20    # "line":I
    :cond_e
    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    goto/16 :goto_8

    .line 1400
    .restart local v21    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v22    # "var":Lgnu/expr/Declaration;
    .restart local v23    # "k":I
    .restart local v24    # "ptype":Lgnu/bytecode/Type;
    :cond_f
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v28, v24

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    move-object/from16 v28, v24

    sget-object v29, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 1404
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1405
    move-object/from16 v28, v24

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 1406
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 1407
    move-object/from16 v28, v8

    const/high16 v29, -0xc0000

    move/from16 v30, v23

    or-int v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1408
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1409
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_a

    .line 1415
    .line 1423
    .end local v22    # "var":Lgnu/expr/Declaration;
    .end local v23    # "k":I
    .end local v24    # "ptype":Lgnu/bytecode/Type;
    :cond_10
    :goto_b
    move-object/from16 v28, v8

    move-object/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1424
    sget v28, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 1425
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1428
    :goto_c
    move-object/from16 v28, v8

    sget-object v29, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1429
    move-object/from16 v28, v8

    move-object/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1430
    sget v28, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_13

    .line 1431
    move-object/from16 v28, v8

    move-object/from16 v29, v15

    move-object/from16 v30, v2

    invoke-virtual/range {v29 .. v30}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v29

    move/from16 v30, v19

    add-int v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1434
    :goto_d
    move-object/from16 v28, v8

    sget-object v29, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1435
    move-object/from16 v28, v8

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1436
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1437
    goto/16 :goto_3

    .line 1419
    :cond_11
    move-object/from16 v28, v8

    move-object/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1421
    move-object/from16 v28, v8

    sget-object v29, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v30, "values"

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_b

    .line 1427
    :cond_12
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_c

    .line 1433
    :cond_13
    move-object/from16 v28, v8

    move/from16 v29, v9

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_d

    .line 1438
    .end local v15    # "source":Lgnu/expr/LambdaExp;
    .end local v16    # "primMethods":[Lgnu/bytecode/Method;
    .end local v17    # "numMethods":I
    .end local v18    # "varArgs":Z
    .end local v19    # "methodIndex":I
    .end local v20    # "line":I
    .end local v21    # "ctxVar":Lgnu/bytecode/Variable;
    :cond_14
    move/from16 v28, v10

    if-eqz v28, :cond_17

    .line 1440
    move-object/from16 v28, v11

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1441
    move/from16 v28, v9

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    const/16 v28, 0x2

    :goto_e
    move/from16 v14, v28

    .line 1442
    .local v14, "nargs":I
    add-int/lit8 v14, v14, 0x1

    .line 1443
    const/16 v28, 0x0

    move/from16 v15, v28

    .local v15, "k":I
    :goto_f
    move/from16 v28, v15

    move/from16 v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_16

    .line 1444
    move-object/from16 v28, v8

    move-object/from16 v29, v8

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1443
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1441
    .end local v15    # "k":I
    .local v14, "j":I
    :cond_15
    move/from16 v28, v9

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 1445
    .local v14, "nargs":I
    .restart local v15    # "k":I
    :cond_16
    sget-object v28, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v28

    move-object/from16 v15, v28

    .line 1447
    .local v15, "defMethod":Lgnu/bytecode/Method;
    move-object/from16 v28, v8

    move-object/from16 v29, v15

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1448
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1449
    move-object/from16 v28, v11

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1305
    .end local v14    # "nargs":I
    .end local v15    # "defMethod":Lgnu/bytecode/Method;
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1452
    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_18
    move-object/from16 v28, v2

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1453
    move-object/from16 v28, v2

    move-object/from16 v29, v6

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1454
    goto/16 :goto_1
.end method

.method public generatingApplet()Z
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Compilation;->langOptions:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public generatingServlet()Z
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Compilation;->langOptions:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "defaultValue":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 2

    .prologue
    .line 2632
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public final getConstructor(Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 4

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2633
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public getForNameHelper()Lgnu/bytecode/Method;
    .locals 9

    .prologue
    .line 2845
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    if-nez v3, :cond_0

    .line 2848
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v1, v3

    .line 2849
    .local v1, "save_method":Lgnu/bytecode/Method;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "class$"

    const/16 v6, 0x9

    sget-object v7, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2851
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iput-object v4, v3, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    .line 2852
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 2853
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v2

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2854
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2855
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2856
    move-object v3, v2

    sget-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "forName"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2857
    move-object v3, v2

    sget-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "getClassLoader"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2858
    move-object v3, v2

    sget-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "forName"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2859
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2860
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2865
    .end local v1    # "save_method":Lgnu/bytecode/Method;
    .end local v2    # "code":Lgnu/bytecode/CodeAttr;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public getLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 2426
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final getLineNumber()I
    .locals 2

    .prologue
    .line 2631
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 2

    .prologue
    .line 2567
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final getModule()Lgnu/expr/ModuleExp;
    .locals 2

    .prologue
    .line 2430
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final getModuleType()Lgnu/bytecode/ClassType;
    .locals 3

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2634
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Compilation;->state:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2635
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public inlineOk(Lgnu/expr/Expression;)Z
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/Expression;
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_3

    .line 465
    move-object v4, v1

    check-cast v4, Lgnu/expr/LambdaExp;

    move-object v2, v4

    .line 466
    .local v2, "lproc":Lgnu/expr/LambdaExp;
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object v3, v4

    .line 469
    .local v3, "nameDecl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_1

    .line 471
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 478
    .end local v0    # "this":Lgnu/expr/Compilation;
    .end local v2    # "lproc":Lgnu/expr/LambdaExp;
    .end local v3    # "nameDecl":Lgnu/expr/Declaration;
    :goto_0
    return v0

    .line 472
    .restart local v0    # "this":Lgnu/expr/Compilation;
    .restart local v2    # "lproc":Lgnu/expr/LambdaExp;
    .restart local v3    # "nameDecl":Lgnu/expr/Declaration;
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 476
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 478
    .end local v2    # "lproc":Lgnu/expr/LambdaExp;
    .end local v3    # "nameDecl":Lgnu/expr/Declaration;
    :cond_3
    sget-boolean v4, Lgnu/expr/Compilation;->inlineOk:Z

    move v0, v4

    goto :goto_0
.end method

.method public inlineOk(Lgnu/mapping/Procedure;)Z
    .locals 3

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ModuleMethod;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lgnu/expr/ModuleMethod;

    iget-object v2, v2, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    instance-of v2, v2, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v2, :cond_0

    .line 485
    const/4 v2, 0x0

    move v0, v2

    .line 486
    .end local v0    # "this":Lgnu/expr/Compilation;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    sget-boolean v2, Lgnu/expr/Compilation;->inlineOk:Z

    move v0, v2

    goto :goto_0
.end method

.method public isPedantic()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/Compilation;->pedantic:Z

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 2636
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public isStatic()Z
    .locals 2

    .prologue
    .line 2433
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    .locals 5

    .prologue
    .line 2688
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LetExp;

    move-object v2, v3

    .line 2689
    .local v2, "let":Lgnu/expr/LetExp;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 2690
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2691
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public letEnter()V
    .locals 9

    .prologue
    .line 2674
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/LetExp;

    move-object v1, v6

    .line 2675
    .local v1, "let":Lgnu/expr/LetExp;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/LetExp;->countDecls()I

    move-result v6

    move v2, v6

    .line 2676
    .local v2, "ndecls":I
    move v6, v2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v3, v6

    .line 2677
    .local v3, "inits":[Lgnu/expr/Expression;
    const/4 v6, 0x0

    move v4, v6

    .line 2678
    .local v4, "i":I
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 2679
    .local v5, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 2681
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2680
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 2682
    :cond_0
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 2683
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2684
    return-void
.end method

.method public letStart()V
    .locals 6

    .prologue
    .line 2661
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    new-instance v2, Lgnu/expr/LetExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2662
    return-void
.end method

.method public letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 9

    .prologue
    .line 2666
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "init":Lgnu/expr/Expression;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/LetExp;

    move-object v4, v6

    .line 2667
    .local v4, "let":Lgnu/expr/LetExp;
    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 2668
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2669
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public final loadCallContext()V
    .locals 8

    .prologue
    .line 2384
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    move-object v1, v2

    .line 2385
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->dead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2386
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2411
    :goto_0
    return-void

    .line 2393
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    if-ne v2, v3, :cond_1

    .line 2396
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Variable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "$ctx"

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v3, v2, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2399
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    move-result v2

    .line 2400
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2401
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    iput-object v3, v2, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 2405
    :cond_1
    move-object v2, v1

    sget-object v3, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2406
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 2407
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Variable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "$ctx"

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v3, v2, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2408
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 2409
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method public loadClassRef(Lgnu/bytecode/ObjectType;)V
    .locals 8

    .prologue
    .line 2813
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "clas":Lgnu/bytecode/ObjectType;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v2, v4

    .line 2815
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v4

    const/high16 v5, 0x310000    # 4.49994E-39f

    if-lt v4, v5, :cond_0

    .line 2816
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushClass(Lgnu/bytecode/ObjectType;)V

    .line 2831
    :goto_0
    return-void

    .line 2817
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v4}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v4, :cond_1

    .line 2821
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2822
    move-object v4, v2

    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "getClass"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 2826
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v3, v4

    .line 2828
    .local v3, "name":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2829
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getForNameHelper()Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 2826
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 6

    .prologue
    .line 2550
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "namespace":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public loopBody(Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 2751
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LambdaExp;

    move-object v2, v3

    .line 2752
    .local v2, "loopLambda":Lgnu/expr/LambdaExp;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2753
    return-void
.end method

.method public loopCond(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 2746
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "cond":Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2747
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2748
    return-void
.end method

.method public loopEnter()V
    .locals 13

    .prologue
    .line 2732
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v6, v0

    invoke-direct {v6}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2733
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/LambdaExp;

    move-object v1, v6

    .line 2734
    .local v1, "loopLambda":Lgnu/expr/LambdaExp;
    move-object v6, v1

    iget v6, v6, Lgnu/expr/LambdaExp;->min_args:I

    move v2, v6

    .line 2735
    .local v2, "ninits":I
    move-object v6, v1

    move v7, v2

    iput v7, v6, Lgnu/expr/LambdaExp;->max_args:I

    .line 2736
    move v6, v2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v3, v6

    .line 2737
    .local v3, "inits":[Lgnu/expr/Expression;
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-ltz v6, :cond_0

    .line 2738
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/Expression;

    aput-object v8, v6, v7

    goto :goto_0

    .line 2739
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/LetExp;

    move-object v4, v6

    .line 2740
    .local v4, "let":Lgnu/expr/LetExp;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 2741
    .local v5, "fdecl":Lgnu/expr/Declaration;
    move-object v6, v4

    new-instance v7, Lgnu/expr/ApplyExp;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v5

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v6, v7}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 2742
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2743
    return-void
.end method

.method public loopRepeat()Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 2771
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    sget-object v2, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public loopRepeat(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 2776
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v2, v3

    .line 2777
    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 2756
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object/from16 v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v7, Lgnu/expr/LambdaExp;

    move-object v2, v7

    .line 2757
    .local v2, "loopLambda":Lgnu/expr/LambdaExp;
    move-object v7, v2

    iget-object v7, v7, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object v3, v7

    .line 2758
    .local v3, "let":Lgnu/expr/ScopeExp;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    .line 2759
    .local v4, "fdecl":Lgnu/expr/Declaration;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    move-object v5, v7

    .line 2760
    .local v5, "cond":Lgnu/expr/Expression;
    new-instance v7, Lgnu/expr/ApplyExp;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v6, v7

    .line 2761
    .local v6, "recurse":Lgnu/expr/Expression;
    move-object v7, v2

    new-instance v8, Lgnu/expr/IfExp;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v5

    new-instance v11, Lgnu/expr/BeginExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v2

    iget-object v13, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v12, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v8, v7, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2764
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2765
    move-object v7, v0

    move-object v8, v3

    iget-object v8, v8, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v8, v7, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2766
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public loopStart()V
    .locals 11

    .prologue
    .line 2704
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    new-instance v6, Lgnu/expr/LambdaExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v1, v6

    .line 2705
    .local v1, "loopLambda":Lgnu/expr/LambdaExp;
    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v2, v6

    .line 2706
    .local v2, "inits":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/LetExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v3, v6

    .line 2707
    .local v3, "let":Lgnu/expr/LetExp;
    const-string/jumbo v6, "%do%loop"

    move-object v4, v6

    .line 2708
    .local v4, "fname":Ljava/lang/String;
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 2709
    .local v5, "fdecl":Lgnu/expr/Declaration;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2710
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 2711
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v7, v6, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 2712
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2713
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2714
    return-void
.end method

.method public loopVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 2718
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "init":Lgnu/expr/Expression;
    move-object v6, v0

    invoke-direct {v6}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2719
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/LambdaExp;

    move-object v4, v6

    .line 2720
    .local v4, "loopLambda":Lgnu/expr/LambdaExp;
    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 2721
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v6, :cond_0

    .line 2722
    move-object v6, v0

    new-instance v7, Ljava/util/Stack;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    iput-object v7, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 2723
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2724
    move-object v6, v4

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/expr/LambdaExp;->min_args:I

    .line 2725
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public makeRunnable()Z
    .locals 2

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mustCompileHere()V
    .locals 4

    .prologue
    .line 2444
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-nez v1, :cond_0

    .line 2445
    move-object v1, v0

    const/16 v2, 0x77

    const-string/jumbo v3, "this expression claimed that it must be compiled, but compiler is unavailable"

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2449
    :goto_0
    return-void

    .line 2447
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/expr/Compilation;->mustCompile:Z

    goto :goto_0
.end method

.method public outputClass(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "directory":Ljava/lang/String;
    sget-char v7, Ljava/io/File;->separatorChar:C

    move v2, v7

    .line 1003
    .local v2, "dirSep":C
    const/4 v7, 0x0

    move v3, v7

    .local v3, "iClass":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lgnu/expr/Compilation;->numClasses:I

    if-ge v7, v8, :cond_1

    .line 1005
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v8, v3

    aget-object v7, v7, v8

    move-object v4, v7

    .line 1006
    .local v4, "clas":Lgnu/bytecode/ClassType;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    move v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1009
    .local v5, "out_name":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1010
    .local v6, "parent":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1011
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 1012
    :cond_0
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1003
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1014
    .end local v4    # "clas":Lgnu/bytecode/ClassType;
    .end local v5    # "out_name":Ljava/lang/String;
    .end local v6    # "parent":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v7}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1015
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 2422
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "input":Ljava/lang/Object;
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unimeplemented parse"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final pop()V
    .locals 3

    .prologue
    .line 2540
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2541
    return-void
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 2534
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2535
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v3, v2, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2536
    return-void
.end method

.method public process(I)V
    .locals 11

    .prologue
    .line 1929
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "wantedState":I
    move-object v6, v0

    invoke-static {v6}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v6

    move-object v2, v6

    .line 1932
    .local v2, "saveCompilation":Lgnu/expr/Compilation;
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    move-object v3, v6

    .line 1933
    .local v3, "mexp":Lgnu/expr/ModuleExp;
    move v6, v1

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 1935
    move-object v6, v0

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1936
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    move-result v6

    .line 1937
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    invoke-virtual {v6}, Lgnu/text/Lexer;->close()V

    .line 1938
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 1939
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x64

    :goto_0
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1940
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 2009
    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2011
    .end local v3    # "mexp":Lgnu/expr/ModuleExp;
    :goto_1
    return-void

    .line 1939
    .restart local v3    # "mexp":Lgnu/expr/ModuleExp;
    :cond_0
    const/4 v7, 0x4

    goto :goto_0

    .line 1943
    :cond_1
    move v6, v1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_2

    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    .line 1950
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 1951
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 1952
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x64

    :goto_2
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1956
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/expr/Compilation;->explicit:Z

    if-nez v6, :cond_3

    move-object v6, v0

    iget-boolean v6, v6, Lgnu/expr/Compilation;->immediate:Z

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1959
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1960
    move-object v6, v0

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1963
    :cond_3
    move v6, v1

    const/16 v7, 0x8

    if-lt v6, v7, :cond_4

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_4

    .line 1965
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 1966
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x64

    :goto_3
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1968
    :cond_4
    move v6, v1

    const/16 v7, 0xa

    if-lt v6, v7, :cond_5

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_5

    .line 1970
    move-object v6, v0

    new-instance v7, Lgnu/expr/LitTable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lgnu/expr/LitTable;-><init>(Lgnu/expr/Compilation;)V

    iput-object v7, v6, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1971
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->setCanRead(Z)V

    .line 1972
    move-object v6, v3

    move-object v7, v0

    invoke-static {v6, v7}, Lgnu/expr/FindCapturedVars;->findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1973
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->allocFields(Lgnu/expr/Compilation;)V

    .line 1974
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1975
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x64

    :goto_4
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1977
    :cond_5
    move v6, v1

    const/16 v7, 0xc

    if-lt v6, v7, :cond_7

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_7

    .line 1979
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v6, :cond_6

    .line 1981
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    .line 1982
    .local v4, "parentLoader":Ljava/lang/ClassLoader;
    move-object v6, v0

    new-instance v7, Lgnu/bytecode/ArrayClassLoader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v4

    invoke-direct {v8, v9}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v7, v6, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 1984
    .end local v4    # "parentLoader":Ljava/lang/ClassLoader;
    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->generateBytecode()V

    .line 1985
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x64

    :goto_5
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1987
    :cond_7
    move v6, v1

    const/16 v7, 0xe

    if-lt v6, v7, :cond_8

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/16 v7, 0xe

    if-ge v6, v7, :cond_8

    .line 1989
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v6

    move-object v4, v6

    .line 1990
    .local v4, "manager":Lgnu/expr/ModuleManager;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->outputClass(Ljava/lang/String;)V

    .line 1991
    move-object v6, v0

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    .end local v4    # "manager":Lgnu/expr/ModuleManager;
    :cond_8
    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2010
    .line 2011
    .end local v3    # "mexp":Lgnu/expr/ModuleExp;
    :goto_6
    goto/16 :goto_1

    .line 1952
    .restart local v3    # "mexp":Lgnu/expr/ModuleExp;
    :cond_9
    const/4 v7, 0x6

    goto/16 :goto_2

    .line 1966
    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_3

    .line 1975
    :cond_b
    const/16 v7, 0xa

    goto :goto_4

    .line 1985
    :cond_c
    const/16 v7, 0xc

    goto :goto_5

    .line 1994
    .end local v3    # "mexp":Lgnu/expr/ModuleExp;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1996
    .local v3, "ex":Lgnu/text/SyntaxException;
    move-object v6, v0

    const/16 v7, 0x64

    :try_start_2
    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 1997
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v7

    if-eq v6, v7, :cond_d

    .line 1998
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "confussing syntax error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    .end local v3    # "ex":Lgnu/text/SyntaxException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move-object v6, v5

    throw v6

    .restart local v3    # "ex":Lgnu/text/SyntaxException;
    :cond_d
    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2010
    goto :goto_6

    .line 2001
    .end local v3    # "ex":Lgnu/text/SyntaxException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 2003
    .local v3, "ex":Ljava/io/IOException;
    move-object v6, v3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 2004
    move-object v6, v0

    const/16 v7, 0x66

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2005
    move-object v6, v0

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2009
    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2010
    goto :goto_6
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 2545
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 2546
    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 2514
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2515
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2516
    return-void
.end method

.method pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V
    .locals 6

    .prologue
    .line 2481
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "limit":Lgnu/expr/ScopeExp;
    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    .line 2483
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2484
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2485
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2487
    :cond_0
    return-void
.end method

.method public pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;
    .locals 4

    .prologue
    .line 2491
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "lexer":Lgnu/text/Lexer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 2492
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;
    .locals 6

    .prologue
    .line 2497
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Lgnu/expr/ModuleExp;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/expr/ModuleExp;-><init>()V

    move-object v2, v3

    .line 2498
    .local v2, "module":Lgnu/expr/ModuleExp;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2499
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 2500
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2501
    :cond_1
    move-object v3, v2

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2502
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_3

    .line 2504
    move-object v3, v2

    const/high16 v4, 0x100000

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2505
    new-instance v3, Lgnu/expr/ModuleInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 2507
    :cond_3
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 2508
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2509
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "info":Lgnu/expr/ModuleInfo;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move v3, p3

    .local v3, "formSize":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-nez v5, :cond_0

    .line 97
    move-object v5, v0

    new-instance v6, Ljava/util/Stack;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    iput-object v6, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    .line 98
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 99
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 100
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Object;

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 101
    .local v4, "posExp":Lgnu/expr/Expression;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 102
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 104
    return-void
.end method

.method public final pushScope(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 2520
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_1

    .line 2527
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 2528
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v3, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2529
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2530
    return-void
.end method

.method public resolve(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2870
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "function":Z
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    move-object v3, v5

    .line 2872
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2873
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v4, v5

    .line 2876
    .local v4, "symbol":Lgnu/mapping/Symbol;
    :goto_0
    move-object v5, v4

    if-nez v5, :cond_1

    .line 2877
    const/4 v5, 0x0

    move-object v0, v5

    .line 2880
    .end local v0    # "this":Lgnu/expr/Compilation;
    :goto_1
    return-object v0

    .line 2875
    .end local v4    # "symbol":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v4, v5

    .restart local v4    # "symbol":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 2878
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2879
    move-object v5, v3

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 2880
    :cond_2
    move-object v5, v3

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_1
.end method

.method public setColumn(I)V
    .locals 4

    .prologue
    .line 2640
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "column":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setCurrentScope(Lgnu/expr/ScopeExp;)V
    .locals 8

    .prologue
    .line 2458
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "scope":Lgnu/expr/ScopeExp;
    move-object v5, v1

    invoke-static {v5}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v5

    move v2, v5

    .line 2459
    .local v2, "scope_nesting":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-static {v5}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v5

    move v3, v5

    .line 2460
    .local v3, "current_nesting":I
    :goto_0
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_0

    .line 2462
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2463
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2465
    :cond_0
    move-object v5, v1

    move-object v4, v5

    .line 2466
    .local v4, "sc":Lgnu/expr/ScopeExp;
    :goto_1
    move v5, v2

    move v6, v3

    if-le v5, v6, :cond_1

    .line 2468
    move-object v5, v4

    iget-object v5, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v4, v5

    .line 2469
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2471
    :cond_1
    :goto_2
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v5, v6, :cond_2

    .line 2473
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2474
    move-object v5, v4

    iget-object v5, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v4, v5

    goto :goto_2

    .line 2476
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2477
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2638
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 4

    .prologue
    .line 2639
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "line":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 2642
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "position":Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setLine(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2645
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "location":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/SourceLocator;

    if-eqz v2, :cond_0

    .line 2646
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v3, v1

    check-cast v3, Lgnu/text/SourceLocator;

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    .line 2647
    :cond_0
    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 2653
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 2654
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 4

    .prologue
    .line 2649
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "position":Lgnu/text/SourceLocator;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 4

    .prologue
    .line 2569
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setModule(Lgnu/expr/ModuleExp;)V
    .locals 4

    .prologue
    .line 2431
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "mexp":Lgnu/expr/ModuleExp;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public setSharedModuleDefs(Z)V
    .locals 6

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "shared":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 424
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/Compilation;->langOptions:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/expr/Compilation;->langOptions:I

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/Compilation;->langOptions:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/expr/Compilation;->langOptions:I

    goto :goto_0
.end method

.method public setState(I)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/expr/Compilation;->state:I

    return-void
.end method

.method public sharedModuleDefs()Z
    .locals 3

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Compilation;->langOptions:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 2627
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x65

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2628
    new-instance v2, Lgnu/expr/ErrorExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2998
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<compilation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return-object v0
.end method

.method public usedClass(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 2561
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    :goto_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_0

    .line 2562
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 2563
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 2564
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ArrayClassLoader;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2565
    :cond_1
    return-void
.end method

.method public usingCPStyle()Z
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingTailCalls()Z
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0

    .restart local v0    # "this":Lgnu/expr/Compilation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public walkModule(Lgnu/expr/ModuleExp;)V
    .locals 7

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "mexp":Lgnu/expr/ModuleExp;
    sget-boolean v3, Lgnu/expr/Compilation;->debugPrintExpr:Z

    if-eqz v3, :cond_0

    .line 987
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    move-object v2, v3

    .line 988
    .local v2, "dout":Lgnu/mapping/OutPort;
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Module:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 989
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 990
    move-object v3, v2

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->println(C)V

    .line 991
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->flush()V

    .line 994
    .end local v2    # "dout":Lgnu/mapping/OutPort;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v3

    .line 995
    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/PushApply;->pushApply(Lgnu/expr/Expression;)V

    .line 996
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/expr/ChainLambdas;->chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 997
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/expr/FindTailCalls;->findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 998
    return-void
.end method

.method public warnAsError()Z
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v2, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v1, v2}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public warnInvokeUnknownMethod()Z
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v2, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v1, v2}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public warnUndefinedVariable()Z
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v2, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v1, v2}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method

.method public warnUnknownMember()Z
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Compilation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v2, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v1, v2}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Compilation;
    return v0
.end method
