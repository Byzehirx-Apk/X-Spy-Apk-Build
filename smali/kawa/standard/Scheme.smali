.class public Lkawa/standard/Scheme;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Scheme.java"


# static fields
.field public static final apply:Lgnu/kawa/functions/Apply;

.field static final applyFieldDecl:Lgnu/expr/Declaration;

.field public static final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field public static booleanType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final forEach:Lgnu/kawa/functions/Map;

.field public static final instance:Lkawa/standard/Scheme;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static final isEq:Lgnu/kawa/functions/IsEq;

.field public static final isEqual:Lgnu/kawa/functions/IsEqual;

.field public static final isEqv:Lgnu/kawa/functions/IsEqv;

.field public static final isEven:Lgnu/kawa/functions/NumberPredicate;

.field public static final isOdd:Lgnu/kawa/functions/NumberPredicate;

.field protected static final kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

.field public static final map:Lgnu/kawa/functions/Map;

.field public static final not:Lgnu/kawa/functions/Not;

.field public static final nullEnvironment:Lgnu/mapping/Environment;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field public static final r4Environment:Lgnu/mapping/Environment;

.field public static final r5Environment:Lgnu/mapping/Environment;

.field static typeToStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lgnu/bytecode/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final unitNamespace:Lgnu/mapping/Namespace;

.field public static final writeFormat:Lgnu/lists/AbstractFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 54
    const-string/jumbo v2, "null-environment"

    invoke-static {v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    .line 55
    const-string/jumbo v2, "r4rs-environment"

    sget-object v3, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-static {v2, v3}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    .line 56
    const-string/jumbo v2, "r5rs-environment"

    sget-object v3, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-static {v2, v3}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    .line 57
    const-string/jumbo v2, "kawa-environment"

    sget-object v3, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-static {v2, v3}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    .line 59
    new-instance v2, Lkawa/standard/Scheme;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v3, v4}, Lkawa/standard/Scheme;-><init>(Lgnu/mapping/Environment;)V

    sput-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    .line 60
    new-instance v2, Lgnu/kawa/reflect/InstanceOf;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "instance?"

    invoke-direct {v3, v4, v5}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 61
    new-instance v2, Lgnu/kawa/functions/Not;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "not"

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lkawa/standard/Scheme;->not:Lgnu/kawa/functions/Not;

    .line 62
    new-instance v2, Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "apply-to-args"

    sget-object v5, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/ApplyToArgs;-><init>(Ljava/lang/String;Lgnu/expr/Language;)V

    sput-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 63
    const-string/jumbo v2, "kawa.standard.Scheme"

    const-string/jumbo v3, "applyToArgs"

    invoke-static {v2, v3}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 66
    new-instance v2, Lgnu/kawa/functions/Apply;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "apply"

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/Apply;-><init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V

    sput-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 67
    new-instance v2, Lgnu/kawa/functions/IsEq;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "eq?"

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 68
    new-instance v2, Lgnu/kawa/functions/IsEqv;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "eqv?"

    sget-object v6, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/functions/IsEqv;-><init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V

    sput-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 69
    new-instance v2, Lgnu/kawa/functions/IsEqual;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "equal?"

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    .line 70
    new-instance v2, Lgnu/kawa/functions/Map;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v7, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v2, Lkawa/standard/Scheme;->map:Lgnu/kawa/functions/Map;

    .line 71
    new-instance v2, Lgnu/kawa/functions/Map;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v7, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v2, Lkawa/standard/Scheme;->forEach:Lgnu/kawa/functions/Map;

    .line 72
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v3, "="

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 74
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v3, ">"

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v3, ">="

    const/16 v4, 0x18

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 78
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v3, "<"

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 80
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v3, "<="

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 82
    new-instance v2, Lgnu/kawa/functions/NumberPredicate;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "odd?"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v2, Lkawa/standard/Scheme;->isOdd:Lgnu/kawa/functions/NumberPredicate;

    .line 83
    new-instance v2, Lgnu/kawa/functions/NumberPredicate;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string/jumbo v5, "even?"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v2, Lkawa/standard/Scheme;->isEven:Lgnu/kawa/functions/NumberPredicate;

    .line 85
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v2}, Lkawa/standard/Scheme;->initScheme()V

    .line 87
    sget v2, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    move v0, v2

    .line 88
    .local v0, "withServlets":I
    move v2, v0

    if-lez v2, :cond_0

    .line 92
    :try_start_0
    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    move v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string/jumbo v3, "gnu.kawa.servlet.servlets"

    :goto_0
    invoke-virtual {v2, v3}, Lkawa/standard/Scheme;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 934
    :cond_0
    :goto_1
    new-instance v2, Lgnu/kawa/functions/DisplayFormat;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    const/16 v5, 0x53

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v2, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 935
    new-instance v2, Lgnu/kawa/functions/DisplayFormat;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    const/16 v5, 0x53

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v2, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 1134
    const-string/jumbo v2, "http://kawa.gnu.org/unit"

    const-string/jumbo v3, "unit"

    invoke-static {v2, v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    return-void

    .line 92
    :cond_1
    :try_start_1
    const-string/jumbo v3, "gnu.kawa.servlet.HTTP"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 845
    move-object v1, v0

    sget-object v2, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v2, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 846
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lkawa/standard/Scheme;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    iput-object v2, v1, Lkawa/standard/Scheme;->userEnv:Lgnu/mapping/Environment;

    .line 847
    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/Environment;)V
    .locals 4

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 851
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 852
    return-void
.end method

.method public static builtin()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public static eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "port":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    new-instance v5, Lgnu/text/SourceMessages;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    move-object v2, v5

    .line 877
    .local v2, "messages":Lgnu/text/SourceMessages;
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v5

    check-cast v5, Lgnu/kawa/lispexpr/LispReader;

    move-object v3, v5

    .line 879
    .local v3, "lexer":Lgnu/kawa/lispexpr/LispReader;
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 880
    .local v4, "body":Ljava/lang/Object;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 881
    new-instance v5, Lgnu/text/SyntaxException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v5
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 884
    .end local v3    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    .end local v4    # "body":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 888
    .local v3, "e":Lgnu/text/SyntaxException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eval: errors while compiling:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 882
    .local v3, "lexer":Lgnu/kawa/lispexpr/LispReader;
    .restart local v4    # "body":Ljava/lang/Object;
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    :try_start_1
    invoke-static {v5, v6, v7}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    move-object v0, v5

    .end local v0    # "port":Lgnu/mapping/InPort;
    return-object v0

    .line 891
    .end local v3    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    .end local v4    # "body":Ljava/lang/Object;
    .restart local v0    # "port":Lgnu/mapping/InPort;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 893
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eval: I/O exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 896
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 898
    .local v3, "ex":Ljava/lang/RuntimeException;
    move-object v5, v3

    throw v5

    .line 900
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 902
    .local v3, "ex":Ljava/lang/Error;
    move-object v5, v3

    throw v5

    .line 904
    .end local v3    # "ex":Ljava/lang/Error;
    :catch_4
    move-exception v5

    move-object v3, v5

    .line 906
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v5, Lgnu/mapping/WrappedException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "sexpr":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move-object v0, v3

    .end local v0    # "sexpr":Ljava/lang/Object;
    return-object v0

    .line 920
    .restart local v0    # "sexpr":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 922
    .local v2, "ex":Ljava/lang/RuntimeException;
    move-object v3, v2

    throw v3

    .line 924
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 926
    .local v2, "ex":Ljava/lang/Error;
    move-object v3, v2

    throw v3

    .line 928
    .end local v2    # "ex":Ljava/lang/Error;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 930
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Lgnu/mapping/WrappedException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static eval(Ljava/lang/String;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "string":Ljava/lang/String;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/standard/Scheme;->eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "string":Ljava/lang/String;
    return-object v0
.end method

.method public static exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "exp":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static getInstance()Lkawa/standard/Scheme;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    return-object v0
.end method

.method public static getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 11

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1025
    sget-object v6, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/Type;

    move-object v1, v6

    .line 1026
    .local v1, "type":Lgnu/bytecode/Type;
    move-object v6, v1

    if-nez v6, :cond_2

    move-object v6, v0

    const-string/jumbo v7, "elisp:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    const-string/jumbo v7, "clisp:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1029
    :cond_0
    move-object v6, v0

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v2, v6

    .line 1030
    .local v2, "colon":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 1031
    .local v3, "clas":Ljava/lang/Class;
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1032
    .local v4, "lang":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v6}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    move-object v5, v6

    .line 1033
    .local v5, "interp":Lgnu/expr/Language;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1034
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown type \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' - unknown language \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1037
    :cond_1
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    move-object v1, v6

    .line 1038
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 1039
    sget-object v6, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1041
    .end local v2    # "colon":I
    .end local v3    # "clas":Ljava/lang/Class;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "interp":Lgnu/expr/Language;
    :cond_2
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method static declared-synchronized getTypeMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 957
    const-class v4, Lkawa/standard/Scheme;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 961
    new-instance v0, Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    .line 962
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 963
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 964
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 965
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 966
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 967
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 968
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 969
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 970
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 971
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "never-returns"

    sget-object v2, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 973
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "Object"

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 974
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "String"

    sget-object v2, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 976
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "object"

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 977
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "number"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 978
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "quantity"

    const-string/jumbo v2, "gnu.math.Quantity"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 979
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "complex"

    const-string/jumbo v2, "gnu.math.Complex"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 980
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "real"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 981
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "rational"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 982
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "integer"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 983
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "symbol"

    const-string/jumbo v2, "gnu.mapping.Symbol"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 984
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "namespace"

    const-string/jumbo v2, "gnu.mapping.Namespace"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 985
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "keyword"

    const-string/jumbo v2, "gnu.expr.Keyword"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 986
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "pair"

    const-string/jumbo v2, "gnu.lists.Pair"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 987
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "pair-with-position"

    const-string/jumbo v2, "gnu.lists.PairWithPosition"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 989
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "constant-string"

    const-string/jumbo v2, "java.lang.String"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 990
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "abstract-string"

    const-string/jumbo v2, "gnu.lists.CharSeq"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 991
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "character"

    const-string/jumbo v2, "gnu.text.Char"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 992
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "vector"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 993
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "string"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 994
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "list"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 995
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "function"

    const-string/jumbo v2, "gnu.mapping.Procedure"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 996
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "procedure"

    const-string/jumbo v2, "gnu.mapping.Procedure"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 997
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "input-port"

    const-string/jumbo v2, "gnu.mapping.InPort"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 998
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "output-port"

    const-string/jumbo v2, "gnu.mapping.OutPort"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 999
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "string-output-port"

    const-string/jumbo v2, "gnu.mapping.CharArrayOutPort"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1001
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "record"

    const-string/jumbo v2, "kawa.lang.Record"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1002
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1003
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "class-type"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1004
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "class"

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1006
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "s8vector"

    const-string/jumbo v2, "gnu.lists.S8Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1007
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "u8vector"

    const-string/jumbo v2, "gnu.lists.U8Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1008
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "s16vector"

    const-string/jumbo v2, "gnu.lists.S16Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1009
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "u16vector"

    const-string/jumbo v2, "gnu.lists.U16Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1010
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "s32vector"

    const-string/jumbo v2, "gnu.lists.S32Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1011
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "u32vector"

    const-string/jumbo v2, "gnu.lists.U32Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1012
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "s64vector"

    const-string/jumbo v2, "gnu.lists.S64Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1013
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "u64vector"

    const-string/jumbo v2, "gnu.lists.U64Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1014
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "f32vector"

    const-string/jumbo v2, "gnu.lists.F32Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1015
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "f64vector"

    const-string/jumbo v2, "gnu.lists.F64Vector"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1016
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "document"

    const-string/jumbo v2, "gnu.kawa.xml.KDocument"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1017
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string/jumbo v1, "readtable"

    const-string/jumbo v2, "gnu.kawa.lispexpr.ReadTable"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1019
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "exp":Lgnu/expr/Expression;
    return-object v0
.end method

.method private initScheme()V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, v0

    sget-object v2, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    const/4 v3, 0x0

    sget-object v4, Lkawa/standard/Scheme;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 117
    move-object v1, v0

    const-string/jumbo v2, "lambda"

    const-string/jumbo v3, "kawa.standard.SchemeCompilation"

    const-string/jumbo v4, "lambda"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object v1, v0

    const-string/jumbo v2, "quote"

    const-string/jumbo v3, "kawa.lang.Quote"

    const-string/jumbo v4, "plainQuote"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object v1, v0

    const-string/jumbo v2, "%define"

    const-string/jumbo v3, "kawa.standard.define"

    const-string/jumbo v4, "defineRaw"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object v1, v0

    const-string/jumbo v2, "define"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object v1, v0

    const-string/jumbo v2, "if"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object v1, v0

    const-string/jumbo v2, "set!"

    const-string/jumbo v3, "kawa.standard.set_b"

    const-string/jumbo v4, "set"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move-object v1, v0

    const-string/jumbo v2, "cond"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object v1, v0

    const-string/jumbo v2, "case"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    move-object v1, v0

    const-string/jumbo v2, "and"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object v1, v0

    const-string/jumbo v2, "or"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object v1, v0

    const-string/jumbo v2, "%let"

    const-string/jumbo v3, "kawa.standard.let"

    const-string/jumbo v4, "let"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    move-object v1, v0

    const-string/jumbo v2, "let"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object v1, v0

    const-string/jumbo v2, "let*"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object v1, v0

    const-string/jumbo v2, "letrec"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object v1, v0

    const-string/jumbo v2, "begin"

    const-string/jumbo v3, "kawa.standard.begin"

    const-string/jumbo v4, "begin"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object v1, v0

    const-string/jumbo v2, "do"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    move-object v1, v0

    const-string/jumbo v2, "delay"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object v1, v0

    const-string/jumbo v2, "%make-promise"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object v1, v0

    const-string/jumbo v2, "quasiquote"

    const-string/jumbo v3, "kawa.lang.Quote"

    const-string/jumbo v4, "quasiQuote"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    move-object v1, v0

    const-string/jumbo v2, "define-syntax"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object v1, v0

    const-string/jumbo v2, "let-syntax"

    const-string/jumbo v3, "kawa.standard.let_syntax"

    const-string/jumbo v4, "let_syntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object v1, v0

    const-string/jumbo v2, "letrec-syntax"

    const-string/jumbo v3, "kawa.standard.let_syntax"

    const-string/jumbo v4, "letrec_syntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v1, v0

    const-string/jumbo v2, "syntax-rules"

    const-string/jumbo v3, "kawa.standard.syntax_rules"

    const-string/jumbo v4, "syntax_rules"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-virtual {v1}, Lgnu/mapping/Environment;->setLocked()V

    .line 154
    move-object v1, v0

    sget-object v2, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 157
    move-object v1, v0

    const-string/jumbo v2, "not"

    const-string/jumbo v3, "kawa.standard.Scheme"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object v1, v0

    const-string/jumbo v2, "boolean?"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object v1, v0

    const-string/jumbo v2, "eq?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "isEq"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object v1, v0

    const-string/jumbo v2, "eqv?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "isEqv"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object v1, v0

    const-string/jumbo v2, "equal?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "isEqual"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object v1, v0

    const-string/jumbo v2, "pair?"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object v1, v0

    const-string/jumbo v2, "cons"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object v1, v0

    const-string/jumbo v2, "car"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object v1, v0

    const-string/jumbo v2, "cdr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object v1, v0

    const-string/jumbo v2, "set-car!"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object v1, v0

    const-string/jumbo v2, "set-cdr!"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object v1, v0

    const-string/jumbo v2, "caar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    move-object v1, v0

    const-string/jumbo v2, "cadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object v1, v0

    const-string/jumbo v2, "cdar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object v1, v0

    const-string/jumbo v2, "cddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object v1, v0

    const-string/jumbo v2, "caaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object v1, v0

    const-string/jumbo v2, "caadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object v1, v0

    const-string/jumbo v2, "cadar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object v1, v0

    const-string/jumbo v2, "caddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object v1, v0

    const-string/jumbo v2, "cdaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object v1, v0

    const-string/jumbo v2, "cdadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object v1, v0

    const-string/jumbo v2, "cddar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object v1, v0

    const-string/jumbo v2, "cdddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object v1, v0

    const-string/jumbo v2, "caaaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object v1, v0

    const-string/jumbo v2, "caaadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object v1, v0

    const-string/jumbo v2, "caadar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object v1, v0

    const-string/jumbo v2, "caaddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object v1, v0

    const-string/jumbo v2, "cadaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object v1, v0

    const-string/jumbo v2, "cadadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object v1, v0

    const-string/jumbo v2, "caddar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object v1, v0

    const-string/jumbo v2, "cadddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object v1, v0

    const-string/jumbo v2, "cdaaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object v1, v0

    const-string/jumbo v2, "cdaadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object v1, v0

    const-string/jumbo v2, "cdadar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object v1, v0

    const-string/jumbo v2, "cdaddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object v1, v0

    const-string/jumbo v2, "cddaar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object v1, v0

    const-string/jumbo v2, "cddadr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object v1, v0

    const-string/jumbo v2, "cdddar"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object v1, v0

    const-string/jumbo v2, "cddddr"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object v1, v0

    const-string/jumbo v2, "null?"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object v1, v0

    const-string/jumbo v2, "list?"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    move-object v1, v0

    const-string/jumbo v2, "length"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object v1, v0

    const-string/jumbo v2, "append"

    const-string/jumbo v3, "kawa.standard.append"

    const-string/jumbo v4, "append"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object v1, v0

    const-string/jumbo v2, "reverse"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object v1, v0

    const-string/jumbo v2, "reverse!"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object v1, v0

    const-string/jumbo v2, "list-tail"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object v1, v0

    const-string/jumbo v2, "list-ref"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object v1, v0

    const-string/jumbo v2, "memq"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object v1, v0

    const-string/jumbo v2, "memv"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    move-object v1, v0

    const-string/jumbo v2, "member"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object v1, v0

    const-string/jumbo v2, "assq"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object v1, v0

    const-string/jumbo v2, "assv"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object v1, v0

    const-string/jumbo v2, "assoc"

    const-string/jumbo v3, "kawa.lib.lists"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object v1, v0

    const-string/jumbo v2, "symbol?"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object v1, v0

    const-string/jumbo v2, "symbol->string"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object v1, v0

    const-string/jumbo v2, "string->symbol"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object v1, v0

    const-string/jumbo v2, "symbol=?"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object v1, v0

    const-string/jumbo v2, "symbol-local-name"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object v1, v0

    const-string/jumbo v2, "symbol-namespace"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    move-object v1, v0

    const-string/jumbo v2, "symbol-namespace-uri"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object v1, v0

    const-string/jumbo v2, "symbol-prefix"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object v1, v0

    const-string/jumbo v2, "namespace-uri"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object v1, v0

    const-string/jumbo v2, "namespace-prefix"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    move-object v1, v0

    const-string/jumbo v2, "number?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move-object v1, v0

    const-string/jumbo v2, "quantity?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object v1, v0

    const-string/jumbo v2, "complex?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object v1, v0

    const-string/jumbo v2, "real?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object v1, v0

    const-string/jumbo v2, "rational?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object v1, v0

    const-string/jumbo v2, "integer?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object v1, v0

    const-string/jumbo v2, "exact?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object v1, v0

    const-string/jumbo v2, "inexact?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object v1, v0

    const-string/jumbo v2, "="

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "numEqu"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object v1, v0

    const-string/jumbo v2, "<"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "numLss"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object v1, v0

    const-string/jumbo v2, ">"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "numGrt"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object v1, v0

    const-string/jumbo v2, "<="

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "numLEq"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object v1, v0

    const-string/jumbo v2, ">="

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "numGEq"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object v1, v0

    const-string/jumbo v2, "zero?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object v1, v0

    const-string/jumbo v2, "positive?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object v1, v0

    const-string/jumbo v2, "negative?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object v1, v0

    const-string/jumbo v2, "odd?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "isOdd"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object v1, v0

    const-string/jumbo v2, "even?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "isEven"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object v1, v0

    const-string/jumbo v2, "max"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object v1, v0

    const-string/jumbo v2, "min"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object v1, v0

    const-string/jumbo v2, "+"

    const-string/jumbo v3, "gnu.kawa.functions.AddOp"

    const-string/jumbo v4, "$Pl"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object v1, v0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "gnu.kawa.functions.AddOp"

    const-string/jumbo v4, "$Mn"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    move-object v1, v0

    const-string/jumbo v2, "*"

    const-string/jumbo v3, "gnu.kawa.functions.MultiplyOp"

    const-string/jumbo v4, "$St"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object v1, v0

    const-string/jumbo v2, "/"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "$Sl"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object v1, v0

    const-string/jumbo v2, "abs"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object v1, v0

    const-string/jumbo v2, "quotient"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "quotient"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object v1, v0

    const-string/jumbo v2, "remainder"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "remainder"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object v1, v0

    const-string/jumbo v2, "modulo"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "modulo"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object v1, v0

    const-string/jumbo v2, "div"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "div"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object v1, v0

    const-string/jumbo v2, "mod"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "mod"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object v1, v0

    const-string/jumbo v2, "div0"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "div0"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v1, v0

    const-string/jumbo v2, "mod0"

    const-string/jumbo v3, "gnu.kawa.functions.DivideOp"

    const-string/jumbo v4, "mod0"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object v1, v0

    const-string/jumbo v2, "div-and-mod"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object v1, v0

    const-string/jumbo v2, "div0-and-mod0"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object v1, v0

    const-string/jumbo v2, "gcd"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object v1, v0

    const-string/jumbo v2, "lcm"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object v1, v0

    const-string/jumbo v2, "numerator"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object v1, v0

    const-string/jumbo v2, "denominator"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object v1, v0

    const-string/jumbo v2, "floor"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object v1, v0

    const-string/jumbo v2, "ceiling"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object v1, v0

    const-string/jumbo v2, "truncate"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object v1, v0

    const-string/jumbo v2, "round"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object v1, v0

    const-string/jumbo v2, "rationalize"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v1, v0

    const-string/jumbo v2, "exp"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object v1, v0

    const-string/jumbo v2, "log"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object v1, v0

    const-string/jumbo v2, "sin"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object v1, v0

    const-string/jumbo v2, "cos"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object v1, v0

    const-string/jumbo v2, "tan"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object v1, v0

    const-string/jumbo v2, "asin"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object v1, v0

    const-string/jumbo v2, "acos"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object v1, v0

    const-string/jumbo v2, "atan"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object v1, v0

    const-string/jumbo v2, "sqrt"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object v1, v0

    const-string/jumbo v2, "expt"

    const-string/jumbo v3, "kawa.standard.expt"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object v1, v0

    const-string/jumbo v2, "make-rectangular"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object v1, v0

    const-string/jumbo v2, "make-polar"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object v1, v0

    const-string/jumbo v2, "real-part"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v1, v0

    const-string/jumbo v2, "imag-part"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v1, v0

    const-string/jumbo v2, "magnitude"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object v1, v0

    const-string/jumbo v2, "angle"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object v1, v0

    const-string/jumbo v2, "inexact"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object v1, v0

    const-string/jumbo v2, "exact"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object v1, v0

    const-string/jumbo v2, "exact->inexact"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object v1, v0

    const-string/jumbo v2, "inexact->exact"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object v1, v0

    const-string/jumbo v2, "number->string"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object v1, v0

    const-string/jumbo v2, "string->number"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    move-object v1, v0

    const-string/jumbo v2, "char?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object v1, v0

    const-string/jumbo v2, "char=?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    move-object v1, v0

    const-string/jumbo v2, "char<?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object v1, v0

    const-string/jumbo v2, "char>?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object v1, v0

    const-string/jumbo v2, "char<=?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object v1, v0

    const-string/jumbo v2, "char>=?"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object v1, v0

    const-string/jumbo v2, "char-ci=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object v1, v0

    const-string/jumbo v2, "char-ci<?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object v1, v0

    const-string/jumbo v2, "char-ci>?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object v1, v0

    const-string/jumbo v2, "char-ci<=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object v1, v0

    const-string/jumbo v2, "char-ci>=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object v1, v0

    const-string/jumbo v2, "char-alphabetic?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move-object v1, v0

    const-string/jumbo v2, "char-numeric?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object v1, v0

    const-string/jumbo v2, "char-whitespace?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object v1, v0

    const-string/jumbo v2, "char-upper-case?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object v1, v0

    const-string/jumbo v2, "char-lower-case?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object v1, v0

    const-string/jumbo v2, "char-title-case?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object v1, v0

    const-string/jumbo v2, "char->integer"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object v1, v0

    const-string/jumbo v2, "integer->char"

    const-string/jumbo v3, "kawa.lib.characters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object v1, v0

    const-string/jumbo v2, "char-upcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object v1, v0

    const-string/jumbo v2, "char-downcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object v1, v0

    const-string/jumbo v2, "char-titlecase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object v1, v0

    const-string/jumbo v2, "char-foldcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object v1, v0

    const-string/jumbo v2, "char-general-category"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move-object v1, v0

    const-string/jumbo v2, "string?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object v1, v0

    const-string/jumbo v2, "make-string"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object v1, v0

    const-string/jumbo v2, "string-length"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    move-object v1, v0

    const-string/jumbo v2, "string-ref"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object v1, v0

    const-string/jumbo v2, "string-set!"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object v1, v0

    const-string/jumbo v2, "string=?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object v1, v0

    const-string/jumbo v2, "string<?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object v1, v0

    const-string/jumbo v2, "string>?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    move-object v1, v0

    const-string/jumbo v2, "string<=?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object v1, v0

    const-string/jumbo v2, "string>=?"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object v1, v0

    const-string/jumbo v2, "string-ci=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object v1, v0

    const-string/jumbo v2, "string-ci<?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    move-object v1, v0

    const-string/jumbo v2, "string-ci>?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object v1, v0

    const-string/jumbo v2, "string-ci<=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object v1, v0

    const-string/jumbo v2, "string-ci>=?"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object v1, v0

    const-string/jumbo v2, "string-normalize-nfd"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object v1, v0

    const-string/jumbo v2, "string-normalize-nfkd"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object v1, v0

    const-string/jumbo v2, "string-normalize-nfc"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    move-object v1, v0

    const-string/jumbo v2, "string-normalize-nfkc"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object v1, v0

    const-string/jumbo v2, "substring"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object v1, v0

    const-string/jumbo v2, "string-append"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object v1, v0

    const-string/jumbo v2, "string-append/shared"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object v1, v0

    const-string/jumbo v2, "string->list"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    move-object v1, v0

    const-string/jumbo v2, "list->string"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object v1, v0

    const-string/jumbo v2, "string-copy"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    move-object v1, v0

    const-string/jumbo v2, "string-fill!"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object v1, v0

    const-string/jumbo v2, "vector?"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object v1, v0

    const-string/jumbo v2, "make-vector"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    move-object v1, v0

    const-string/jumbo v2, "vector-length"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object v1, v0

    const-string/jumbo v2, "vector-ref"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object v1, v0

    const-string/jumbo v2, "vector-set!"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object v1, v0

    const-string/jumbo v2, "list->vector"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    move-object v1, v0

    const-string/jumbo v2, "vector->list"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    move-object v1, v0

    const-string/jumbo v2, "vector-fill!"

    const-string/jumbo v3, "kawa.lib.vectors"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object v1, v0

    const-string/jumbo v2, "vector-append"

    const-string/jumbo v3, "kawa.standard.vector_append"

    const-string/jumbo v4, "vectorAppend"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object v1, v0

    const-string/jumbo v2, "values-append"

    const-string/jumbo v3, "gnu.kawa.functions.AppendValues"

    const-string/jumbo v4, "appendValues"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    move-object v1, v0

    const-string/jumbo v2, "procedure?"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object v1, v0

    const-string/jumbo v2, "apply"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "apply"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    move-object v1, v0

    const-string/jumbo v2, "map"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "map"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object v1, v0

    const-string/jumbo v2, "for-each"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "forEach"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-object v1, v0

    const-string/jumbo v2, "call-with-current-continuation"

    const-string/jumbo v3, "gnu.kawa.functions.CallCC"

    const-string/jumbo v4, "callcc"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object v1, v0

    const-string/jumbo v2, "call/cc"

    const-string/jumbo v3, "kawa.standard.callcc"

    const-string/jumbo v4, "callcc"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object v1, v0

    const-string/jumbo v2, "force"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object v1, v0

    const-string/jumbo v2, "call-with-input-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    move-object v1, v0

    const-string/jumbo v2, "call-with-output-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    move-object v1, v0

    const-string/jumbo v2, "input-port?"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object v1, v0

    const-string/jumbo v2, "output-port?"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object v1, v0

    const-string/jumbo v2, "current-input-port"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object v1, v0

    const-string/jumbo v2, "current-output-port"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    move-object v1, v0

    const-string/jumbo v2, "with-input-from-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object v1, v0

    const-string/jumbo v2, "with-output-to-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object v1, v0

    const-string/jumbo v2, "open-input-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object v1, v0

    const-string/jumbo v2, "open-output-file"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object v1, v0

    const-string/jumbo v2, "close-input-port"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object v1, v0

    const-string/jumbo v2, "close-output-port"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    move-object v1, v0

    const-string/jumbo v2, "read"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object v1, v0

    const-string/jumbo v2, "read-line"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object v1, v0

    const-string/jumbo v2, "read-char"

    const-string/jumbo v3, "kawa.standard.readchar"

    const-string/jumbo v4, "readChar"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object v1, v0

    const-string/jumbo v2, "peek-char"

    const-string/jumbo v3, "kawa.standard.readchar"

    const-string/jumbo v4, "peekChar"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object v1, v0

    const-string/jumbo v2, "eof-object?"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object v1, v0

    const-string/jumbo v2, "char-ready?"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    move-object v1, v0

    const-string/jumbo v2, "write"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object v1, v0

    const-string/jumbo v2, "display"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object v1, v0

    const-string/jumbo v2, "print-as-xml"

    const-string/jumbo v3, "gnu.xquery.lang.XQuery"

    const-string/jumbo v4, "writeFormat"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object v1, v0

    const-string/jumbo v2, "write-char"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object v1, v0

    const-string/jumbo v2, "newline"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object v1, v0

    const-string/jumbo v2, "load"

    const-string/jumbo v3, "kawa.standard.load"

    const-string/jumbo v4, "load"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    move-object v1, v0

    const-string/jumbo v2, "load-relative"

    const-string/jumbo v3, "kawa.standard.load"

    const-string/jumbo v4, "loadRelative"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object v1, v0

    const-string/jumbo v2, "transcript-off"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object v1, v0

    const-string/jumbo v2, "transcript-on"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object v1, v0

    const-string/jumbo v2, "call-with-input-string"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    move-object v1, v0

    const-string/jumbo v2, "open-input-string"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object v1, v0

    const-string/jumbo v2, "open-output-string"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    move-object v1, v0

    const-string/jumbo v2, "get-output-string"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object v1, v0

    const-string/jumbo v2, "call-with-output-string"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    move-object v1, v0

    const-string/jumbo v2, "force-output"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object v1, v0

    const-string/jumbo v2, "port-line"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object v1, v0

    const-string/jumbo v2, "set-port-line!"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    move-object v1, v0

    const-string/jumbo v2, "port-column"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object v1, v0

    const-string/jumbo v2, "current-error-port"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move-object v1, v0

    const-string/jumbo v2, "input-port-line-number"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object v1, v0

    const-string/jumbo v2, "set-input-port-line-number!"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    move-object v1, v0

    const-string/jumbo v2, "input-port-column-number"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object v1, v0

    const-string/jumbo v2, "input-port-read-state"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object v1, v0

    const-string/jumbo v2, "default-prompter"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object v1, v0

    const-string/jumbo v2, "input-port-prompter"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    move-object v1, v0

    const-string/jumbo v2, "set-input-port-prompter!"

    const-string/jumbo v3, "kawa.lib.ports"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object v1, v0

    const-string/jumbo v2, "base-uri"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object v1, v0

    const-string/jumbo v2, "%syntax-error"

    const-string/jumbo v3, "kawa.standard.syntax_error"

    const-string/jumbo v4, "syntax_error"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    move-object v1, v0

    const-string/jumbo v2, "syntax-error"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v1, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-virtual {v1}, Lgnu/mapping/Environment;->setLocked()V

    .line 431
    move-object v1, v0

    sget-object v2, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 433
    move-object v1, v0

    const-string/jumbo v2, "values"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object v1, v0

    const-string/jumbo v2, "call-with-values"

    const-string/jumbo v3, "kawa.standard.call_with_values"

    const-string/jumbo v4, "callWithValues"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object v1, v0

    const-string/jumbo v2, "let-values"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    move-object v1, v0

    const-string/jumbo v2, "let*-values"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object v1, v0

    const-string/jumbo v2, "case-lambda"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    move-object v1, v0

    const-string/jumbo v2, "receive"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    move-object v1, v0

    const-string/jumbo v2, "eval"

    const-string/jumbo v3, "kawa.lang.Eval"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object v1, v0

    const-string/jumbo v2, "repl"

    const-string/jumbo v3, "kawa.standard.SchemeCompilation"

    const-string/jumbo v4, "repl"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    move-object v1, v0

    const-string/jumbo v2, "scheme-report-environment"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object v1, v0

    const-string/jumbo v2, "null-environment"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object v1, v0

    const-string/jumbo v2, "interaction-environment"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object v1, v0

    const-string/jumbo v2, "dynamic-wind"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v1, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-virtual {v1}, Lgnu/mapping/Environment;->setLocked()V

    .line 448
    move-object v1, v0

    sget-object v2, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v2, v1, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 450
    move-object v1, v0

    const-string/jumbo v2, "define-private"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object v1, v0

    const-string/jumbo v2, "define-constant"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object v1, v0

    const-string/jumbo v2, "define-autoload"

    const-string/jumbo v3, "kawa.standard.define_autoload"

    const-string/jumbo v4, "define_autoload"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object v1, v0

    const-string/jumbo v2, "define-autoloads-from-file"

    const-string/jumbo v3, "kawa.standard.define_autoload"

    const-string/jumbo v4, "define_autoloads_from_file"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object v1, v0

    const-string/jumbo v2, "exit"

    const-string/jumbo v3, "kawa.lib.rnrs.programs"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object v1, v0

    const-string/jumbo v2, "command-line"

    const-string/jumbo v3, "kawa.lib.rnrs.programs"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    move-object v1, v0

    const-string/jumbo v2, "bitwise-arithmetic-shift"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ashift"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object v1, v0

    const-string/jumbo v2, "arithmetic-shift"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ashift"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    move-object v1, v0

    const-string/jumbo v2, "ash"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ashift"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object v1, v0

    const-string/jumbo v2, "bitwise-arithmetic-shift-left"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ashiftl"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object v1, v0

    const-string/jumbo v2, "bitwise-arithmetic-shift-right"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ashiftr"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    move-object v1, v0

    const-string/jumbo v2, "bitwise-and"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "and"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object v1, v0

    const-string/jumbo v2, "logand"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "and"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object v1, v0

    const-string/jumbo v2, "bitwise-ior"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ior"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    move-object v1, v0

    const-string/jumbo v2, "logior"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "ior"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object v1, v0

    const-string/jumbo v2, "bitwise-xor"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "xor"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    move-object v1, v0

    const-string/jumbo v2, "logxor"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "xor"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    move-object v1, v0

    const-string/jumbo v2, "bitwise-if"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object v1, v0

    const-string/jumbo v2, "bitwise-not"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "not"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    move-object v1, v0

    const-string/jumbo v2, "lognot"

    const-string/jumbo v3, "gnu.kawa.functions.BitwiseOp"

    const-string/jumbo v4, "not"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    move-object v1, v0

    const-string/jumbo v2, "logop"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object v1, v0

    const-string/jumbo v2, "bitwise-bit-set?"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    move-object v1, v0

    const-string/jumbo v2, "logbit?"

    const-string/jumbo v3, "kawa.lib.numbers"

    const-string/jumbo v4, "bitwise-bit-set?"

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    move-object v1, v0

    const-string/jumbo v2, "logtest"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object v1, v0

    const-string/jumbo v2, "bitwise-bit-count"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object v1, v0

    const-string/jumbo v2, "logcount"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object v1, v0

    const-string/jumbo v2, "bitwise-copy-bit"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move-object v1, v0

    const-string/jumbo v2, "bitwise-copy-bit-field"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move-object v1, v0

    const-string/jumbo v2, "bitwise-bit-field"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    move-object v1, v0

    const-string/jumbo v2, "bit-extract"

    const-string/jumbo v3, "kawa.lib.numbers"

    const-string/jumbo v4, "bitwise-bit-field"

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object v1, v0

    const-string/jumbo v2, "bitwise-length"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object v1, v0

    const-string/jumbo v2, "integer-length"

    const-string/jumbo v3, "kawa.lib.numbers"

    const-string/jumbo v4, "bitwise$Mnlength"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object v1, v0

    const-string/jumbo v2, "bitwise-first-bit-set"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    move-object v1, v0

    const-string/jumbo v2, "bitwise-rotate-bit-field"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    move-object v1, v0

    const-string/jumbo v2, "bitwise-reverse-bit-field"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object v1, v0

    const-string/jumbo v2, "string-upcase!"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object v1, v0

    const-string/jumbo v2, "string-downcase!"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object v1, v0

    const-string/jumbo v2, "string-capitalize!"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    move-object v1, v0

    const-string/jumbo v2, "string-upcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    move-object v1, v0

    const-string/jumbo v2, "string-downcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    move-object v1, v0

    const-string/jumbo v2, "string-titlecase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    move-object v1, v0

    const-string/jumbo v2, "string-foldcase"

    const-string/jumbo v3, "kawa.lib.rnrs.unicode"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-object v1, v0

    const-string/jumbo v2, "string-capitalize"

    const-string/jumbo v3, "kawa.lib.strings"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    move-object v1, v0

    const-string/jumbo v2, "primitive-virtual-method"

    const-string/jumbo v3, "kawa.standard.prim_method"

    const-string/jumbo v4, "virtual_method"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object v1, v0

    const-string/jumbo v2, "primitive-static-method"

    const-string/jumbo v3, "kawa.standard.prim_method"

    const-string/jumbo v4, "static_method"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    move-object v1, v0

    const-string/jumbo v2, "primitive-interface-method"

    const-string/jumbo v3, "kawa.standard.prim_method"

    const-string/jumbo v4, "interface_method"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    move-object v1, v0

    const-string/jumbo v2, "primitive-constructor"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move-object v1, v0

    const-string/jumbo v2, "primitive-op1"

    const-string/jumbo v3, "kawa.standard.prim_method"

    const-string/jumbo v4, "op1"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object v1, v0

    const-string/jumbo v2, "primitive-get-field"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    move-object v1, v0

    const-string/jumbo v2, "primitive-set-field"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    move-object v1, v0

    const-string/jumbo v2, "primitive-get-static"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    move-object v1, v0

    const-string/jumbo v2, "primitive-set-static"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object v1, v0

    const-string/jumbo v2, "primitive-array-new"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object v1, v0

    const-string/jumbo v2, "primitive-array-get"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    move-object v1, v0

    const-string/jumbo v2, "primitive-array-set"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    move-object v1, v0

    const-string/jumbo v2, "primitive-array-length"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object v1, v0

    const-string/jumbo v2, "subtype?"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    move-object v1, v0

    const-string/jumbo v2, "primitive-throw"

    const-string/jumbo v3, "kawa.standard.prim_throw"

    const-string/jumbo v4, "primitiveThrow"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object v1, v0

    const-string/jumbo v2, "try-finally"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move-object v1, v0

    const-string/jumbo v2, "try-catch"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    move-object v1, v0

    const-string/jumbo v2, "throw"

    const-string/jumbo v3, "kawa.standard.throw_name"

    const-string/jumbo v4, "throwName"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object v1, v0

    const-string/jumbo v2, "catch"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object v1, v0

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object v1, v0

    const-string/jumbo v2, "as"

    const-string/jumbo v3, "gnu.kawa.functions.Convert"

    const-string/jumbo v4, "as"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object v1, v0

    const-string/jumbo v2, "instance?"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "instanceOf"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    move-object v1, v0

    const-string/jumbo v2, "synchronized"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    move-object v1, v0

    const-string/jumbo v2, "object"

    const-string/jumbo v3, "kawa.standard.object"

    const-string/jumbo v4, "objectSyntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object v1, v0

    const-string/jumbo v2, "define-class"

    const-string/jumbo v3, "kawa.standard.define_class"

    const-string/jumbo v4, "define_class"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    move-object v1, v0

    const-string/jumbo v2, "define-simple-class"

    const-string/jumbo v3, "kawa.standard.define_class"

    const-string/jumbo v4, "define_simple_class"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    move-object v1, v0

    const-string/jumbo v2, "this"

    const-string/jumbo v3, "kawa.standard.thisRef"

    const-string/jumbo v4, "thisSyntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    move-object v1, v0

    const-string/jumbo v2, "make"

    const-string/jumbo v3, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v4, "make"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move-object v1, v0

    const-string/jumbo v2, "slot-ref"

    const-string/jumbo v3, "gnu.kawa.reflect.SlotGet"

    const-string/jumbo v4, "slotRef"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    move-object v1, v0

    const-string/jumbo v2, "slot-set!"

    const-string/jumbo v3, "gnu.kawa.reflect.SlotSet"

    const-string/jumbo v4, "set$Mnfield$Ex"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object v1, v0

    const-string/jumbo v2, "field"

    const-string/jumbo v3, "gnu.kawa.reflect.SlotGet"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object v1, v0

    const-string/jumbo v2, "class-methods"

    const-string/jumbo v3, "gnu.kawa.reflect.ClassMethods"

    const-string/jumbo v4, "classMethods"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object v1, v0

    const-string/jumbo v2, "static-field"

    const-string/jumbo v3, "gnu.kawa.reflect.SlotGet"

    const-string/jumbo v4, "staticField"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object v1, v0

    const-string/jumbo v2, "invoke"

    const-string/jumbo v3, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v4, "invoke"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object v1, v0

    const-string/jumbo v2, "invoke-static"

    const-string/jumbo v3, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v4, "invokeStatic"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object v1, v0

    const-string/jumbo v2, "invoke-special"

    const-string/jumbo v3, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v4, "invokeSpecial"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object v1, v0

    const-string/jumbo v2, "define-macro"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object v1, v0

    const-string/jumbo v2, "%define-macro"

    const-string/jumbo v3, "kawa.standard.define_syntax"

    const-string/jumbo v4, "define_macro"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    move-object v1, v0

    const-string/jumbo v2, "define-syntax-case"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object v1, v0

    const-string/jumbo v2, "syntax-case"

    const-string/jumbo v3, "kawa.standard.syntax_case"

    const-string/jumbo v4, "syntax_case"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object v1, v0

    const-string/jumbo v2, "%define-syntax"

    const-string/jumbo v3, "kawa.standard.define_syntax"

    const-string/jumbo v4, "define_syntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object v1, v0

    const-string/jumbo v2, "syntax"

    const-string/jumbo v3, "kawa.standard.syntax"

    const-string/jumbo v4, "syntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    move-object v1, v0

    const-string/jumbo v2, "quasisyntax"

    const-string/jumbo v3, "kawa.standard.syntax"

    const-string/jumbo v4, "quasiSyntax"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    move-object v1, v0

    const-string/jumbo v2, "syntax-object->datum"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object v1, v0

    const-string/jumbo v2, "datum->syntax-object"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object v1, v0

    const-string/jumbo v2, "syntax->expression"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move-object v1, v0

    const-string/jumbo v2, "syntax-body->expression"

    const-string/jumbo v3, "kawa.lib.prim_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    move-object v1, v0

    const-string/jumbo v2, "generate-temporaries"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    move-object v1, v0

    const-string/jumbo v2, "with-syntax"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    move-object v1, v0

    const-string/jumbo v2, "identifier?"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object v1, v0

    const-string/jumbo v2, "free-identifier=?"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    move-object v1, v0

    const-string/jumbo v2, "syntax-source"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    move-object v1, v0

    const-string/jumbo v2, "syntax-line"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object v1, v0

    const-string/jumbo v2, "syntax-column"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    move-object v1, v0

    const-string/jumbo v2, "begin-for-syntax"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    move-object v1, v0

    const-string/jumbo v2, "define-for-syntax"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object v1, v0

    const-string/jumbo v2, "include"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object v1, v0

    const-string/jumbo v2, "include-relative"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    move-object v1, v0

    const-string/jumbo v2, "file-exists?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object v1, v0

    const-string/jumbo v2, "file-directory?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    move-object v1, v0

    const-string/jumbo v2, "file-readable?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    move-object v1, v0

    const-string/jumbo v2, "file-writable?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object v1, v0

    const-string/jumbo v2, "delete-file"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object v1, v0

    const-string/jumbo v2, "system-tmpdir"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    move-object v1, v0

    const-string/jumbo v2, "make-temporary-file"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object v1, v0

    const-string/jumbo v2, "rename-file"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    move-object v1, v0

    const-string/jumbo v2, "copy-file"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    move-object v1, v0

    const-string/jumbo v2, "create-directory"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    move-object v1, v0

    const-string/jumbo v2, "->pathname"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    move-object v1, v0

    const-string/jumbo v2, "port-char-encoding"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    move-object v1, v0

    const-string/jumbo v2, "symbol-read-case"

    const-string/jumbo v3, "P"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    move-object v1, v0

    const-string/jumbo v2, "system"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object v1, v0

    const-string/jumbo v2, "make-process"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    move-object v1, v0

    const-string/jumbo v2, "tokenize-string-to-string-array"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object v1, v0

    const-string/jumbo v2, "tokenize-string-using-shell"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    move-object v1, v0

    const-string/jumbo v2, "command-parse"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object v1, v0

    const-string/jumbo v2, "process-command-line-assignments"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    move-object v1, v0

    const-string/jumbo v2, "record-accessor"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object v1, v0

    const-string/jumbo v2, "record-modifier"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object v1, v0

    const-string/jumbo v2, "record-predicate"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object v1, v0

    const-string/jumbo v2, "record-constructor"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object v1, v0

    const-string/jumbo v2, "make-record-type"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    move-object v1, v0

    const-string/jumbo v2, "record-type-descriptor"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    move-object v1, v0

    const-string/jumbo v2, "record-type-name"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object v1, v0

    const-string/jumbo v2, "record-type-field-names"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object v1, v0

    const-string/jumbo v2, "record?"

    const-string/jumbo v3, "kawa.lib.reflection"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object v1, v0

    const-string/jumbo v2, "define-record-type"

    const-string/jumbo v3, "gnu.kawa.slib.DefineRecordType"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move-object v1, v0

    const-string/jumbo v2, "when"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object v1, v0

    const-string/jumbo v2, "unless"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object v1, v0

    const-string/jumbo v2, "fluid-let"

    const-string/jumbo v3, "kawa.standard.fluid_let"

    const-string/jumbo v4, "fluid_let"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object v1, v0

    const-string/jumbo v2, "constant-fold"

    const-string/jumbo v3, "kawa.standard.constant_fold"

    const-string/jumbo v4, "constant_fold"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object v1, v0

    const-string/jumbo v2, "make-parameter"

    const-string/jumbo v3, "kawa.lib.parameters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object v1, v0

    const-string/jumbo v2, "parameterize"

    const-string/jumbo v3, "kawa.lib.parameters"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    move-object v1, v0

    const-string/jumbo v2, "compile-file"

    const-string/jumbo v3, "kawa.lib.system"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    move-object v1, v0

    const-string/jumbo v2, "environment-bound?"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object v1, v0

    const-string/jumbo v2, "scheme-implementation-version"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object v1, v0

    const-string/jumbo v2, "scheme-window"

    const-string/jumbo v3, "kawa.lib.windows"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object v1, v0

    const-string/jumbo v2, "define-procedure"

    const-string/jumbo v3, "kawa.lib.std_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object v1, v0

    const-string/jumbo v2, "add-procedure-properties"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    move-object v1, v0

    const-string/jumbo v2, "make-procedure"

    const-string/jumbo v3, "gnu.kawa.functions.MakeProcedure"

    const-string/jumbo v4, "makeProcedure"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    move-object v1, v0

    const-string/jumbo v2, "procedure-property"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object v1, v0

    const-string/jumbo v2, "set-procedure-property!"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object v1, v0

    const-string/jumbo v2, "provide"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object v1, v0

    const-string/jumbo v2, "test-begin"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    move-object v1, v0

    const-string/jumbo v2, "quantity->number"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object v1, v0

    const-string/jumbo v2, "quantity->unit"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object v1, v0

    const-string/jumbo v2, "make-quantity"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move-object v1, v0

    const-string/jumbo v2, "define-namespace"

    const-string/jumbo v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string/jumbo v4, "define_namespace"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    move-object v1, v0

    const-string/jumbo v2, "define-xml-namespace"

    const-string/jumbo v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string/jumbo v4, "define_xml_namespace"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object v1, v0

    const-string/jumbo v2, "define-private-namespace"

    const-string/jumbo v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string/jumbo v4, "define_private_namespace"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    move-object v1, v0

    const-string/jumbo v2, "define-unit"

    const-string/jumbo v3, "kawa.standard.define_unit"

    const-string/jumbo v4, "define_unit"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object v1, v0

    const-string/jumbo v2, "define-base-unit"

    const-string/jumbo v3, "kawa.standard.define_unit"

    const-string/jumbo v4, "define_base_unit"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move-object v1, v0

    const-string/jumbo v2, "duration"

    const-string/jumbo v3, "kawa.lib.numbers"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    move-object v1, v0

    const-string/jumbo v2, "gentemp"

    const-string/jumbo v3, "kawa.lib.misc"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object v1, v0

    const-string/jumbo v2, "defmacro"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object v1, v0

    const-string/jumbo v2, "setter"

    const-string/jumbo v3, "gnu.kawa.functions.Setter"

    const-string/jumbo v4, "setter"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    move-object v1, v0

    const-string/jumbo v2, "resource-url"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    move-object v1, v0

    const-string/jumbo v2, "module-uri"

    const-string/jumbo v3, "kawa.lib.misc_syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object v1, v0

    const-string/jumbo v2, "future"

    const-string/jumbo v3, "kawa.lib.thread"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object v1, v0

    const-string/jumbo v2, "sleep"

    const-string/jumbo v3, "kawa.lib.thread"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object v1, v0

    const-string/jumbo v2, "runnable"

    const-string/jumbo v3, "kawa.lib.thread"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    move-object v1, v0

    const-string/jumbo v2, "trace"

    const-string/jumbo v3, "kawa.lib.trace"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object v1, v0

    const-string/jumbo v2, "untrace"

    const-string/jumbo v3, "kawa.lib.trace"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move-object v1, v0

    const-string/jumbo v2, "disassemble"

    const-string/jumbo v3, "kawa.lib.trace"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object v1, v0

    const-string/jumbo v2, "format"

    const-string/jumbo v3, "gnu.kawa.functions.Format"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    move-object v1, v0

    const-string/jumbo v2, "parse-format"

    const-string/jumbo v3, "gnu.kawa.functions.ParseFormat"

    const-string/jumbo v4, "parseFormat"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object v1, v0

    const-string/jumbo v2, "make-element"

    const-string/jumbo v3, "gnu.kawa.xml.MakeElement"

    const-string/jumbo v4, "makeElement"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    move-object v1, v0

    const-string/jumbo v2, "make-attribute"

    const-string/jumbo v3, "gnu.kawa.xml.MakeAttribute"

    const-string/jumbo v4, "makeAttribute"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object v1, v0

    const-string/jumbo v2, "map-values"

    const-string/jumbo v3, "gnu.kawa.functions.ValuesMap"

    const-string/jumbo v4, "valuesMap"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    move-object v1, v0

    const-string/jumbo v2, "children"

    const-string/jumbo v3, "gnu.kawa.xml.Children"

    const-string/jumbo v4, "children"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object v1, v0

    const-string/jumbo v2, "attributes"

    const-string/jumbo v3, "gnu.kawa.xml.Attributes"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    move-object v1, v0

    const-string/jumbo v2, "unescaped-data"

    const-string/jumbo v3, "gnu.kawa.xml.MakeUnescapedData"

    const-string/jumbo v4, "unescapedData"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    move-object v1, v0

    const-string/jumbo v2, "keyword?"

    const-string/jumbo v3, "kawa.lib.keywords"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    move-object v1, v0

    const-string/jumbo v2, "keyword->string"

    const-string/jumbo v3, "kawa.lib.keywords"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    move-object v1, v0

    const-string/jumbo v2, "string->keyword"

    const-string/jumbo v3, "kawa.lib.keywords"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object v1, v0

    const-string/jumbo v2, "location"

    const-string/jumbo v3, "kawa.standard.location"

    const-string/jumbo v4, "location"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    move-object v1, v0

    const-string/jumbo v2, "define-alias"

    const-string/jumbo v3, "kawa.standard.define_alias"

    const-string/jumbo v4, "define_alias"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    move-object v1, v0

    const-string/jumbo v2, "define-variable"

    const-string/jumbo v3, "kawa.standard.define_variable"

    const-string/jumbo v4, "define_variable"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object v1, v0

    const-string/jumbo v2, "define-member-alias"

    const-string/jumbo v3, "kawa.standard.define_member_alias"

    const-string/jumbo v4, "define_member_alias"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    move-object v1, v0

    const-string/jumbo v2, "define-enum"

    const-string/jumbo v3, "gnu.kawa.slib.enums"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    move-object v1, v0

    const-string/jumbo v2, "import"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object v1, v0

    const-string/jumbo v2, "require"

    const-string/jumbo v3, "kawa.standard.require"

    const-string/jumbo v4, "require"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object v1, v0

    const-string/jumbo v2, "module-name"

    const-string/jumbo v3, "kawa.standard.module_name"

    const-string/jumbo v4, "module_name"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object v1, v0

    const-string/jumbo v2, "module-extends"

    const-string/jumbo v3, "kawa.standard.module_extends"

    const-string/jumbo v4, "module_extends"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object v1, v0

    const-string/jumbo v2, "module-implements"

    const-string/jumbo v3, "kawa.standard.module_implements"

    const-string/jumbo v4, "module_implements"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object v1, v0

    const-string/jumbo v2, "module-static"

    const-string/jumbo v3, "kawa.standard.module_static"

    const-string/jumbo v4, "module_static"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    move-object v1, v0

    const-string/jumbo v2, "module-export"

    const-string/jumbo v3, "kawa.standard.export"

    const-string/jumbo v4, "module_export"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    move-object v1, v0

    const-string/jumbo v2, "export"

    const-string/jumbo v3, "kawa.standard.export"

    const-string/jumbo v4, "export"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object v1, v0

    const-string/jumbo v2, "module-compile-options"

    const-string/jumbo v3, "kawa.standard.module_compile_options"

    const-string/jumbo v4, "module_compile_options"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    move-object v1, v0

    const-string/jumbo v2, "with-compile-options"

    const-string/jumbo v3, "kawa.standard.with_compile_options"

    const-string/jumbo v4, "with_compile_options"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    move-object v1, v0

    const-string/jumbo v2, "array?"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    move-object v1, v0

    const-string/jumbo v2, "array-rank"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    move-object v1, v0

    const-string/jumbo v2, "make-array"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object v1, v0

    const-string/jumbo v2, "array"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    move-object v1, v0

    const-string/jumbo v2, "array-start"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object v1, v0

    const-string/jumbo v2, "array-end"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object v1, v0

    const-string/jumbo v2, "shape"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object v1, v0

    const-string/jumbo v2, "array-ref"

    const-string/jumbo v3, "gnu.kawa.functions.ArrayRef"

    const-string/jumbo v4, "arrayRef"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object v1, v0

    const-string/jumbo v2, "array-set!"

    const-string/jumbo v3, "gnu.kawa.functions.ArraySet"

    const-string/jumbo v4, "arraySet"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object v1, v0

    const-string/jumbo v2, "share-array"

    const-string/jumbo v3, "kawa.lib.arrays"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    move-object v1, v0

    const-string/jumbo v2, "s8vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object v1, v0

    const-string/jumbo v2, "make-s8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object v1, v0

    const-string/jumbo v2, "s8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object v1, v0

    const-string/jumbo v2, "s8vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object v1, v0

    const-string/jumbo v2, "s8vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    move-object v1, v0

    const-string/jumbo v2, "s8vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object v1, v0

    const-string/jumbo v2, "s8vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    move-object v1, v0

    const-string/jumbo v2, "list->s8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object v1, v0

    const-string/jumbo v2, "u8vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    move-object v1, v0

    const-string/jumbo v2, "make-u8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    move-object v1, v0

    const-string/jumbo v2, "u8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    move-object v1, v0

    const-string/jumbo v2, "u8vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    move-object v1, v0

    const-string/jumbo v2, "u8vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object v1, v0

    const-string/jumbo v2, "u8vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    move-object v1, v0

    const-string/jumbo v2, "u8vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object v1, v0

    const-string/jumbo v2, "list->u8vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object v1, v0

    const-string/jumbo v2, "s16vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object v1, v0

    const-string/jumbo v2, "make-s16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object v1, v0

    const-string/jumbo v2, "s16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    move-object v1, v0

    const-string/jumbo v2, "s16vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    move-object v1, v0

    const-string/jumbo v2, "s16vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    move-object v1, v0

    const-string/jumbo v2, "s16vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object v1, v0

    const-string/jumbo v2, "s16vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    move-object v1, v0

    const-string/jumbo v2, "list->s16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    move-object v1, v0

    const-string/jumbo v2, "u16vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    move-object v1, v0

    const-string/jumbo v2, "make-u16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object v1, v0

    const-string/jumbo v2, "u16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    move-object v1, v0

    const-string/jumbo v2, "u16vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    move-object v1, v0

    const-string/jumbo v2, "u16vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object v1, v0

    const-string/jumbo v2, "u16vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    move-object v1, v0

    const-string/jumbo v2, "u16vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object v1, v0

    const-string/jumbo v2, "list->u16vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object v1, v0

    const-string/jumbo v2, "s32vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    move-object v1, v0

    const-string/jumbo v2, "make-s32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    move-object v1, v0

    const-string/jumbo v2, "s32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    move-object v1, v0

    const-string/jumbo v2, "s32vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    move-object v1, v0

    const-string/jumbo v2, "s32vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    move-object v1, v0

    const-string/jumbo v2, "s32vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    move-object v1, v0

    const-string/jumbo v2, "s32vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    move-object v1, v0

    const-string/jumbo v2, "list->s32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    move-object v1, v0

    const-string/jumbo v2, "u32vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    move-object v1, v0

    const-string/jumbo v2, "make-u32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    move-object v1, v0

    const-string/jumbo v2, "u32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    move-object v1, v0

    const-string/jumbo v2, "u32vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    move-object v1, v0

    const-string/jumbo v2, "u32vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object v1, v0

    const-string/jumbo v2, "u32vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    move-object v1, v0

    const-string/jumbo v2, "u32vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    move-object v1, v0

    const-string/jumbo v2, "list->u32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    move-object v1, v0

    const-string/jumbo v2, "s64vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object v1, v0

    const-string/jumbo v2, "make-s64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    move-object v1, v0

    const-string/jumbo v2, "s64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    move-object v1, v0

    const-string/jumbo v2, "s64vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    move-object v1, v0

    const-string/jumbo v2, "s64vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    move-object v1, v0

    const-string/jumbo v2, "s64vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    move-object v1, v0

    const-string/jumbo v2, "s64vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    move-object v1, v0

    const-string/jumbo v2, "list->s64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object v1, v0

    const-string/jumbo v2, "u64vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    move-object v1, v0

    const-string/jumbo v2, "make-u64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    move-object v1, v0

    const-string/jumbo v2, "u64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    move-object v1, v0

    const-string/jumbo v2, "u64vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object v1, v0

    const-string/jumbo v2, "u64vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    move-object v1, v0

    const-string/jumbo v2, "u64vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    move-object v1, v0

    const-string/jumbo v2, "u64vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    move-object v1, v0

    const-string/jumbo v2, "list->u64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    move-object v1, v0

    const-string/jumbo v2, "f32vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    move-object v1, v0

    const-string/jumbo v2, "make-f32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object v1, v0

    const-string/jumbo v2, "f32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    move-object v1, v0

    const-string/jumbo v2, "f32vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object v1, v0

    const-string/jumbo v2, "f32vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    move-object v1, v0

    const-string/jumbo v2, "f32vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    move-object v1, v0

    const-string/jumbo v2, "f32vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    move-object v1, v0

    const-string/jumbo v2, "list->f32vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object v1, v0

    const-string/jumbo v2, "f64vector?"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    move-object v1, v0

    const-string/jumbo v2, "make-f64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    move-object v1, v0

    const-string/jumbo v2, "f64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    move-object v1, v0

    const-string/jumbo v2, "f64vector-length"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    move-object v1, v0

    const-string/jumbo v2, "f64vector-ref"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    move-object v1, v0

    const-string/jumbo v2, "f64vector-set!"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    move-object v1, v0

    const-string/jumbo v2, "f64vector->list"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    move-object v1, v0

    const-string/jumbo v2, "list->f64vector"

    const-string/jumbo v3, "kawa.lib.uniform"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    move-object v1, v0

    const-string/jumbo v2, "cut"

    const-string/jumbo v3, "gnu.kawa.slib.cut"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    move-object v1, v0

    const-string/jumbo v2, "cute"

    const-string/jumbo v3, "gnu.kawa.slib.cut"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object v1, v0

    const-string/jumbo v2, "cond-expand"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    move-object v1, v0

    const-string/jumbo v2, "%cond-expand"

    const-string/jumbo v3, "kawa.lib.syntax"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    move-object v1, v0

    const-string/jumbo v2, "*print-base*"

    const-string/jumbo v3, "gnu.kawa.functions.DisplayFormat"

    const-string/jumbo v4, "outBase"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object v1, v0

    const-string/jumbo v2, "*print-radix*"

    const-string/jumbo v3, "gnu.kawa.functions.DisplayFormat"

    const-string/jumbo v4, "outRadix"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    move-object v1, v0

    const-string/jumbo v2, "*print-right-margin*"

    const-string/jumbo v3, "gnu.text.PrettyWriter"

    const-string/jumbo v4, "lineLengthLoc"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    move-object v1, v0

    const-string/jumbo v2, "*print-miser-width*"

    const-string/jumbo v3, "gnu.text.PrettyWriter"

    const-string/jumbo v4, "miserWidthLoc"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object v1, v0

    const-string/jumbo v2, "html"

    const-string/jumbo v3, "gnu.kawa.xml.XmlNamespace"

    const-string/jumbo v4, "HTML"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    move-object v1, v0

    const-string/jumbo v2, "unit"

    const-string/jumbo v3, "kawa.standard.Scheme"

    const-string/jumbo v4, "unitNamespace"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    move-object v1, v0

    const-string/jumbo v2, "path"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "pathType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    move-object v1, v0

    const-string/jumbo v2, "filepath"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "filepathType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object v1, v0

    const-string/jumbo v2, "URI"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "URIType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    move-object v1, v0

    const-string/jumbo v2, "resolve-uri"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object v1, v0

    const-string/jumbo v2, "vector"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "vectorType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    move-object v1, v0

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "stringType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object v1, v0

    const-string/jumbo v2, "list"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "listType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object v1, v0

    const-string/jumbo v2, "regex"

    const-string/jumbo v3, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v4, "regexType"

    invoke-virtual {v1, v2, v3, v4}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    move-object v1, v0

    const-string/jumbo v2, "path?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    move-object v1, v0

    const-string/jumbo v2, "filepath?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    move-object v1, v0

    const-string/jumbo v2, "URI?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object v1, v0

    const-string/jumbo v2, "absolute-path?"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    move-object v1, v0

    const-string/jumbo v2, "path-scheme"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    move-object v1, v0

    const-string/jumbo v2, "path-authority"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    move-object v1, v0

    const-string/jumbo v2, "path-user-info"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    move-object v1, v0

    const-string/jumbo v2, "path-host"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    move-object v1, v0

    const-string/jumbo v2, "path-port"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    move-object v1, v0

    const-string/jumbo v2, "path-file"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    move-object v1, v0

    const-string/jumbo v2, "path-parent"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    move-object v1, v0

    const-string/jumbo v2, "path-directory"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    move-object v1, v0

    const-string/jumbo v2, "path-last"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    move-object v1, v0

    const-string/jumbo v2, "path-extension"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    move-object v1, v0

    const-string/jumbo v2, "path-fragment"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    move-object v1, v0

    const-string/jumbo v2, "path-query"

    const-string/jumbo v3, "kawa.lib.files"

    invoke-virtual {v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    sget-object v1, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v1}, Lgnu/mapping/SimpleEnvironment;->setLocked()V

    .line 841
    return-void
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 1448
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 1449
    return-void
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 1108
    .local v1, "t":Lgnu/bytecode/Type;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1109
    move-object v2, v1

    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    move-object v1, v2

    .line 1113
    :cond_0
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 1114
    move-object v2, v1

    move-object v0, v2

    .line 1118
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1112
    .end local v1    # "t":Lgnu/bytecode/Type;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "t":Lgnu/bytecode/Type;
    goto :goto_0

    .line 1115
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 1116
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 1117
    sget-object v2, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1118
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 1424
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "ident":Ljava/lang/String;
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0
.end method

.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 35

    .prologue
    .line 1146
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/Scheme;
    move-object/from16 v4, p1

    .local v4, "symbol":Lgnu/mapping/Symbol;
    move-object/from16 v5, p2

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v24

    move-object/from16 v6, v24

    .line 1147
    .local v6, "namespace":Lgnu/mapping/Namespace;
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v7, v24

    .line 1148
    .local v7, "local":Ljava/lang/String;
    move-object/from16 v24, v6

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/kawa/xml/XmlNamespace;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1149
    move-object/from16 v24, v6

    check-cast v24, Lgnu/kawa/xml/XmlNamespace;

    move-object/from16 v25, v7

    invoke-virtual/range {v24 .. v25}, Lgnu/kawa/xml/XmlNamespace;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    move-object/from16 v3, v24

    .line 1411
    .end local v3    # "this":Lkawa/standard/Scheme;
    :goto_0
    return-object v3

    .line 1150
    .restart local v3    # "this":Lkawa/standard/Scheme;
    :cond_0
    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual/range {v25 .. v25}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1152
    move-object/from16 v24, v7

    invoke-static/range {v24 .. v24}, Lgnu/math/Unit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v24

    move-object/from16 v8, v24

    .line 1153
    .local v8, "val":Lgnu/math/NamedUnit;
    move-object/from16 v24, v8

    if-eqz v24, :cond_1

    .line 1154
    move-object/from16 v24, v8

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    move-object/from16 v3, v24

    goto :goto_0

    .line 1156
    .end local v8    # "val":Lgnu/math/NamedUnit;
    :cond_1
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v8, v24

    .line 1157
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v9, v24

    .line 1158
    .local v9, "len":I
    move/from16 v24, v9

    if-nez v24, :cond_2

    .line 1159
    const/16 v24, 0x0

    move-object/from16 v3, v24

    goto :goto_0

    .line 1160
    :cond_2
    move/from16 v24, v9

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    move-object/from16 v24, v8

    move/from16 v25, v9

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1162
    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v10, v24

    .line 1163
    .local v10, "llen":I
    move/from16 v24, v10

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 1165
    move-object/from16 v24, v7

    const/16 v25, 0x0

    move/from16 v26, v10

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v11, v24

    .line 1166
    .local v11, "tlocal":Ljava/lang/String;
    move-object/from16 v24, v6

    move-object/from16 v25, v11

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v24

    move-object/from16 v12, v24

    .line 1167
    .local v12, "tsymbol":Lgnu/mapping/Symbol;
    move-object/from16 v24, v5

    move-object/from16 v25, v12

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v13, v24

    .line 1168
    .local v13, "texp":Lgnu/expr/Expression;
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1170
    move-object/from16 v24, v13

    check-cast v24, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v24

    move-object/from16 v14, v24

    .line 1171
    .local v14, "decl":Lgnu/expr/Declaration;
    move-object/from16 v24, v14

    if-eqz v24, :cond_3

    move-object/from16 v24, v14

    const-wide/32 v25, 0x10000

    invoke-virtual/range {v24 .. v26}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1172
    :cond_3
    const/16 v24, 0x0

    move-object/from16 v13, v24

    .line 1173
    .line 1176
    .end local v14    # "decl":Lgnu/expr/Declaration;
    :cond_4
    :goto_1
    move-object/from16 v24, v13

    if-eqz v24, :cond_6

    .line 1178
    new-instance v24, Lgnu/expr/LambdaExp;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object/from16 v14, v24

    .line 1179
    .local v14, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v24, v14

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 1180
    move-object/from16 v24, v14

    const/16 v25, 0x0

    check-cast v25, Ljava/lang/Object;

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1181
    .local v15, "param":Lgnu/expr/Declaration;
    move-object/from16 v24, v14

    new-instance v25, Lgnu/expr/ApplyExp;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    sget-object v27, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const/16 v30, 0x0

    new-instance v31, Lgnu/expr/ReferenceExp;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    move-object/from16 v33, v15

    invoke-direct/range {v32 .. v33}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v31, v29, v30

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const/16 v30, 0x1

    move-object/from16 v31, v13

    aput-object v31, v29, v30

    invoke-direct/range {v26 .. v28}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1184
    move-object/from16 v24, v14

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1174
    .end local v14    # "lexp":Lgnu/expr/LambdaExp;
    .end local v15    # "param":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 1175
    const/16 v24, 0x0

    move-object/from16 v13, v24

    goto :goto_1

    .line 1188
    .end local v10    # "llen":I
    .end local v11    # "tlocal":Ljava/lang/String;
    .end local v12    # "tsymbol":Lgnu/mapping/Symbol;
    .end local v13    # "texp":Lgnu/expr/Expression;
    :cond_6
    move-object/from16 v24, v8

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v10, v24

    .line 1191
    .local v10, "ch0":C
    move/from16 v24, v10

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    move/from16 v24, v10

    const/16 v25, 0x2b

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    move/from16 v24, v10

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    if-ltz v24, :cond_13

    .line 1198
    :cond_7
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 1199
    .local v11, "state":I
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 1200
    .local v12, "i":I
    :goto_2
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 1202
    move-object/from16 v24, v8

    move/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v13, v24

    .line 1203
    .local v13, "ch":C
    move/from16 v24, v13

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    if-ltz v24, :cond_a

    .line 1204
    move/from16 v24, v11

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    const/16 v24, 0x2

    :goto_3
    move/from16 v11, v24

    .line 1200
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1204
    :cond_8
    move/from16 v24, v11

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    const/16 v24, 0x4

    goto :goto_3

    :cond_9
    const/16 v24, 0x5

    goto :goto_3

    .line 1205
    :cond_a
    move/from16 v24, v13

    const/16 v25, 0x2b

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    move/from16 v24, v13

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    :cond_b
    move/from16 v24, v11

    if-nez v24, :cond_c

    .line 1206
    const/16 v24, 0x1

    move/from16 v11, v24

    goto :goto_4

    .line 1207
    :cond_c
    move/from16 v24, v13

    const/16 v25, 0x2e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move/from16 v24, v11

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 1208
    const/16 v24, 0x3

    move/from16 v11, v24

    goto :goto_4

    .line 1209
    :cond_d
    move/from16 v24, v13

    const/16 v25, 0x65

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    move/from16 v24, v13

    const/16 v25, 0x45

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    :cond_e
    move/from16 v24, v11

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    move/from16 v24, v11

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    :cond_f
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 1212
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v14, v24

    .line 1213
    .local v14, "j":I
    move-object/from16 v24, v8

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v15, v24

    .line 1214
    .local v15, "next":C
    move/from16 v24, v15

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    move/from16 v24, v15

    const/16 v25, 0x2b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    :cond_10
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v14

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 1215
    move-object/from16 v24, v8

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v15, v24

    .line 1216
    :cond_11
    move/from16 v24, v15

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    if-gez v24, :cond_14

    .line 1217
    .line 1225
    .end local v13    # "ch":C
    .end local v14    # "j":I
    .end local v15    # "next":C
    :cond_12
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    move/from16 v24, v11

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_13

    .line 1227
    new-instance v24, Lgnu/math/DFloNum;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    move-object/from16 v26, v8

    const/16 v27, 0x0

    move/from16 v28, v12

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, v24

    .line 1228
    .local v13, "num":Lgnu/math/DFloNum;
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 1229
    .local v14, "div":Z
    new-instance v24, Ljava/util/Vector;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    invoke-direct/range {v25 .. v25}, Ljava/util/Vector;-><init>()V

    move-object/from16 v15, v24

    .line 1230
    .local v15, "vec":Ljava/util/Vector;
    :goto_5
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_27

    .line 1232
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1233
    .local v16, "ch":C
    move/from16 v24, v16

    const/16 v25, 0x2a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1235
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 1339
    .end local v11    # "state":I
    .end local v12    # "i":I
    .end local v13    # "num":Lgnu/math/DFloNum;
    .end local v14    # "div":Z
    .end local v15    # "vec":Ljava/util/Vector;
    .end local v16    # "ch":C
    :cond_13
    :goto_6
    move/from16 v24, v9

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2b

    move/from16 v24, v10

    const/16 v25, 0x3c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    move-object/from16 v24, v8

    move/from16 v25, v9

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 1341
    move-object/from16 v24, v8

    const/16 v25, 0x1

    move/from16 v26, v9

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v8, v24

    .line 1342
    add-int/lit8 v9, v9, -0x2

    .line 1343
    const/16 v24, 0x1

    move/from16 v11, v24

    .line 1347
    .local v11, "sawAngle":Z
    :goto_7
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 1348
    .local v12, "rank":I
    :goto_8
    move/from16 v24, v9

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2c

    move-object/from16 v24, v8

    move/from16 v25, v9

    const/16 v26, 0x2

    add-int/lit8 v25, v25, -0x2

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x5b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    move-object/from16 v24, v8

    move/from16 v25, v9

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    .line 1350
    add-int/lit8 v9, v9, -0x2

    .line 1351
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1218
    .local v11, "state":I
    .local v12, "i":I
    .local v13, "ch":C
    .local v14, "j":I
    .local v15, "next":C
    :cond_14
    const/16 v24, 0x5

    move/from16 v11, v24

    .line 1219
    move/from16 v24, v14

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v12, v24

    goto/16 :goto_4

    .line 1236
    .local v13, "num":Lgnu/math/DFloNum;
    .local v14, "div":Z
    .local v15, "vec":Ljava/util/Vector;
    .restart local v16    # "ch":C
    :cond_15
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1244
    :cond_16
    :goto_9
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v17, v24

    .line 1248
    .local v17, "unitStart":I
    :goto_a
    move/from16 v24, v16

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isLetter(C)Z

    move-result v24

    if-nez v24, :cond_19

    .line 1250
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v18, v24

    .line 1251
    .local v18, "unitEnd":I
    move/from16 v24, v18

    move/from16 v25, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 1252
    goto/16 :goto_6

    .line 1238
    .end local v17    # "unitStart":I
    .end local v18    # "unitEnd":I
    :cond_17
    move/from16 v24, v16

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1240
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    move/from16 v24, v14

    if-eqz v24, :cond_18

    goto/16 :goto_6

    .line 1241
    :cond_18
    const/16 v24, 0x1

    move/from16 v14, v24

    .line 1242
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    goto :goto_9

    .line 1255
    .restart local v17    # "unitStart":I
    :cond_19
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1257
    move/from16 v24, v12

    move/from16 v18, v24

    .line 1258
    .restart local v18    # "unitEnd":I
    const/16 v24, 0x31

    move/from16 v16, v24

    .line 1263
    :cond_1a
    move-object/from16 v24, v15

    move-object/from16 v25, v8

    move/from16 v26, v17

    move/from16 v27, v18

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1264
    const/16 v24, 0x0

    move/from16 v19, v24

    .line 1265
    .local v19, "expRequired":Z
    move/from16 v24, v16

    const/16 v25, 0x5e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 1267
    const/16 v24, 0x1

    move/from16 v19, v24

    .line 1268
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    goto/16 :goto_6

    .line 1261
    .end local v18    # "unitEnd":I
    .end local v19    # "expRequired":Z
    :cond_1b
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    goto/16 :goto_a

    .line 1269
    .restart local v18    # "unitEnd":I
    .restart local v19    # "expRequired":Z
    :cond_1c
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1271
    :cond_1d
    move/from16 v24, v14

    move/from16 v20, v24

    .line 1272
    .local v20, "neg":Z
    move/from16 v24, v16

    const/16 v25, 0x2b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 1274
    const/16 v24, 0x1

    move/from16 v19, v24

    .line 1275
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    goto/16 :goto_6

    .line 1276
    :cond_1e
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1285
    :cond_1f
    :goto_b
    const/16 v24, 0x0

    move/from16 v21, v24

    .line 1286
    .local v21, "nexp":I
    const/16 v24, 0x0

    move/from16 v22, v24

    .line 1289
    .local v22, "exp":I
    :goto_c
    move/from16 v24, v16

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    move/from16 v23, v24

    .line 1290
    .local v23, "dig":I
    move/from16 v24, v23

    if-gtz v24, :cond_23

    .line 1292
    add-int/lit8 v12, v12, -0x1

    .line 1301
    :goto_d
    move/from16 v24, v21

    if-nez v24, :cond_25

    .line 1303
    const/16 v24, 0x1

    move/from16 v22, v24

    .line 1304
    move/from16 v24, v19

    if-eqz v24, :cond_25

    .line 1305
    goto/16 :goto_6

    .line 1278
    .end local v21    # "nexp":I
    .end local v22    # "exp":I
    .end local v23    # "dig":I
    :cond_20
    move/from16 v24, v16

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 1280
    const/16 v24, 0x1

    move/from16 v19, v24

    .line 1281
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    goto/16 :goto_6

    .line 1282
    :cond_21
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1283
    move/from16 v24, v20

    if-nez v24, :cond_22

    const/16 v24, 0x1

    :goto_e
    move/from16 v20, v24

    goto :goto_b

    :cond_22
    const/16 v24, 0x0

    goto :goto_e

    .line 1295
    .restart local v21    # "nexp":I
    .restart local v22    # "exp":I
    .restart local v23    # "dig":I
    :cond_23
    const/16 v24, 0xa

    move/from16 v25, v22

    mul-int v24, v24, v25

    move/from16 v25, v23

    add-int v24, v24, v25

    move/from16 v22, v24

    .line 1296
    add-int/lit8 v21, v21, 0x1

    .line 1297
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 1298
    goto :goto_d

    .line 1299
    :cond_24
    move-object/from16 v24, v8

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1300
    goto :goto_c

    .line 1307
    :cond_25
    move/from16 v24, v20

    if-eqz v24, :cond_26

    .line 1308
    move/from16 v24, v22

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v22, v24

    .line 1309
    :cond_26
    move-object/from16 v24, v15

    move/from16 v25, v22

    invoke-static/range {v25 .. v25}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1310
    goto/16 :goto_5

    .line 1311
    .end local v16    # "ch":C
    .end local v17    # "unitStart":I
    .end local v18    # "unitEnd":I
    .end local v19    # "expRequired":Z
    .end local v20    # "neg":Z
    .end local v21    # "nexp":I
    .end local v22    # "exp":I
    .end local v23    # "dig":I
    :cond_27
    move/from16 v24, v12

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1313
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    const/16 v25, 0x1

    shr-int/lit8 v24, v24, 0x1

    move/from16 v16, v24

    .line 1314
    .local v16, "nunits":I
    move/from16 v24, v16

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v17, v24

    .line 1315
    .local v17, "units":[Lgnu/expr/Expression;
    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_f
    move/from16 v24, v12

    move/from16 v25, v16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    .line 1317
    move-object/from16 v24, v15

    const/16 v25, 0x2

    move/from16 v26, v12

    mul-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v18, v24

    .line 1318
    .local v18, "uname":Ljava/lang/String;
    sget-object v24, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v24

    move-object/from16 v19, v24

    .line 1319
    .local v19, "usym":Lgnu/mapping/Symbol;
    move-object/from16 v24, v5

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v20, v24

    .line 1320
    .local v20, "uref":Lgnu/expr/Expression;
    move-object/from16 v24, v15

    const/16 v25, 0x2

    move/from16 v26, v12

    mul-int v25, v25, v26

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lgnu/math/IntNum;

    move-object/from16 v21, v24

    .line 1321
    .local v21, "uexp":Lgnu/math/IntNum;
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_28

    .line 1322
    new-instance v24, Lgnu/expr/ApplyExp;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    sget-object v26, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x0

    move-object/from16 v30, v20

    aput-object v30, v28, v29

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x1

    move-object/from16 v30, v21

    invoke-static/range {v30 .. v30}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-direct/range {v25 .. v27}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v20, v24

    .line 1324
    :cond_28
    move-object/from16 v24, v17

    move/from16 v25, v12

    move-object/from16 v26, v20

    aput-object v26, v24, v25

    .line 1315
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    .line 1327
    .end local v18    # "uname":Ljava/lang/String;
    .end local v19    # "usym":Lgnu/mapping/Symbol;
    .end local v20    # "uref":Lgnu/expr/Expression;
    .end local v21    # "uexp":Lgnu/math/IntNum;
    :cond_29
    move/from16 v24, v16

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a

    .line 1328
    move-object/from16 v24, v17

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v18, v24

    .line 1331
    .local v18, "unit":Lgnu/expr/Expression;
    :goto_10
    new-instance v24, Lgnu/expr/ApplyExp;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    sget-object v26, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x0

    move-object/from16 v30, v13

    invoke-static/range {v30 .. v30}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x1

    move-object/from16 v30, v18

    aput-object v30, v28, v29

    invoke-direct/range {v25 .. v27}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1330
    .end local v18    # "unit":Lgnu/expr/Expression;
    :cond_2a
    new-instance v24, Lgnu/expr/ApplyExp;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    sget-object v26, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    move-object/from16 v27, v17

    invoke-direct/range {v25 .. v27}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v24

    .restart local v18    # "unit":Lgnu/expr/Expression;
    goto :goto_10

    .line 1346
    .end local v11    # "state":I
    .end local v12    # "i":I
    .end local v13    # "num":Lgnu/math/DFloNum;
    .end local v14    # "div":Z
    .end local v15    # "vec":Ljava/util/Vector;
    .end local v16    # "nunits":I
    .end local v17    # "units":[Lgnu/expr/Expression;
    .end local v18    # "unit":Lgnu/expr/Expression;
    :cond_2b
    const/16 v24, 0x0

    move/from16 v11, v24

    .local v11, "sawAngle":Z
    goto/16 :goto_7

    .line 1354
    .local v12, "rank":I
    :cond_2c
    move-object/from16 v24, v8

    move-object/from16 v13, v24

    .line 1355
    .local v13, "cname":Ljava/lang/String;
    move/from16 v24, v12

    if-eqz v24, :cond_2d

    .line 1356
    move-object/from16 v24, v8

    const/16 v25, 0x0

    move/from16 v26, v9

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v13, v24

    .line 1360
    :cond_2d
    move-object/from16 v24, v13

    :try_start_0
    invoke-static/range {v24 .. v24}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1361
    .local v15, "type":Lgnu/bytecode/Type;
    move/from16 v24, v12

    if-lez v24, :cond_2f

    move/from16 v24, v11

    if-eqz v24, :cond_2e

    move-object/from16 v24, v15

    if-nez v24, :cond_2f

    .line 1363
    :cond_2e
    move-object/from16 v24, v6

    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v24

    move-object/from16 v16, v24

    .line 1364
    .local v16, "tsymbol":Lgnu/mapping/Symbol;
    move-object/from16 v24, v5

    move-object/from16 v25, v16

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v17, v24

    .line 1365
    .local v17, "texp":Lgnu/expr/Expression;
    move-object/from16 v24, v17

    move-object/from16 v25, v5

    invoke-static/range {v24 .. v25}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v17, v24

    .line 1366
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/ErrorExp;

    move/from16 v24, v0

    if-nez v24, :cond_2f

    .line 1367
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v24

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1369
    .end local v16    # "tsymbol":Lgnu/mapping/Symbol;
    .end local v17    # "texp":Lgnu/expr/Expression;
    :cond_2f
    move-object/from16 v24, v15

    if-eqz v24, :cond_31

    .line 1373
    :goto_11
    add-int/lit8 v12, v12, -0x1

    move/from16 v24, v12

    if-ltz v24, :cond_30

    .line 1374
    move-object/from16 v24, v15

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v24

    move-object/from16 v15, v24

    goto :goto_11

    .line 1375
    :cond_30
    move-object/from16 v24, v15

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1379
    :cond_31
    move-object/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/Type;->lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1380
    move-object/from16 v24, v15

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v24, v0

    if-eqz v24, :cond_32

    .line 1381
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v14, v24

    .line 1390
    .local v14, "clas":Ljava/lang/Class;
    :goto_12
    move-object/from16 v24, v14

    if-eqz v24, :cond_36

    .line 1392
    move/from16 v24, v12

    if-lez v24, :cond_35

    .line 1394
    move-object/from16 v24, v14

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1395
    :goto_13
    add-int/lit8 v12, v12, -0x1

    move/from16 v24, v12

    if-ltz v24, :cond_34

    .line 1396
    move-object/from16 v24, v15

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v24

    move-object/from16 v15, v24

    goto :goto_13

    .line 1384
    .end local v14    # "clas":Ljava/lang/Class;
    :cond_32
    move-object/from16 v24, v13

    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    if-gez v24, :cond_33

    .line 1385
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v13

    invoke-static/range {v25 .. v25}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v13, v24

    .line 1387
    :cond_33
    move-object/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v14, v24

    .restart local v14    # "clas":Ljava/lang/Class;
    goto :goto_12

    .line 1397
    :cond_34
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v14, v24

    .line 1399
    :cond_35
    move-object/from16 v24, v14

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1410
    .line 1411
    .end local v14    # "clas":Ljava/lang/Class;
    .end local v15    # "type":Lgnu/bytecode/Type;
    :cond_36
    :goto_14
    const/16 v24, 0x0

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1402
    :catch_0
    move-exception v24

    move-object/from16 v14, v24

    .line 1404
    .local v14, "ex":Ljava/lang/ClassNotFoundException;
    move-object/from16 v24, v8

    invoke-static/range {v24 .. v24}, Lgnu/bytecode/ArrayClassLoader;->getContextPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1405
    .local v15, "pack":Ljava/lang/Package;
    move-object/from16 v24, v15

    if-eqz v24, :cond_37

    .line 1406
    move-object/from16 v24, v15

    invoke-static/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1410
    :cond_37
    goto :goto_14

    .line 1408
    .end local v14    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v15    # "pack":Ljava/lang/Package;
    :catch_1
    move-exception v24

    move-object/from16 v14, v24

    goto :goto_14
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 10

    .prologue
    .line 1429
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    move-object v1, v3

    .line 1430
    .local v1, "tab":Lgnu/kawa/lispexpr/ReadTable;
    move-object v3, v1

    const/16 v4, 0x3a

    iput-char v4, v3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    .line 1431
    move-object v3, v1

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReaderDispatch;

    move-object v2, v3

    .line 1432
    .local v2, "dispatchTable":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v3, v2

    const/16 v4, 0x27

    new-instance v5, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string/jumbo v8, "syntax"

    invoke-virtual {v7, v8}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1433
    move-object v3, v2

    const/16 v4, 0x60

    new-instance v5, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string/jumbo v8, "quasisyntax"

    invoke-virtual {v7, v8}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1434
    move-object v3, v2

    const/16 v4, 0x2c

    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1435
    move-object v3, v1

    const-string/jumbo v4, "path"

    const-string/jumbo v5, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v6, "pathType"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    move-object v3, v1

    const-string/jumbo v4, "filepath"

    const-string/jumbo v5, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v6, "filepathType"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    move-object v3, v1

    const-string/jumbo v4, "URI"

    const-string/jumbo v5, "gnu.kawa.lispexpr.LangObjType"

    const-string/jumbo v6, "URIType"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    move-object v3, v1

    const-string/jumbo v4, "symbol"

    const-string/jumbo v5, "gnu.mapping.Symbol"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1439
    move-object v3, v1

    const-string/jumbo v4, "namespace"

    const-string/jumbo v5, "gnu.mapping.Namespace"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1440
    move-object v3, v1

    const-string/jumbo v4, "duration"

    const-string/jumbo v5, "kawa.lib.numbers"

    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    .line 1442
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    sget-object v7, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1085
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    .line 1086
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v3, v7

    .line 1088
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 1089
    .local v4, "s":Ljava/lang/String;
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Type;

    move-object v5, v7

    .line 1090
    .local v5, "t":Lgnu/bytecode/Type;
    sget-object v7, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1091
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    .line 1092
    .local v6, "it":Lgnu/bytecode/Type;
    move-object v7, v6

    move-object v8, v5

    if-eq v7, v8, :cond_0

    .line 1093
    sget-object v7, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    move-object v8, v6

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1094
    :cond_0
    goto :goto_0

    .line 1096
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "t":Lgnu/bytecode/Type;
    .end local v6    # "it":Lgnu/bytecode/Type;
    :cond_1
    sget-object v7, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 1097
    .local v2, "str":Ljava/lang/String;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 1098
    move-object v7, v2

    move-object v0, v7

    .line 1099
    .end local v0    # "this":Lkawa/standard/Scheme;
    :goto_1
    return-object v0

    .restart local v0    # "this":Lkawa/standard/Scheme;
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lgnu/kawa/lispexpr/LispLanguage;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 3

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move v1, p1

    .local v1, "readable":Z
    move v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0

    .restart local v0    # "this":Lkawa/standard/Scheme;
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    const-string/jumbo v1, "Scheme"

    move-object v0, v1

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 3

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    const/4 v2, 0x3

    move v0, v2

    .end local v0    # "this":Lkawa/standard/Scheme;
    return v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1047
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    move-object v3, v2

    invoke-static {v3}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    .line 1077
    .end local v0    # "this":Lkawa/standard/Scheme;
    :goto_0
    return-object v0

    .line 1049
    .restart local v0    # "this":Lkawa/standard/Scheme;
    :cond_0
    const-string/jumbo v3, "java.lang.String"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1050
    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object v0, v3

    goto :goto_0

    .line 1051
    :cond_1
    const-string/jumbo v3, "gnu.math.IntNum"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1052
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1053
    :cond_2
    const-string/jumbo v3, "gnu.math.DFloNum"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1054
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1055
    :cond_3
    const-string/jumbo v3, "gnu.math.RatNum"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1056
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1057
    :cond_4
    const-string/jumbo v3, "gnu.math.RealNum"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1058
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1059
    :cond_5
    const-string/jumbo v3, "gnu.math.Numeric"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1060
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1061
    :cond_6
    const-string/jumbo v3, "gnu.lists.FVector"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1062
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1063
    :cond_7
    const-string/jumbo v3, "gnu.lists.LList"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1064
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1065
    :cond_8
    const-string/jumbo v3, "gnu.text.Path"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1066
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto :goto_0

    .line 1067
    :cond_9
    const-string/jumbo v3, "gnu.text.URIPath"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1068
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto/16 :goto_0

    .line 1069
    :cond_a
    const-string/jumbo v3, "gnu.text.FilePath"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1070
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto/16 :goto_0

    .line 1071
    :cond_b
    const-string/jumbo v3, "java.lang.Class"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1072
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto/16 :goto_0

    .line 1073
    :cond_c
    const-string/jumbo v3, "gnu.bytecode.Type"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1074
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto/16 :goto_0

    .line 1075
    :cond_d
    const-string/jumbo v3, "gnu.bytecode.ClassType"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1076
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v3

    goto/16 :goto_0

    .line 1077
    :cond_e
    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Lkawa/standard/Scheme;
    move-object v1, p1

    .local v1, "func":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v3, v4

    .line 1417
    .local v3, "exps":[Lgnu/expr/Expression;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    .line 1418
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lgnu/expr/ReferenceExp;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .end local v0    # "this":Lkawa/standard/Scheme;
    return-object v0
.end method
