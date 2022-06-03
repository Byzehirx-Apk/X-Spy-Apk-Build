.class public Lgnu/xquery/lang/XQParser;
.super Lgnu/text/Lexer;
.source "XQParser.java"


# static fields
.field static final ARROW_TOKEN:I = 0x52

.field static final ATTRIBUTE_TOKEN:I = 0xfc

.field static final AXIS_ANCESTOR:I = 0x0

.field static final AXIS_ANCESTOR_OR_SELF:I = 0x1

.field static final AXIS_ATTRIBUTE:I = 0x2

.field static final AXIS_CHILD:I = 0x3

.field static final AXIS_DESCENDANT:I = 0x4

.field static final AXIS_DESCENDANT_OR_SELF:I = 0x5

.field static final AXIS_FOLLOWING:I = 0x6

.field static final AXIS_FOLLOWING_SIBLING:I = 0x7

.field static final AXIS_NAMESPACE:I = 0x8

.field static final AXIS_PARENT:I = 0x9

.field static final AXIS_PRECEDING:I = 0xa

.field static final AXIS_PRECEDING_SIBLING:I = 0xb

.field static final AXIS_SELF:I = 0xc

.field static final CASE_DOLLAR_TOKEN:I = 0xf7

.field static final COLON_COLON_TOKEN:I = 0x58

.field static final COLON_EQUAL_TOKEN:I = 0x4c

.field static final COMMENT_TOKEN:I = 0xfe

.field static final COUNT_OP_AXIS:I = 0xd

.field static final DECIMAL_TOKEN:C = '1'

.field static final DECLARE_BASE_URI_TOKEN:I = 0x42

.field static final DECLARE_BOUNDARY_SPACE_TOKEN:I = 0x53

.field static final DECLARE_CONSTRUCTION_TOKEN:I = 0x4b

.field static final DECLARE_COPY_NAMESPACES_TOKEN:I = 0x4c

.field static final DECLARE_FUNCTION_TOKEN:I = 0x50

.field static final DECLARE_NAMESPACE_TOKEN:I = 0x4e

.field static final DECLARE_OPTION_TOKEN:I = 0x6f

.field static final DECLARE_ORDERING_TOKEN:I = 0x55

.field static final DECLARE_VARIABLE_TOKEN:I = 0x56

.field static final DEFAULT_COLLATION_TOKEN:I = 0x47

.field static final DEFAULT_ELEMENT_TOKEN:I = 0x45

.field static final DEFAULT_FUNCTION_TOKEN:I = 0x4f

.field static final DEFAULT_ORDER_TOKEN:I = 0x48

.field static final DEFINE_QNAME_TOKEN:I = 0x57

.field static final DOCUMENT_TOKEN:I = 0x100

.field static final DOTDOT_TOKEN:I = 0x33

.field static final DOT_VARNAME:Lgnu/mapping/Symbol;

.field static final DOUBLE_TOKEN:C = '2'

.field static final ELEMENT_TOKEN:I = 0xfb

.field static final EOF_TOKEN:I = -0x1

.field static final EOL_TOKEN:I = 0xa

.field static final EVERY_DOLLAR_TOKEN:I = 0xf6

.field static final FNAME_TOKEN:I = 0x46

.field static final FOR_DOLLAR_TOKEN:I = 0xf3

.field static final IF_LPAREN_TOKEN:I = 0xf1

.field static final IMPORT_MODULE_TOKEN:I = 0x49

.field static final IMPORT_SCHEMA_TOKEN:I = 0x54

.field static final INTEGER_TOKEN:C = '0'

.field static final LAST_VARNAME:Lgnu/mapping/Symbol;

.field static final LET_DOLLAR_TOKEN:I = 0xf4

.field static final MODULE_NAMESPACE_TOKEN:I = 0x4d

.field static final NCNAME_COLON_TOKEN:I = 0x43

.field static final NCNAME_TOKEN:I = 0x41

.field static final OP_ADD:I = 0x19d

.field static final OP_AND:I = 0x191

.field static final OP_ATTRIBUTE:I = 0xec

.field static final OP_AXIS_FIRST:I = 0x64

.field static final OP_BASE:I = 0x190

.field static final OP_CASTABLE_AS:I = 0x1a8

.field static final OP_CAST_AS:I = 0x1a9

.field static final OP_COMMENT:I = 0xe8

.field static final OP_DIV:I = 0x1a0

.field static final OP_DOCUMENT:I = 0xea

.field static final OP_ELEMENT:I = 0xeb

.field static final OP_EMPTY_SEQUENCE:I = 0xee

.field static final OP_EQ:I = 0x1aa

.field static final OP_EQU:I = 0x192

.field static final OP_EXCEPT:I = 0x1a5

.field static final OP_GE:I = 0x1af

.field static final OP_GEQ:I = 0x197

.field static final OP_GRT:I = 0x195

.field static final OP_GRTGRT:I = 0x19a

.field static final OP_GT:I = 0x1ae

.field static final OP_IDIV:I = 0x1a1

.field static final OP_INSTANCEOF:I = 0x1a6

.field static final OP_INTERSECT:I = 0x1a4

.field static final OP_IS:I = 0x198

.field static final OP_ISNOT:I = 0x199

.field static final OP_ITEM:I = 0xed

.field static final OP_LE:I = 0x1ad

.field static final OP_LEQ:I = 0x196

.field static final OP_LSS:I = 0x194

.field static final OP_LSSLSS:I = 0x19b

.field static final OP_LT:I = 0x1ac

.field static final OP_MOD:I = 0x1a2

.field static final OP_MUL:I = 0x19f

.field static final OP_NE:I = 0x1ab

.field static final OP_NEQ:I = 0x193

.field static final OP_NODE:I = 0xe6

.field static final OP_OR:I = 0x190

.field static final OP_PI:I = 0xe9

.field static final OP_RANGE_TO:I = 0x19c

.field static final OP_SCHEMA_ATTRIBUTE:I = 0xef

.field static final OP_SCHEMA_ELEMENT:I = 0xf0

.field static final OP_SUB:I = 0x19e

.field static final OP_TEXT:I = 0xe7

.field static final OP_TREAT_AS:I = 0x1a7

.field static final OP_UNION:I = 0x1a3

.field static final OP_WHERE:I = 0xc4

.field static final ORDERED_LBRACE_TOKEN:I = 0xf9

.field static final PI_TOKEN:I = 0xff

.field static final POSITION_VARNAME:Lgnu/mapping/Symbol;

.field static final PRAGMA_START_TOKEN:I = 0xc5

.field static final QNAME_TOKEN:I = 0x51

.field static final SLASHSLASH_TOKEN:I = 0x44

.field static final SOME_DOLLAR_TOKEN:I = 0xf5

.field static final STRING_TOKEN:I = 0x22

.field static final TEXT_TOKEN:I = 0xfd

.field static final TYPESWITCH_LPAREN_TOKEN:I = 0xf2

.field static final UNORDERED_LBRACE_TOKEN:I = 0xfa

.field static final VALIDATE_LBRACE_TOKEN:I = 0xf8

.field static final XQUERY_VERSION_TOKEN:I = 0x59

.field public static final axisNames:[Ljava/lang/String;

.field static builtinNamespaces:Lgnu/xml/NamespaceBinding;

.field public static final castableAs:Lgnu/xquery/util/CastableAs;

.field public static final getExternalFunction:Lgnu/expr/QuoteExp;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field static final makeCDATA:Lgnu/expr/Expression;

.field public static makeChildAxisStep:Lgnu/expr/QuoteExp;

.field public static makeDescendantAxisStep:Lgnu/expr/QuoteExp;

.field public static makeText:Lgnu/expr/Expression;

.field static proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

.field public static final treatAs:Lgnu/kawa/functions/Convert;

.field public static warnHidePreviousDeclaration:Z

.field public static warnOldVersion:Z


# instance fields
.field baseURI:Lgnu/text/Path;

.field baseURIDeclarationSeen:Z

.field boundarySpaceDeclarationSeen:Z

.field boundarySpacePreserve:Z

.field commentCount:I

.field comp:Lgnu/expr/Compilation;

.field constructionModeDeclarationSeen:Z

.field constructionModeStrip:Z

.field constructorNamespaces:Lgnu/xml/NamespaceBinding;

.field copyNamespacesDeclarationSeen:Z

.field copyNamespacesMode:I

.field curColumn:I

.field curLine:I

.field curToken:I

.field curValue:Ljava/lang/Object;

.field defaultCollator:Lgnu/xquery/util/NamedCollator;

.field defaultElementNamespace:Ljava/lang/String;

.field defaultEmptyOrder:C

.field emptyOrderDeclarationSeen:Z

.field enclosedExpressionsSeen:I

.field errorIfComment:Ljava/lang/String;

.field flworDecls:[Lgnu/expr/Declaration;

.field flworDeclsCount:I

.field flworDeclsFirst:I

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field interpreter:Lgnu/xquery/lang/XQuery;

.field libraryModuleNamespace:Ljava/lang/String;

.field orderingModeSeen:Z

.field orderingModeUnordered:Z

.field parseContext:I

.field parseCount:I

.field prologNamespaces:Lgnu/xml/NamespaceBinding;

.field private saveToken:I

.field private saveValue:Ljava/lang/Object;

.field seenDeclaration:Z

.field seenLast:I

.field seenPosition:I

.field private warnedOldStyleKindTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 55
    const/4 v1, 0x1

    sput-boolean v1, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    .line 59
    const-string/jumbo v1, "$dot$"

    invoke-static {v1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    .line 62
    const-string/jumbo v1, "$position$"

    invoke-static {v1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    .line 65
    const-string/jumbo v1, "$last$"

    invoke-static {v1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    .line 67
    new-instance v1, Lgnu/kawa/reflect/InstanceOf;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v3

    const-string/jumbo v4, "instance"

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v1, Lgnu/xquery/lang/XQParser;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 69
    sget-object v1, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    sput-object v1, Lgnu/xquery/lang/XQParser;->castableAs:Lgnu/xquery/util/CastableAs;

    .line 70
    sget-object v1, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sput-object v1, Lgnu/xquery/lang/XQParser;->treatAs:Lgnu/kawa/functions/Convert;

    .line 1528
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v1, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    .line 1958
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "gnu.kawa.xml.ChildAxis"

    const-string/jumbo v4, "make"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1960
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "gnu.kawa.xml.DescendantAxis"

    const-string/jumbo v4, "make"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    .line 2262
    const-string/jumbo v1, "gnu.kawa.xml.MakeText"

    const-string/jumbo v2, "makeText"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    .line 2448
    const-string/jumbo v1, "gnu.kawa.xml.MakeCDATA"

    const-string/jumbo v2, "makeCDATA"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    .line 3654
    sget-object v1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    move-object v0, v1

    .line 3655
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "xml"

    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3656
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "xs"

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3657
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "xsi"

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema-instance"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3658
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "fn"

    const-string/jumbo v4, "http://www.w3.org/2005/xpath-functions"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3659
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "html"

    const-string/jumbo v4, "http://www.w3.org/1999/xhtml"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3660
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "kawa"

    const-string/jumbo v4, "http://kawa.gnu.org/"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3661
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "qexo"

    const-string/jumbo v4, "http://qexo.gnu.org/"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3662
    new-instance v1, Lgnu/xml/NamespaceBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "local"

    const-string/jumbo v4, "http://www.w3.org/2005/xquery-local-functions"

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v1

    .line 3663
    move-object v1, v0

    sput-object v1, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3721
    new-instance v1, Lgnu/expr/PrimProcedure;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "gnu.xquery.lang.XQuery"

    const-string/jumbo v4, "getExternal"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    .line 4275
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    .line 4278
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ancestor"

    aput-object v3, v1, v2

    .line 4279
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string/jumbo v3, "ancestor-or-self"

    aput-object v3, v1, v2

    .line 4280
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string/jumbo v3, "attribute"

    aput-object v3, v1, v2

    .line 4281
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string/jumbo v3, "child"

    aput-object v3, v1, v2

    .line 4282
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string/jumbo v3, "descendant"

    aput-object v3, v1, v2

    .line 4283
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string/jumbo v3, "descendant-or-self"

    aput-object v3, v1, v2

    .line 4284
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string/jumbo v3, "following"

    aput-object v3, v1, v2

    .line 4285
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string/jumbo v3, "following-sibling"

    aput-object v3, v1, v2

    .line 4286
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v3, "namespace"

    aput-object v3, v1, v2

    .line 4287
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string/jumbo v3, "parent"

    aput-object v3, v1, v2

    .line 4288
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string/jumbo v3, "preceding"

    aput-object v3, v1, v2

    .line 4289
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v2, 0xb

    const-string/jumbo v3, "preceding-sibling"

    aput-object v3, v1, v2

    .line 4290
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string/jumbo v3, "self"

    aput-object v3, v1, v2

    .line 4291
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V
    .locals 8

    .prologue
    .line 1220
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "interp":Lgnu/xquery/lang/XQuery;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 72
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 77
    move-object v5, v0

    const/16 v6, 0x4c

    iput-char v6, v5, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 80
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 158
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 166
    move-object v5, v0

    sget-object v6, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 3641
    move-object v5, v0

    const-string/jumbo v6, ""

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 3646
    move-object v5, v0

    sget-object v6, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1221
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    .line 1222
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1225
    sget-object v5, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    move-object v4, v5

    .line 1226
    .local v4, "ns":Lgnu/xml/NamespaceBinding;
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1227
    return-void
.end method

.method public static booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 2442
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    move-object v1, v3

    .line 2443
    .local v1, "args":[Lgnu/expr/Expression;
    const-string/jumbo v3, "gnu.xquery.util.BooleanValue"

    const-string/jumbo v4, "booleanValue"

    invoke-static {v3, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v2, v3

    .line 2445
    .local v2, "string":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "exp":Lgnu/expr/Expression;
    return-object v0
.end method

.method static castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;
    .locals 11

    .prologue
    .line 2552
    move-object v0, p0

    .local v0, "value":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "element":Z
    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    :goto_0
    move-object v2, v3

    .line 2554
    .local v2, "fdecl":Lgnu/expr/Declaration;
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "value":Lgnu/expr/Expression;
    return-object v0

    .line 2552
    .end local v2    # "fdecl":Lgnu/expr/Declaration;
    .restart local v0    # "value":Lgnu/expr/Expression;
    :cond_0
    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method static fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "path":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .line 100
    move-object v1, v0

    instance-of v1, v1, Lgnu/text/FilePath;

    if-eqz v1, :cond_0

    .line 101
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v1

    move-object v0, v1

    .line 102
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "path":Lgnu/text/Path;
    return-object v0
.end method

.method private lookingAt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "word0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "word1":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 899
    const/4 v6, 0x0

    move v0, v6

    .line 921
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return v0

    .line 900
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 901
    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 904
    .local v4, "len":I
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v5, v6

    .line 905
    .local v5, "ch":I
    move v6, v3

    move v7, v4

    if-ne v6, v7, :cond_4

    .line 907
    move v6, v5

    if-gez v6, :cond_1

    .line 908
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 909
    :cond_1
    move v6, v5

    int-to-char v6, v6

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 911
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 912
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 914
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 920
    :cond_3
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    move v7, v3

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lgnu/text/LineBufferedReader;->skip(I)I

    move-result v6

    .line 921
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 917
    :cond_4
    move v6, v5

    if-ltz v6, :cond_3

    move v6, v5

    move-object v7, v2

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5

    .line 918
    goto :goto_2

    .line 919
    :cond_5
    goto :goto_1
.end method

.method static makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "func":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "exp1":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "exp2":Lgnu/expr/Expression;
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v3, v4

    .line 1278
    .local v3, "args":[Lgnu/expr/Expression;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    .line 1279
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 1280
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .end local v0    # "func":Lgnu/expr/Expression;
    return-object v0
.end method

.method static makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "exp1":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "exp2":Lgnu/expr/Expression;
    const-string/jumbo v2, "gnu.kawa.functions.AppendValues"

    const-string/jumbo v3, "appendValues"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "exp1":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 4295
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "className":Ljava/lang/String;
    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 4303
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fieldName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lgnu/expr/ReferenceExp;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lgnu/expr/Declaration;->getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v0, v3

    .end local v0    # "className":Ljava/lang/String;
    return-object v0
.end method

.method static makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 1434
    move v0, p0

    .local v0, "attribute":Z
    move-object v1, p1

    .local v1, "qname":Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "tname":Lgnu/expr/Expression;
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v3, v6

    .line 1435
    .local v3, "name":[Lgnu/expr/Expression;
    move v6, v0

    if-eqz v6, :cond_0

    const-string/jumbo v6, "gnu.kawa.xml.AttributeType"

    :goto_0
    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v4, v6

    .line 1438
    .local v4, "nodeType":Lgnu/bytecode/ClassType;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    const-string/jumbo v9, "make"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v5, v6

    .line 1440
    .local v5, "elt":Lgnu/expr/ApplyExp;
    move-object v6, v5

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1441
    move-object v6, v2

    if-nez v6, :cond_1

    .line 1442
    move-object v6, v5

    move-object v0, v6

    .line 1446
    .end local v0    # "attribute":Z
    :goto_1
    return-object v0

    .line 1435
    .end local v4    # "nodeType":Lgnu/bytecode/ClassType;
    .end local v5    # "elt":Lgnu/expr/ApplyExp;
    .restart local v0    # "attribute":Z
    :cond_0
    const-string/jumbo v6, "gnu.kawa.xml.ElementType"

    goto :goto_0

    .line 1446
    .restart local v4    # "nodeType":Lgnu/bytecode/ClassType;
    .restart local v5    # "elt":Lgnu/expr/ApplyExp;
    :cond_1
    new-instance v6, Lgnu/expr/BeginExp;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v2

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_1
.end method

.method private parseSimpleKindType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1384
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v1

    .line 1385
    move-object v1, v0

    iget v1, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 1386
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v1

    .line 1389
    :goto_0
    return-void

    .line 1388
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "expected \')\'"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final priority(I)I
    .locals 2

    .prologue
    .line 1238
    move v0, p0

    .local v0, "opcode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 1270
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "opcode":I
    :goto_0
    return v0

    .line 1241
    .restart local v0    # "opcode":I
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 1243
    :pswitch_1
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 1250
    :pswitch_2
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 1252
    :pswitch_3
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 1254
    :pswitch_4
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 1256
    :pswitch_5
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 1258
    :pswitch_6
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 1260
    :pswitch_7
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 1262
    :pswitch_8
    const/16 v1, 0x9

    move v0, v1

    goto :goto_0

    .line 1264
    :pswitch_9
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 1266
    :pswitch_a
    const/16 v1, 0xb

    move v0, v1

    goto :goto_0

    .line 1268
    :pswitch_b
    const/16 v1, 0xc

    move v0, v1

    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setToken(II)I
    .locals 6

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "token":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 486
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 487
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 488
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return v0
.end method

.method private warnOldStyleKindTest()V
    .locals 4

    .prologue
    .line 1453
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    if-eqz v1, :cond_0

    .line 1454
    .line 1457
    :goto_0
    return-void

    .line 1455
    :cond_0
    move-object v1, v0

    const/16 v2, 0x77

    const-string/jumbo v3, "old-style KindTest - first one here"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 1456
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    .line 1457
    goto :goto_0
.end method


# virtual methods
.method public appendNamedEntity(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 743
    const/16 v3, 0x3f

    move v2, v3

    .line 744
    .local v2, "ch":C
    move-object v3, v1

    const-string/jumbo v4, "lt"

    if-ne v3, v4, :cond_0

    .line 745
    const/16 v3, 0x3c

    move v2, v3

    .line 756
    :goto_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 757
    return-void

    .line 746
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "gt"

    if-ne v3, v4, :cond_1

    .line 747
    const/16 v3, 0x3e

    move v2, v3

    goto :goto_0

    .line 748
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "amp"

    if-ne v3, v4, :cond_2

    .line 749
    const/16 v3, 0x26

    move v2, v3

    goto :goto_0

    .line 750
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "quot"

    if-ne v3, v4, :cond_3

    .line 751
    const/16 v3, 0x22

    move v2, v3

    goto :goto_0

    .line 752
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "apos"

    if-ne v3, v4, :cond_4

    .line 753
    const/16 v3, 0x27

    move v2, v3

    goto :goto_0

    .line 755
    :cond_4
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown enity reference: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move v3, p3

    .local v3, "inConstructor":Z
    const-string/jumbo v5, "xml"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 1200
    .local v4, "xmlPrefix":Z
    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1202
    move v5, v4

    if-eqz v5, :cond_0

    move v5, v3

    if-nez v5, :cond_1

    .line 1203
    :cond_0
    move-object v5, v0

    const/16 v6, 0x65

    const-string/jumbo v7, "namespace uri cannot be the same as the prefined xml namespace"

    const-string/jumbo v8, "XQST0070"

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_1
    :goto_0
    return-void

    .line 1206
    :cond_2
    move v5, v4

    if-nez v5, :cond_3

    const-string/jumbo v5, "xmlns"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1207
    :cond_3
    move-object v5, v0

    const/16 v6, 0x65

    const-string/jumbo v7, "namespace prefix cannot be \'xml\' or \'xmlns\'"

    const-string/jumbo v8, "XQST0070"

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method checkSeparator(C)V
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "ch":C
    move v2, v1

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    move-object v2, v0

    const/16 v3, 0x65

    const-string/jumbo v4, "missing separator"

    const-string/jumbo v5, "XPST0003"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method public declError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4359
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v2, :cond_0

    .line 4360
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .line 4368
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 4361
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 4364
    :goto_1
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 4365
    .line 4368
    :cond_1
    new-instance v2, Lgnu/expr/ErrorExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 4366
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v2

    goto :goto_1
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4410
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "XPST0003"

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 7

    .prologue
    .line 4353
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4354
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 4344
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "severity":C
    move-object/from16 v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "code":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    move-object v4, v6

    .line 4345
    .local v4, "messages":Lgnu/text/SourceMessages;
    new-instance v6, Lgnu/text/SourceError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object v11, v0

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    move-object v5, v6

    .line 4347
    .local v5, "err":Lgnu/text/SourceError;
    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4348
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4349
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4415
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "code":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    move-object v3, v5

    .line 4416
    .local v3, "messages":Lgnu/text/SourceMessages;
    new-instance v5, Lgnu/text/SourceError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/16 v7, 0x66

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    move-object v4, v5

    .line 4418
    .local v4, "err":Lgnu/text/SourceError;
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4419
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4420
    new-instance v5, Lgnu/text/SyntaxException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-direct {v6, v7}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v5
.end method

.method getAxis()I
    .locals 9

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    new-instance v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 929
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0xd

    move v2, v3

    .local v2, "i":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_1

    .line 930
    sget-object v3, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 931
    .line 932
    :cond_1
    move v3, v2

    if-ltz v3, :cond_2

    move v3, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 935
    :cond_2
    move-object v3, v0

    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown axis name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "XPST0003"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v3, 0x3

    move v2, v3

    .line 938
    :cond_3
    const/16 v3, 0x64

    move v4, v2

    add-int/2addr v3, v4

    int-to-char v3, v3

    move v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return v0
.end method

.method public getDelimited(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "delimiter":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->readDelimited(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected end-of-file looking for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method getRawToken()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v6

    move v1, v6

    .line 504
    .local v1, "next":I
    move v6, v1

    if-gez v6, :cond_1

    .line 505
    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    .line 726
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return v0

    .line 506
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_1
    move v6, v1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    move v6, v1

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    .line 508
    :cond_2
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->nesting:I

    if-gtz v6, :cond_0

    .line 509
    move-object v6, v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 511
    :cond_3
    move v6, v1

    const/16 v7, 0x28

    if-ne v6, v7, :cond_6

    .line 513
    move-object v6, v0

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 514
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_0

    .line 515
    :cond_4
    move-object v6, v0

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 516
    move-object v6, v0

    const/16 v7, 0xc5

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 518
    :cond_5
    move-object v6, v0

    const/16 v7, 0x28

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 520
    :cond_6
    move v6, v1

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_9

    .line 522
    move-object v6, v0

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 523
    move-object v6, v0

    const/16 v7, 0x7b

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 524
    :cond_7
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 525
    move v6, v1

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_8

    .line 528
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 529
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 530
    move-object v6, v0

    const/16 v7, 0x7b

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 532
    :cond_8
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto/16 :goto_0

    .line 534
    :cond_9
    move v6, v1

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    move v6, v1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    .line 535
    .line 537
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 538
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 539
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v7

    iput v7, v6, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 540
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 541
    .local v2, "ch":C
    move v6, v2

    sparse-switch v6, :sswitch_data_0

    .line 610
    move v6, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_23

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 613
    :cond_a
    move v6, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1b

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 616
    .local v4, "seenDot":Z
    :cond_b
    :goto_3
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 617
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 618
    move v6, v1

    if-gez v6, :cond_1c

    .line 619
    .line 629
    :goto_4
    move v6, v1

    const/16 v7, 0x65

    if-eq v6, v7, :cond_c

    move v6, v1

    const/16 v7, 0x45

    if-ne v6, v7, :cond_21

    .line 631
    :cond_c
    move-object v6, v0

    move v7, v1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 632
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 633
    move v6, v1

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_d

    move v6, v1

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_e

    .line 635
    :cond_d
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 636
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 638
    :cond_e
    const/4 v6, 0x0

    move v5, v6

    .line 641
    .local v5, "expDigits":I
    :goto_5
    move v6, v1

    if-gez v6, :cond_1f

    .line 642
    .line 654
    :goto_6
    move v6, v5

    if-nez v6, :cond_f

    .line 655
    move-object v6, v0

    const/16 v7, 0x65

    const-string/jumbo v8, "no digits following exponent"

    const-string/jumbo v9, "XPST0003"

    invoke-virtual {v6, v7, v8, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_f
    const/16 v6, 0x32

    move v2, v6

    .line 667
    .line 725
    .end local v4    # "seenDot":Z
    .end local v5    # "expDigits":I
    :cond_10
    :goto_7
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 726
    move v6, v2

    move v0, v6

    goto/16 :goto_1

    .line 545
    :sswitch_0
    goto :goto_7

    .line 547
    :sswitch_1
    move-object v6, v0

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 548
    const/16 v6, 0x4c

    move v2, v6

    goto :goto_7

    .line 549
    :cond_11
    move-object v6, v0

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 550
    const/16 v6, 0x58

    move v2, v6

    goto :goto_7

    .line 553
    :sswitch_2
    const/16 v6, 0x1a3

    move v2, v6

    .line 554
    goto :goto_7

    .line 556
    :sswitch_3
    const/16 v6, 0x19f

    move v2, v6

    .line 557
    goto :goto_7

    .line 559
    :sswitch_4
    const/16 v6, 0x19d

    move v2, v6

    .line 560
    goto :goto_7

    .line 562
    :sswitch_5
    const/16 v6, 0x19e

    move v2, v6

    .line 563
    goto :goto_7

    .line 565
    :sswitch_6
    move-object v6, v0

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 566
    const/16 v6, 0x193

    move v2, v6

    goto :goto_7

    .line 569
    :sswitch_7
    move-object v6, v0

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 570
    const/16 v6, 0x44

    move v2, v6

    goto :goto_7

    .line 573
    :sswitch_8
    move-object v6, v0

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 574
    const/16 v6, 0x52

    move v2, v6

    .line 575
    :cond_12
    const/16 v6, 0x192

    move v2, v6

    .line 576
    goto :goto_7

    .line 578
    :sswitch_9
    move-object v6, v0

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v6, 0x197

    :goto_8
    move v2, v6

    .line 580
    goto :goto_7

    .line 578
    :cond_13
    move-object v6, v0

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v6, 0x19a

    goto :goto_8

    :cond_14
    const/16 v6, 0x195

    goto :goto_8

    .line 582
    :sswitch_a
    move-object v6, v0

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v6, 0x196

    :goto_9
    move v2, v6

    .line 584
    goto/16 :goto_7

    .line 582
    :cond_15
    move-object v6, v0

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_16

    const/16 v6, 0x19b

    goto :goto_9

    :cond_16
    const/16 v6, 0x194

    goto :goto_9

    .line 586
    :sswitch_b
    move-object v6, v0

    move v7, v1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v6

    move v3, v6

    .line 589
    .local v3, "saveReadState":C
    :goto_a
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v6

    move v1, v6

    .line 590
    move v6, v1

    if-gez v6, :cond_17

    .line 591
    move-object v6, v0

    const-string/jumbo v7, "unexpected end-of-file in string starting here"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 592
    :cond_17
    move v6, v1

    const/16 v7, 0x26

    if-ne v6, v7, :cond_18

    .line 594
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    .line 595
    goto :goto_a

    .line 597
    :cond_18
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_1a

    .line 599
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v6

    move v1, v6

    .line 600
    move v6, v2

    move v7, v1

    if-eq v6, v7, :cond_19

    .line 601
    .line 606
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 607
    const/16 v6, 0x22

    move v2, v6

    .line 608
    goto/16 :goto_7

    .line 602
    :cond_19
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 604
    :cond_1a
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_a

    .line 613
    .end local v3    # "saveReadState":C
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 620
    .restart local v4    # "seenDot":Z
    :cond_1c
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 621
    move v6, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1e

    .line 623
    move v6, v4

    if-eqz v6, :cond_1d

    goto/16 :goto_4

    .line 624
    :cond_1d
    const/4 v6, 0x1

    move v4, v6

    goto/16 :goto_3

    .line 626
    :cond_1e
    move v6, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_b

    .line 627
    goto/16 :goto_4

    .line 643
    .restart local v5    # "expDigits":I
    :cond_1f
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 644
    move v6, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_20

    .line 646
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 647
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 648
    goto/16 :goto_6

    .line 650
    :cond_20
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 651
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 652
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 660
    .end local v5    # "expDigits":I
    :cond_21
    move v6, v4

    if-eqz v6, :cond_22

    const/16 v6, 0x31

    :goto_b
    move v2, v6

    .line 661
    move v6, v1

    if-ltz v6, :cond_10

    .line 663
    move-object v6, v0

    move v7, v1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 664
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_7

    .line 660
    :cond_22
    const/16 v6, 0x30

    goto :goto_b

    .line 668
    .end local v4    # "seenDot":Z
    :cond_23
    move v6, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_24

    .line 670
    move-object v6, v0

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 671
    const/16 v6, 0x33

    move v2, v6

    goto/16 :goto_7

    .line 674
    :cond_24
    move v6, v2

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 678
    :cond_25
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 679
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 680
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 681
    move v6, v2

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 682
    .line 684
    move v6, v1

    if-gez v6, :cond_26

    .line 685
    const/16 v6, 0x41

    move v2, v6

    goto/16 :goto_7

    .line 688
    :cond_26
    move v6, v1

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_27

    .line 689
    const/16 v6, 0x41

    move v2, v6

    .line 717
    :goto_c
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_7

    .line 692
    :cond_27
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 693
    move v6, v1

    if-gez v6, :cond_28

    .line 694
    move-object v6, v0

    const-string/jumbo v7, "unexpected end-of-file after NAME \':\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 695
    :cond_28
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 696
    move v6, v2

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 698
    move-object v6, v0

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 701
    :cond_29
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 702
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 703
    move v6, v1

    int-to-char v6, v6

    move v2, v6

    .line 704
    move v6, v2

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_29

    .line 705
    .line 707
    const/16 v6, 0x51

    move v2, v6

    goto :goto_c

    .line 709
    :cond_2a
    move v6, v2

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2b

    .line 711
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 712
    const/16 v6, 0x41

    move v2, v6

    goto :goto_c

    .line 715
    :cond_2b
    const/16 v6, 0x43

    move v2, v6

    goto :goto_c

    .line 720
    :cond_2c
    move v6, v2

    const/16 v7, 0x20

    if-lt v6, v7, :cond_2d

    move v6, v2

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_2d

    .line 721
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto/16 :goto_7

    .line 723
    :cond_2d
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid character \'\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto/16 :goto_7

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_6
        0x22 -> :sswitch_b
        0x24 -> :sswitch_0
        0x27 -> :sswitch_b
        0x29 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2b -> :sswitch_4
        0x2c -> :sswitch_0
        0x2d -> :sswitch_5
        0x2f -> :sswitch_7
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3c -> :sswitch_a
        0x3d -> :sswitch_8
        0x3e -> :sswitch_9
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x7c -> :sswitch_2
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public getStaticBaseUri()Ljava/lang/String;
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    move-object v1, v5

    .line 108
    .local v1, "path":Lgnu/text/Path;
    move-object v5, v1

    if-nez v5, :cond_4

    .line 110
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    move-object v2, v5

    .line 111
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v5, v2

    const-string/jumbo v6, ""

    const-string/jumbo v7, "base-uri"

    invoke-static {v6, v7}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 112
    .local v3, "value":Ljava/lang/Object;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 114
    move-object v5, v3

    instance-of v5, v5, Lgnu/text/Path;

    if-eqz v5, :cond_5

    .line 115
    move-object v5, v1

    move-object v1, v5

    .line 121
    :cond_0
    :goto_0
    move-object v5, v1

    if-nez v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v4, v6

    .local v4, "port":Lgnu/text/LineBufferedReader;
    if-eqz v5, :cond_2

    .line 123
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v5

    move-object v1, v5

    .line 124
    move-object v5, v1

    instance-of v5, v5, Lgnu/text/FilePath;

    if-eqz v5, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/text/Path;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Lgnu/mapping/TtyInPort;

    if-nez v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Lgnu/mapping/CharArrayInPort;

    if-eqz v5, :cond_2

    .line 128
    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    .line 131
    .end local v4    # "port":Lgnu/text/LineBufferedReader;
    :cond_2
    move-object v5, v1

    if-nez v5, :cond_3

    .line 132
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v5

    move-object v1, v5

    .line 134
    :cond_3
    move-object v5, v1

    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v5

    move-object v1, v5

    .line 135
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 138
    .end local v2    # "env":Lgnu/mapping/Environment;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 117
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v2    # "env":Lgnu/mapping/Environment;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v5

    move-object v1, v5

    goto :goto_0
.end method

.method public handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4273
    return-void
.end method

.method makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "op":I
    move-object v2, p2

    .local v2, "exp1":Lgnu/expr/Expression;
    move-object v3, p3

    .local v3, "exp2":Lgnu/expr/Expression;
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 1376
    :pswitch_0
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unimplemented binary op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 1378
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 1297
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :pswitch_1
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "add"

    const-string/jumbo v7, "+"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1378
    .local v4, "func":Lgnu/expr/Expression;
    :goto_1
    move-object v5, v4

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1300
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_2
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "sub"

    const-string/jumbo v7, "-"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1301
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1303
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_3
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "mul"

    const-string/jumbo v7, "*"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1304
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1306
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_4
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "div"

    const-string/jumbo v7, "div"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1307
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1309
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_5
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "idiv"

    const-string/jumbo v7, "idiv"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1310
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1312
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_6
    const-string/jumbo v5, "gnu.xquery.util.ArithOp"

    const-string/jumbo v6, "mod"

    const-string/jumbo v7, "mod"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1313
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1315
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_7
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valEq"

    const-string/jumbo v7, "eq"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1316
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1318
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_8
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valNe"

    const-string/jumbo v7, "ne"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1319
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1321
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_9
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valLt"

    const-string/jumbo v7, "lt"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1322
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_1

    .line 1324
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_a
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valLe"

    const-string/jumbo v7, "le"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1325
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1327
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_b
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valGt"

    const-string/jumbo v7, "gt"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1328
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1330
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_c
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "valGe"

    const-string/jumbo v7, "ge"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1331
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1333
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_d
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "="

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1334
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1336
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_e
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "!="

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1337
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1339
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_f
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "<"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1340
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1342
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_10
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, "<="

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1343
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1345
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_11
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, ">"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1346
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1348
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_12
    const-string/jumbo v5, "gnu.xquery.util.Compare"

    const-string/jumbo v6, ">="

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1349
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1351
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_13
    const-string/jumbo v5, "gnu.kawa.xml.NodeCompare"

    const-string/jumbo v6, "$Eq"

    const-string/jumbo v7, "is"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1352
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1354
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_14
    const-string/jumbo v5, "gnu.kawa.xml.NodeCompare"

    const-string/jumbo v6, "$Ne"

    const-string/jumbo v7, "isnot"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1355
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1357
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_15
    const-string/jumbo v5, "gnu.kawa.xml.NodeCompare"

    const-string/jumbo v6, "$Gr"

    const-string/jumbo v7, ">>"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1358
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1360
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_16
    const-string/jumbo v5, "gnu.kawa.xml.NodeCompare"

    const-string/jumbo v6, "$Ls"

    const-string/jumbo v7, "<<"

    invoke-static {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1361
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1363
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_17
    const-string/jumbo v5, "gnu.xquery.util.IntegerRange"

    const-string/jumbo v6, "integerRange"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1364
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1366
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_18
    const-string/jumbo v5, "gnu.kawa.xml.UnionNodes"

    const-string/jumbo v6, "unionNodes"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1367
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1369
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_19
    const-string/jumbo v5, "gnu.kawa.xml.IntersectNodes"

    const-string/jumbo v6, "intersectNodes"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1371
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1373
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_1a
    const-string/jumbo v5, "gnu.kawa.xml.IntersectNodes"

    const-string/jumbo v6, "exceptNodes"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 1374
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1294
    :pswitch_data_0
    .packed-switch 0x192
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public mark()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    invoke-super {v1}, Lgnu/text/Lexer;->mark()V

    .line 471
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    iput v2, v1, Lgnu/xquery/lang/XQParser;->saveToken:I

    .line 472
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 3159
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "word":Ljava/lang/String;
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x41

    if-eq v6, v7, :cond_0

    .line 3160
    const/4 v6, 0x0

    move v0, v6

    .line 3171
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return v0

    .line 3161
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 3162
    .local v2, "len":I
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v7, v2

    if-eq v6, v7, :cond_1

    .line 3163
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 3164
    :cond_1
    move v6, v2

    move v3, v6

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-ltz v6, :cond_3

    .line 3166
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 3167
    .local v4, "cs":C
    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move v7, v3

    aget-char v6, v6, v7

    move v5, v6

    .line 3168
    .local v5, "cb":C
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_2

    .line 3169
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 3170
    :cond_2
    goto :goto_1

    .line 3171
    .end local v4    # "cs":C
    .end local v5    # "cb":C
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "word1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "word2":Ljava/lang/String;
    move v3, p3

    .local v3, "force":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->mark()V

    .line 765
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 766
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 769
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 770
    const/4 v4, 0x1

    move v0, v4

    .line 780
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return v0

    .line 772
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 773
    move v4, v3

    if-eqz v4, :cond_1

    .line 775
    move-object v4, v0

    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' must be followed by \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "XPST0003"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 780
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public maybeSetLine(Lgnu/expr/Declaration;II)V
    .locals 8

    .prologue
    .line 4442
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 4443
    .local v4, "file":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 4445
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setFile(Ljava/lang/String;)V

    .line 4446
    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setLine(II)V

    .line 4448
    :cond_0
    return-void
.end method

.method public maybeSetLine(Lgnu/expr/Expression;II)V
    .locals 8

    .prologue
    .line 4431
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 4432
    .local v4, "file":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-nez v5, :cond_0

    .line 4435
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 4436
    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->setLine(II)V

    .line 4438
    :cond_0
    return-void
.end method

.method protected namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;
    .locals 12

    .prologue
    .line 3668
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "function":Z
    move-object v7, v1

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v3, v7

    .line 3669
    .local v3, "colon":I
    move v7, v3

    if-ltz v7, :cond_2

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v4, v7

    .line 3672
    .local v4, "prefix":Ljava/lang/String;
    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v7, v8, v9}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 3675
    .local v5, "uri":Ljava/lang/String;
    move-object v7, v5

    if-nez v7, :cond_1

    .line 3677
    move v7, v3

    if-gez v7, :cond_4

    .line 3678
    const-string/jumbo v7, ""

    move-object v5, v7

    .line 3691
    :cond_0
    :goto_1
    move-object v7, v5

    if-nez v7, :cond_1

    .line 3693
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v7

    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown namespace prefix \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "XPST0081"

    invoke-virtual {v7, v8, v9, v10}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3696
    const-string/jumbo v7, "(unknown namespace)"

    move-object v5, v7

    .line 3699
    :cond_1
    move v7, v3

    if-gez v7, :cond_5

    move-object v7, v1

    :goto_2
    move-object v6, v7

    .line 3700
    .local v6, "local":Ljava/lang/String;
    move-object v7, v5

    move-object v8, v6

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 3669
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "local":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_2
    move v7, v2

    if-eqz v7, :cond_3

    const-string/jumbo v7, "(functions)"

    goto :goto_0

    :cond_3
    sget-object v7, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    goto :goto_0

    .line 3679
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3683
    move-object v7, v4

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 3684
    .local v6, "cl":Ljava/lang/Class;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v5, v7

    .line 3689
    goto :goto_1

    .line 3686
    .end local v6    # "cl":Ljava/lang/Class;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 3688
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_1

    .line 3699
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_5
    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3730
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/xquery/lang/XQParser;
    move-object/from16 v4, p1

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    .line 3731
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v33

    move/from16 v5, v33

    .line 3732
    .local v5, "ch":I
    move/from16 v33, v5

    if-gez v33, :cond_0

    .line 3733
    const/16 v33, 0x0

    move-object/from16 v3, v33

    .line 4267
    .end local v3    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v3

    .line 3734
    .restart local v3    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object/from16 v33, v3

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->parseCount:I

    move/from16 v34, v0

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    .line 3735
    move-object/from16 v33, v3

    move/from16 v34, v5

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3736
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v6, v33

    .line 3737
    .local v6, "startLine":I
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v7, v33

    .line 3740
    .local v7, "startColumn":I
    move/from16 v33, v5

    const/16 v34, 0x23

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    move/from16 v33, v6

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    move/from16 v33, v7

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 3742
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v33

    .line 3743
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v33

    move/from16 v40, v33

    move/from16 v33, v40

    move/from16 v34, v40

    move/from16 v5, v34

    const/16 v34, 0x21

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v33

    move/from16 v40, v33

    move/from16 v33, v40

    move/from16 v34, v40

    move/from16 v5, v34

    const/16 v34, 0x2f

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    .line 3744
    :cond_1
    move-object/from16 v33, v3

    const-string/jumbo v34, "\'#\' is only allowed in initial \'#!/PROGRAM\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3745
    :cond_2
    :goto_1
    move/from16 v33, v5

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    move/from16 v33, v5

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    move/from16 v33, v5

    if-ltz v33, :cond_3

    .line 3746
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v33

    move/from16 v5, v33

    goto :goto_1

    .line 3749
    :cond_3
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 3750
    const/16 v33, 0x0

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3751
    :cond_4
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v33

    .line 3753
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    const-string/jumbo v33, "namespace"

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 3756
    sget-boolean v33, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v33, :cond_5

    .line 3757
    move-object/from16 v33, v3

    const/16 v34, 0x77

    const-string/jumbo v35, "use \'declare namespace\' instead of \'namespace\'"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3758
    :cond_5
    move-object/from16 v33, v3

    const/16 v34, 0x4e

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3766
    :cond_6
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_0

    .line 4261
    move-object/from16 v33, v3

    const/16 v34, -0x1

    const/16 v35, 0x1

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v15, v33

    .line 4262
    .local v15, "exp":Lgnu/expr/Expression;
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 4263
    move-object/from16 v33, v3

    const/16 v34, 0xa

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4264
    :cond_7
    move-object/from16 v33, v3

    move-object/from16 v34, v15

    move/from16 v35, v6

    move/from16 v36, v7

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 4265
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    .line 4266
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "query body in a library module"

    const-string/jumbo v36, "XPST0003"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4267
    :cond_8
    move-object/from16 v33, v15

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3769
    .end local v15    # "exp":Lgnu/expr/Expression;
    :sswitch_0
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v8, v33

    .line 3770
    .local v8, "declLine":I
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v9, v33

    .line 3771
    .local v9, "declColumn":I
    move-object/from16 v33, v3

    const-string/jumbo v34, "unexpected end-of-file after \'define QName\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v33

    move/from16 v10, v33

    .line 3772
    .local v10, "next":I
    move/from16 v33, v10

    const/16 v34, 0x28

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 3774
    move-object/from16 v33, v3

    const-string/jumbo v34, "\'missing \'function\' after \'define\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 3775
    move-object/from16 v33, v3

    const/16 v34, 0x41

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3776
    move-object/from16 v33, v3

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3779
    :cond_9
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing keyword after \'define\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3782
    .end local v8    # "declLine":I
    .end local v9    # "declColumn":I
    .end local v10    # "next":I
    :sswitch_1
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v8, v33

    .line 3783
    .restart local v8    # "declLine":I
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v9, v33

    .line 3784
    .restart local v9    # "declColumn":I
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3785
    move-object/from16 v33, v3

    const-string/jumbo v34, "unexpected end-of-file after \'define function\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v33

    .line 3786
    move-object/from16 v33, v3

    const/16 v34, 0x64

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v33

    move/from16 v16, v33

    .line 3787
    .local v16, "save":C
    move-object/from16 v33, v3

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v15, v33

    .line 3788
    .restart local v15    # "exp":Lgnu/expr/Expression;
    move-object/from16 v33, v3

    move/from16 v34, v16

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3789
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3790
    move-object/from16 v33, v3

    move-object/from16 v34, v15

    move/from16 v35, v6

    move/from16 v36, v7

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3791
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 3792
    move-object/from16 v33, v15

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3795
    .end local v8    # "declLine":I
    .end local v9    # "declColumn":I
    .end local v15    # "exp":Lgnu/expr/Expression;
    .end local v16    # "save":C
    :sswitch_2
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3796
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v11, v33

    .line 3797
    .local v11, "decl":Lgnu/expr/Declaration;
    move-object/from16 v33, v11

    if-nez v33, :cond_a

    .line 3798
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing Variable"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3799
    :cond_a
    move-object/from16 v33, v11

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v17, v33

    .line 3800
    .local v17, "name":Ljava/lang/Object;
    move-object/from16 v33, v17

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 3802
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v33

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3803
    move-object/from16 v33, v11

    move-object/from16 v34, v3

    move-object/from16 v35, v17

    check-cast v35, Ljava/lang/String;

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 3805
    :cond_b
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 3807
    move-object/from16 v33, v11

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lgnu/mapping/Symbol;

    invoke-virtual/range {v33 .. v33}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v13, v33

    .line 3808
    .local v13, "uri":Ljava/lang/String;
    move-object/from16 v33, v13

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_d

    const-string/jumbo v33, "http://www.w3.org/2005/xquery-local-functions"

    move-object/from16 v34, v13

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 3810
    :cond_c
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "variable not in namespace of library module"

    const-string/jumbo v36, "XQST0048"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3813
    .end local v13    # "uri":Ljava/lang/String;
    :cond_d
    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v33

    move-object/from16 v34, v11

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3814
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3815
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v18, v33

    .line 3816
    .local v18, "type":Lgnu/expr/Expression;
    move-object/from16 v33, v11

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3818
    move-object/from16 v33, v11

    const-wide/16 v34, 0x4000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3819
    const/16 v33, 0x0

    move-object/from16 v19, v33

    .line 3820
    .local v19, "init":Lgnu/expr/Expression;
    const/16 v33, 0x0

    move/from16 v20, v33

    .line 3821
    .local v20, "sawEq":Z
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x4c

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    .line 3823
    :cond_e
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 3824
    move-object/from16 v33, v3

    const-string/jumbo v34, "declare variable contains \'=\' instead of \':=\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3825
    :cond_f
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3826
    const/16 v33, 0x1

    move/from16 v20, v33

    .line 3828
    :cond_10
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x7b

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 3830
    move-object/from16 v33, v3

    const-string/jumbo v34, "obsolete \'{\' in variable declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 3831
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v19, v33

    .line 3832
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3854
    :cond_11
    :goto_2
    move-object/from16 v33, v18

    if-eqz v33, :cond_12

    .line 3855
    move-object/from16 v33, v19

    move-object/from16 v34, v18

    invoke-static/range {v33 .. v34}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v33

    move-object/from16 v19, v33

    .line 3856
    :cond_12
    move-object/from16 v33, v11

    move-object/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3857
    move-object/from16 v33, v11

    move-object/from16 v34, v19

    invoke-static/range {v33 .. v34}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v33

    move-object/from16 v15, v33

    .line 3858
    .restart local v15    # "exp":Lgnu/expr/Expression;
    move-object/from16 v33, v3

    move-object/from16 v34, v15

    move/from16 v35, v6

    move/from16 v36, v7

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3859
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 3860
    move-object/from16 v33, v15

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3834
    .end local v15    # "exp":Lgnu/expr/Expression;
    :cond_13
    move-object/from16 v33, v3

    const-string/jumbo v34, "external"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 3836
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x0

    new-instance v36, Lgnu/expr/QuoteExp;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x1

    move-object/from16 v36, v18

    if-nez v36, :cond_14

    sget-object v36, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    :goto_3
    aput-object v36, v34, v35

    move-object/from16 v21, v33

    .line 3841
    .local v21, "args":[Lgnu/expr/Expression;
    new-instance v33, Lgnu/expr/ApplyExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    sget-object v35, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    move-object/from16 v36, v21

    invoke-direct/range {v34 .. v36}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v19, v33

    .line 3842
    move-object/from16 v33, v3

    move-object/from16 v34, v19

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3843
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3844
    goto/16 :goto_2

    .line 3836
    .end local v21    # "args":[Lgnu/expr/Expression;
    :cond_14
    move-object/from16 v36, v18

    goto :goto_3

    .line 3847
    :cond_15
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v19, v33

    .line 3848
    const/16 v33, 0x0

    move-object/from16 v21, v33

    .line 3849
    .local v21, "err":Lgnu/expr/Expression;
    move/from16 v33, v20

    if-eqz v33, :cond_16

    move-object/from16 v33, v19

    if-nez v33, :cond_17

    .line 3850
    :cond_16
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected \':= init\' or \'external\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v21, v33

    .line 3851
    :cond_17
    move-object/from16 v33, v19

    if-nez v33, :cond_11

    .line 3852
    move-object/from16 v33, v21

    move-object/from16 v19, v33

    goto/16 :goto_2

    .line 3864
    .end local v11    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "name":Ljava/lang/Object;
    .end local v18    # "type":Lgnu/expr/Expression;
    .end local v19    # "init":Lgnu/expr/Expression;
    .end local v20    # "sawEq":Z
    .end local v21    # "err":Lgnu/expr/Expression;
    :sswitch_3
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    move/from16 v21, v33

    .line 3865
    .local v21, "command":I
    move/from16 v33, v21

    const/16 v34, 0x4d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_19

    .line 3867
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "duplicate module declaration"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3870
    :cond_18
    :goto_4
    move-object/from16 v33, v3

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->nesting:I

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    const/16 v34, 0x1

    :goto_5
    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v33

    move/from16 v10, v33

    .line 3871
    .restart local v10    # "next":I
    move/from16 v33, v10

    if-ltz v33, :cond_22

    .line 3873
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 3874
    move/from16 v33, v10

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 3876
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3877
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1b

    .line 3878
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing namespace prefix"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3868
    .end local v10    # "next":I
    :cond_19
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    move/from16 v33, v0

    if-eqz v33, :cond_18

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_18

    .line 3869
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "namespace declared after function/variable/option"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_4

    .line 3870
    :cond_1a
    const/16 v34, 0x0

    goto :goto_5

    .line 3879
    .restart local v10    # "next":I
    :cond_1b
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v12, v33

    .line 3880
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3881
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1c

    .line 3882
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing \'=\' in namespace declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3883
    :cond_1c
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3884
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d

    .line 3885
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing uri in namespace declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3886
    :cond_1d
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v13, v33

    .line 3887
    .restart local v13    # "uri":Ljava/lang/String;
    move-object/from16 v33, v12

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v12, v33

    .line 3888
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v33, v0

    move-object/from16 v22, v33

    .line 3889
    .local v22, "ns":Lgnu/xml/NamespaceBinding;
    :goto_6
    move-object/from16 v33, v22

    sget-object v34, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_1e

    .line 3892
    move-object/from16 v33, v22

    invoke-virtual/range {v33 .. v33}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v12

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1f

    .line 3894
    move-object/from16 v33, v3

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "duplicate declarations for the same namespace prefix \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v12

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "XQST0033"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3898
    .line 3901
    :cond_1e
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3904
    move/from16 v33, v21

    const/16 v34, 0x4d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_21

    .line 3906
    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v33

    move-object/from16 v22, v33

    .line 3907
    .local v22, "module":Lgnu/expr/ModuleExp;
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v13

    invoke-static/range {v34 .. v34}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2e

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v22

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v23, v33

    .line 3909
    .local v23, "className":Ljava/lang/String;
    move-object/from16 v33, v22

    move-object/from16 v34, v23

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 3910
    move-object/from16 v33, v4

    new-instance v34, Lgnu/bytecode/ClassType;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    move-object/from16 v36, v23

    invoke-direct/range {v35 .. v36}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 3911
    move-object/from16 v33, v22

    move-object/from16 v34, v4

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3912
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v33

    move-object/from16 v24, v33

    .line 3913
    .local v24, "manager":Lgnu/expr/ModuleManager;
    move-object/from16 v33, v24

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v33

    move-object/from16 v25, v33

    .line 3914
    .local v25, "info":Lgnu/expr/ModuleInfo;
    move-object/from16 v33, v25

    move-object/from16 v34, v13

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleInfo;->setNamespaceUri(Ljava/lang/String;)V

    .line 3915
    move-object/from16 v33, v22

    move-object/from16 v34, v4

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3916
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_20

    .line 3917
    move-object/from16 v33, v3

    const-string/jumbo v34, "zero-length module namespace"

    const-string/jumbo v35, "XQST0088"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3890
    .end local v23    # "className":Ljava/lang/String;
    .end local v24    # "manager":Lgnu/expr/ModuleManager;
    .end local v25    # "info":Lgnu/expr/ModuleInfo;
    .local v22, "ns":Lgnu/xml/NamespaceBinding;
    :cond_1f
    move-object/from16 v33, v22

    invoke-virtual/range {v33 .. v33}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v33

    move-object/from16 v22, v33

    goto/16 :goto_6

    .line 3918
    .local v22, "module":Lgnu/expr/ModuleExp;
    .restart local v23    # "className":Ljava/lang/String;
    .restart local v24    # "manager":Lgnu/expr/ModuleManager;
    .restart local v25    # "info":Lgnu/expr/ModuleInfo;
    :cond_20
    move-object/from16 v33, v3

    move-object/from16 v34, v13

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    .line 3920
    .end local v22    # "module":Lgnu/expr/ModuleExp;
    .end local v23    # "className":Ljava/lang/String;
    .end local v24    # "manager":Lgnu/expr/ModuleManager;
    .end local v25    # "info":Lgnu/expr/ModuleInfo;
    :cond_21
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3925
    .end local v10    # "next":I
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "uri":Ljava/lang/String;
    .end local v21    # "command":I
    :cond_22
    :sswitch_4
    move-object/from16 v33, v3

    const-string/jumbo v34, "\'import schema\' not implemented"

    const-string/jumbo v35, "XQST0009"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    :sswitch_5
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3929
    const/16 v33, 0x0

    move-object/from16 v12, v33

    .line 3930
    .restart local v12    # "prefix":Ljava/lang/String;
    move-object/from16 v33, v3

    const-string/jumbo v34, "namespace"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_25

    .line 3932
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3933
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    .line 3934
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing namespace prefix"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3935
    :cond_23
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v12, v33

    .line 3936
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3937
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_24

    .line 3938
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing \'=\' in namespace declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3939
    :cond_24
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3941
    :cond_25
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_26

    .line 3942
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing uri in namespace declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3943
    :cond_26
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v33, v0

    if-nez v33, :cond_27

    .line 3944
    move-object/from16 v33, v3

    const-string/jumbo v34, "zero-length target namespace"

    const-string/jumbo v35, "XQST0088"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3945
    :cond_27
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v13, v33

    .line 3946
    .restart local v13    # "uri":Ljava/lang/String;
    move-object/from16 v33, v12

    if-eqz v33, :cond_28

    .line 3948
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v13

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_28
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3953
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v33

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v33

    .line 3956
    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v33

    move-object/from16 v23, v33

    .line 3957
    .local v23, "module":Lgnu/expr/ModuleExp;
    new-instance v33, Ljava/util/Vector;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/util/Vector;-><init>()V

    move-object/from16 v24, v33

    .line 3958
    .local v24, "forms":Ljava/util/Vector;
    move-object/from16 v33, v13

    invoke-static/range {v33 .. v33}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v25, v33

    .line 3959
    .local v25, "packageName":Ljava/lang/String;
    move-object/from16 v33, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v6

    move/from16 v36, v7

    invoke-virtual/range {v33 .. v36}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 3960
    move-object/from16 v33, v3

    const-string/jumbo v34, "at"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2f

    .line 3964
    :goto_7
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 3965
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_29

    .line 3966
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing module location"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3967
    :cond_29
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v22, v33

    .line 3968
    .local v22, "at":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v13

    invoke-static/range {v34 .. v34}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2e

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v22

    invoke-static/range {v34 .. v34}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v26, v33

    .line 3971
    .local v26, "className":Ljava/lang/String;
    move-object/from16 v33, v22

    move-object/from16 v34, v23

    invoke-static/range {v33 .. v34}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v33

    move-object/from16 v27, v33

    .line 3972
    .local v27, "info":Lgnu/expr/ModuleInfo;
    move-object/from16 v33, v27

    if-nez v33, :cond_2a

    .line 3973
    move-object/from16 v33, v4

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "malformed URL: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v22

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 3974
    :cond_2a
    move-object/from16 v33, v26

    move-object/from16 v34, v27

    const/16 v35, 0x0

    move-object/from16 v36, v24

    move-object/from16 v37, v23

    move-object/from16 v38, v4

    invoke-static/range {v33 .. v38}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v33

    .line 3976
    move-object/from16 v33, v3

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->nesting:I

    move/from16 v34, v0

    if-eqz v34, :cond_2d

    const/16 v34, 0x1

    :goto_8
    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v33

    move/from16 v10, v33

    .line 3977
    .restart local v10    # "next":I
    move/from16 v33, v10

    const/16 v34, 0x2c

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2e

    .line 3979
    move-object/from16 v33, v3

    move/from16 v34, v10

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3980
    .line 3983
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4018
    .end local v10    # "next":I
    .end local v26    # "className":Ljava/lang/String;
    .end local v27    # "info":Lgnu/expr/ModuleInfo;
    :cond_2b
    :goto_9
    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2c

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Stack;->size()I

    move-result v33

    if-lez v33, :cond_2c

    .line 4020
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "module import forms a cycle"

    const-string/jumbo v36, "XQST0073"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_2c
    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v26, v33

    .line 4023
    .local v26, "inits":[Lgnu/expr/Expression;
    move-object/from16 v33, v24

    move-object/from16 v34, v26

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    .line 4024
    move-object/from16 v33, v26

    invoke-static/range {v33 .. v33}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3976
    .local v26, "className":Ljava/lang/String;
    .restart local v27    # "info":Lgnu/expr/ModuleInfo;
    :cond_2d
    const/16 v34, 0x0

    goto :goto_8

    .line 3982
    .restart local v10    # "next":I
    :cond_2e
    goto/16 :goto_7

    .line 3987
    .end local v10    # "next":I
    .end local v22    # "at":Ljava/lang/String;
    .end local v26    # "className":Ljava/lang/String;
    .end local v27    # "info":Lgnu/expr/ModuleInfo;
    :cond_2f
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v33

    move-object/from16 v26, v33

    .line 3988
    .local v26, "manager":Lgnu/expr/ModuleManager;
    const/16 v33, 0x0

    move/from16 v27, v33

    .line 3991
    .local v27, "n":I
    move-object/from16 v33, v26

    move-object/from16 v34, v25

    :try_start_0
    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 4001
    .line 4002
    :goto_a
    const/16 v33, 0x0

    move/from16 v28, v33

    .line 4004
    .local v28, "i":I
    :goto_b
    move-object/from16 v33, v26

    move/from16 v34, v28

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleManager;->getModule(I)Lgnu/expr/ModuleInfo;

    move-result-object v33

    move-object/from16 v29, v33

    .line 4005
    .local v29, "info":Lgnu/expr/ModuleInfo;
    move-object/from16 v33, v29

    if-nez v33, :cond_31

    .line 4006
    .line 4012
    move/from16 v33, v27

    if-nez v33, :cond_30

    .line 4013
    move-object/from16 v33, v3

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "no module found for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v13

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4014
    :cond_30
    const/16 v33, 0x0

    move-object/from16 v22, v33

    .line 4015
    .restart local v22    # "at":Ljava/lang/String;
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x3b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    .line 4016
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto/16 :goto_9

    .line 3993
    .end local v22    # "at":Ljava/lang/String;
    .end local v28    # "i":I
    .end local v29    # "info":Lgnu/expr/ModuleInfo;
    :catch_0
    move-exception v33

    move-object/from16 v28, v33

    .line 4001
    goto :goto_a

    .line 3998
    :catch_1
    move-exception v33

    move-object/from16 v28, v33

    .line 4000
    .local v28, "ex":Ljava/lang/Throwable;
    move-object/from16 v33, v3

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "error loading map for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v13

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v28

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto/16 :goto_a

    .line 4007
    .local v28, "i":I
    .restart local v29    # "info":Lgnu/expr/ModuleInfo;
    :cond_31
    move-object/from16 v33, v13

    move-object/from16 v34, v29

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_32

    .line 4008
    .line 4002
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_b

    .line 4009
    :cond_32
    add-int/lit8 v27, v27, 0x1

    .line 4010
    move-object/from16 v33, v29

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v29

    const/16 v35, 0x0

    move-object/from16 v36, v24

    move-object/from16 v37, v23

    move-object/from16 v38, v4

    invoke-static/range {v33 .. v38}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v33

    goto :goto_c

    .line 4027
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "uri":Ljava/lang/String;
    .end local v23    # "module":Lgnu/expr/ModuleExp;
    .end local v24    # "forms":Ljava/util/Vector;
    .end local v25    # "packageName":Ljava/lang/String;
    .end local v26    # "manager":Lgnu/expr/ModuleManager;
    .end local v27    # "n":I
    .end local v28    # "i":I
    .end local v29    # "info":Lgnu/expr/ModuleInfo;
    :sswitch_6
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    move-object/from16 v33, v0

    if-eqz v33, :cond_33

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_33

    .line 4028
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "duplicate default collation declaration"

    const-string/jumbo v36, "XQST0038"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_33
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v14, v33

    .line 4030
    .local v14, "val":Ljava/lang/Object;
    move-object/from16 v33, v14

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v33, v0

    if-eqz v33, :cond_34

    .line 4031
    move-object/from16 v33, v14

    check-cast v33, Lgnu/expr/Expression;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4032
    :cond_34
    move-object/from16 v33, v14

    check-cast v33, Ljava/lang/String;

    move-object/from16 v27, v33

    .line 4035
    .local v27, "collation":Ljava/lang/String;
    move-object/from16 v33, v3

    move-object/from16 v34, v27

    :try_start_1
    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v27, v33

    .line 4036
    move-object/from16 v33, v3

    move-object/from16 v34, v27

    invoke-static/range {v34 .. v34}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4042
    .line 4043
    :goto_d
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4044
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4038
    :catch_2
    move-exception v33

    move-object/from16 v28, v33

    .line 4040
    .local v28, "ex":Ljava/lang/Exception;
    move-object/from16 v33, v3

    sget-object v34, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 4041
    move-object/from16 v33, v3

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "unknown collation \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v27

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "XQST0038"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 4048
    .end local v14    # "val":Ljava/lang/Object;
    .end local v27    # "collation":Ljava/lang/String;
    .end local v28    # "ex":Ljava/lang/Exception;
    :sswitch_7
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x4f

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_38

    const/16 v33, 0x1

    :goto_e
    move/from16 v28, v33

    .line 4049
    .local v28, "forFunctions":Z
    move/from16 v33, v28

    if-eqz v33, :cond_39

    const-string/jumbo v33, "(functions)"

    :goto_f
    move-object/from16 v12, v33

    .line 4051
    .restart local v12    # "prefix":Ljava/lang/String;
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v33, v0

    move-object/from16 v34, v12

    sget-object v35, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-virtual/range {v33 .. v35}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_3a

    .line 4052
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "duplicate default namespace declaration"

    const-string/jumbo v36, "XQST0066"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4057
    :cond_35
    :goto_10
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4058
    move-object/from16 v33, v3

    const-string/jumbo v34, "namespace"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3b

    .line 4059
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4068
    :goto_11
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_36

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x4c

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_37

    .line 4070
    :cond_36
    move-object/from16 v33, v3

    const-string/jumbo v34, "extra \'=\' in default namespace declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4071
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4073
    :cond_37
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3d

    .line 4074
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing namespace uri"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4048
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v28    # "forFunctions":Z
    :cond_38
    const/16 v33, 0x0

    goto/16 :goto_e

    .line 4049
    .restart local v28    # "forFunctions":Z
    :cond_39
    sget-object v33, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    goto/16 :goto_f

    .line 4055
    .restart local v12    # "prefix":Ljava/lang/String;
    :cond_3a
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    move/from16 v33, v0

    if-eqz v33, :cond_35

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_35

    .line 4056
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "default namespace declared after function/variable/option"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto/16 :goto_10

    .line 4062
    :cond_3b
    const-string/jumbo v33, "expected \'namespace\' keyword"

    move-object/from16 v29, v33

    .line 4063
    .local v29, "msg":Ljava/lang/String;
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3c

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3c

    .line 4064
    move-object/from16 v33, v3

    move-object/from16 v34, v29

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4066
    :cond_3c
    move-object/from16 v33, v3

    move-object/from16 v34, v29

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4075
    .end local v29    # "msg":Ljava/lang/String;
    :cond_3d
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v13, v33

    .line 4076
    .restart local v13    # "uri":Ljava/lang/String;
    move/from16 v33, v28

    if-eqz v33, :cond_3e

    .line 4078
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/mapping/Namespace;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 4079
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v35, v13

    invoke-static/range {v35 .. v35}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v35

    aput-object v35, v33, v34

    .line 4085
    :goto_12
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    move-object/from16 v33, v3

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4087
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4088
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4083
    :cond_3e
    move-object/from16 v33, v3

    move-object/from16 v34, v13

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    goto :goto_12

    .line 4091
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "uri":Ljava/lang/String;
    .end local v28    # "forFunctions":Z
    :sswitch_8
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4092
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x192

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3f

    .line 4094
    move-object/from16 v33, v3

    const-string/jumbo v34, "obsolate \'=\' in boundary-space declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4095
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4097
    :cond_3f
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_40

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_40

    .line 4098
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare boundary-space\' seen"

    const-string/jumbo v35, "XQST0068"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4099
    :cond_40
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    .line 4100
    move-object/from16 v33, v3

    const-string/jumbo v34, "preserve"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_41

    .line 4101
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    .line 4111
    :goto_13
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4112
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4102
    :cond_41
    move-object/from16 v33, v3

    const-string/jumbo v34, "strip"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_42

    .line 4103
    move-object/from16 v33, v3

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_13

    .line 4104
    :cond_42
    move-object/from16 v33, v3

    const-string/jumbo v34, "skip"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_43

    .line 4106
    move-object/from16 v33, v3

    const-string/jumbo v34, "update: declare boundary-space skip -> strip"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4107
    move-object/from16 v33, v3

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_13

    .line 4110
    :cond_43
    move-object/from16 v33, v3

    const-string/jumbo v34, "boundary-space declaration must be preserve or strip"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4115
    :sswitch_9
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4116
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_44

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_44

    .line 4117
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare construction\' seen"

    const-string/jumbo v35, "XQST0067"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4118
    :cond_44
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    .line 4119
    move-object/from16 v33, v3

    const-string/jumbo v34, "strip"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_45

    .line 4120
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    .line 4125
    :goto_14
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4126
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4121
    :cond_45
    move-object/from16 v33, v3

    const-string/jumbo v34, "preserve"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_46

    .line 4122
    move-object/from16 v33, v3

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    goto :goto_14

    .line 4124
    :cond_46
    move-object/from16 v33, v3

    const-string/jumbo v34, "construction declaration must be strip or preserve"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4129
    :sswitch_a
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4130
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_47

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_47

    .line 4131
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare copy-namespaces\' seen"

    const-string/jumbo v35, "XQST0055"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4132
    :cond_47
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    .line 4133
    move-object/from16 v33, v3

    const-string/jumbo v34, "preserve"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_48

    .line 4134
    move-object/from16 v33, v3

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v34, v0

    const/16 v35, 0x1

    or-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4139
    :goto_15
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4140
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x2c

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_4a

    .line 4141
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing \',\' in copy-namespaces declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4135
    :cond_48
    move-object/from16 v33, v3

    const-string/jumbo v34, "no-preserve"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_49

    .line 4136
    move-object/from16 v33, v3

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v34, v0

    const/16 v35, -0x2

    and-int/lit8 v34, v34, -0x2

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_15

    .line 4138
    :cond_49
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected \'preserve\' or \'no-preserve\' after \'declare copy-namespaces\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4142
    :cond_4a
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4143
    move-object/from16 v33, v3

    const-string/jumbo v34, "inherit"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4b

    .line 4144
    move-object/from16 v33, v3

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v34, v0

    const/16 v35, 0x2

    or-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4149
    :goto_16
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4150
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4145
    :cond_4b
    move-object/from16 v33, v3

    const-string/jumbo v34, "no-inherit"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4c

    .line 4146
    move-object/from16 v33, v3

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v34, v0

    const/16 v35, -0x3

    and-int/lit8 v34, v34, -0x3

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_16

    .line 4148
    :cond_4c
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected \'inherit\' or \'no-inherit\' in copy-namespaces declaration"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4153
    :sswitch_b
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4154
    move-object/from16 v33, v3

    const-string/jumbo v34, "empty"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    move/from16 v29, v33

    .line 4155
    .local v29, "sawEmpty":Z
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4d

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_4d

    .line 4156
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare default empty order\' seen"

    const-string/jumbo v35, "XQST0069"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4157
    :cond_4d
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    .line 4158
    move/from16 v33, v29

    if-eqz v33, :cond_4e

    .line 4159
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4162
    :goto_17
    move-object/from16 v33, v3

    const-string/jumbo v34, "greatest"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4f

    .line 4163
    move-object/from16 v33, v3

    const/16 v34, 0x47

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 4168
    :goto_18
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4169
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4161
    :cond_4e
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected \'empty greatest\' or \'empty least\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto :goto_17

    .line 4164
    :cond_4f
    move-object/from16 v33, v3

    const-string/jumbo v34, "least"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_50

    .line 4165
    move-object/from16 v33, v3

    const/16 v34, 0x4c

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    goto :goto_18

    .line 4167
    :cond_50
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected \'empty greatest\' or \'empty least\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4172
    .end local v29    # "sawEmpty":Z
    :sswitch_c
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4173
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x51

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_51

    .line 4174
    move-object/from16 v33, v3

    const-string/jumbo v34, "expected QName after \'declare option\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4187
    :goto_19
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4188
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 4189
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4177
    :cond_51
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v30, v33

    .line 4178
    .local v30, "str":Ljava/lang/String;
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v33

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 4179
    move-object/from16 v33, v3

    move-object/from16 v34, v30

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v33

    move-object/from16 v31, v33

    .line 4180
    .local v31, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4181
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_52

    .line 4182
    move-object/from16 v33, v3

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v40, v34

    move-object/from16 v34, v40

    move-object/from16 v35, v40

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "expected string literal after \'declare option "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v30

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x27

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto/16 :goto_19

    .line 4185
    :cond_52
    move-object/from16 v33, v3

    move-object/from16 v34, v31

    new-instance v35, Ljava/lang/String;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v39, v0

    invoke-direct/range {v36 .. v39}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4192
    .end local v30    # "str":Ljava/lang/String;
    .end local v31    # "sym":Lgnu/mapping/Symbol;
    :sswitch_d
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_53

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_53

    .line 4193
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare ordering\' seen"

    const-string/jumbo v35, "XQST0065"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4194
    :cond_53
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    .line 4195
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4196
    move-object/from16 v33, v3

    const-string/jumbo v34, "ordered"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_54

    .line 4197
    move-object/from16 v33, v3

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    .line 4202
    :goto_1a
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4203
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4198
    :cond_54
    move-object/from16 v33, v3

    const-string/jumbo v34, "unordered"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_55

    .line 4199
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    goto :goto_1a

    .line 4201
    :cond_55
    move-object/from16 v33, v3

    const-string/jumbo v34, "ordering declaration must be ordered or unordered"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4206
    :sswitch_e
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->parseCount:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_58

    .line 4207
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "\'xquery version\' does not start module"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4210
    :cond_56
    :goto_1b
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4211
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_59

    .line 4213
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v30, v33

    .line 4214
    .local v30, "version":Ljava/lang/String;
    move-object/from16 v33, v30

    const-string/jumbo v34, "1.0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_57

    .line 4215
    move-object/from16 v33, v3

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "unrecognized xquery version "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v30

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "XQST0031"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_57
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4217
    .line 4220
    move-object/from16 v33, v3

    const-string/jumbo v34, "encoding"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_63

    .line 4222
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4223
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x22

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_5a

    .line 4224
    move-object/from16 v33, v3

    const-string/jumbo v34, "invalid encoding specification"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4208
    .end local v30    # "version":Ljava/lang/String;
    :cond_58
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->commentCount:I

    move/from16 v33, v0

    if-lez v33, :cond_56

    .line 4209
    move-object/from16 v33, v3

    const/16 v34, 0x77

    const-string/jumbo v35, "comments should not precede \'xquery version\'"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto/16 :goto_1b

    .line 4219
    :cond_59
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing version string after \'xquery version\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4227
    .restart local v30    # "version":Ljava/lang/String;
    :cond_5a
    new-instance v33, Ljava/lang/String;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v37, v0

    invoke-direct/range {v34 .. v37}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v30, v33

    .line 4228
    .local v30, "encoding":Ljava/lang/String;
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v33, v0

    move/from16 v31, v33

    .line 4229
    .local v31, "i":I
    move/from16 v33, v31

    if-nez v33, :cond_5d

    const/16 v33, 0x1

    :goto_1c
    move/from16 v32, v33

    .line 4230
    .local v32, "bad":Z
    :cond_5b
    :goto_1d
    add-int/lit8 v31, v31, -0x1

    move/from16 v33, v31

    if-ltz v33, :cond_61

    move/from16 v33, v32

    if-nez v33, :cond_61

    .line 4232
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v33, v0

    move/from16 v34, v31

    aget-char v33, v33, v34

    move/from16 v5, v33

    .line 4233
    move/from16 v33, v5

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_5c

    move/from16 v33, v5

    const/16 v34, 0x5a

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_5b

    :cond_5c
    move/from16 v33, v5

    const/16 v34, 0x61

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_5e

    move/from16 v33, v5

    const/16 v34, 0x7a

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_5e

    .line 4234
    goto :goto_1d

    .line 4229
    .end local v32    # "bad":Z
    :cond_5d
    const/16 v33, 0x0

    goto :goto_1c

    .line 4235
    .restart local v32    # "bad":Z
    :cond_5e
    move/from16 v33, v31

    if-eqz v33, :cond_60

    move/from16 v33, v5

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_5f

    move/from16 v33, v5

    const/16 v34, 0x39

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_5b

    :cond_5f
    move/from16 v33, v5

    const/16 v34, 0x2e

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_5b

    move/from16 v33, v5

    const/16 v34, 0x5f

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_5b

    move/from16 v33, v5

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_5b

    .line 4238
    :cond_60
    const/16 v33, 0x1

    move/from16 v32, v33

    goto :goto_1d

    .line 4240
    :cond_61
    move/from16 v33, v32

    if-eqz v33, :cond_62

    .line 4241
    move-object/from16 v33, v3

    const/16 v34, 0x65

    const-string/jumbo v35, "invalid encoding name syntax"

    const-string/jumbo v36, "XQST0087"

    invoke-virtual/range {v33 .. v36}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4243
    :cond_62
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v33

    .line 4246
    .end local v30    # "encoding":Ljava/lang/String;
    .end local v31    # "i":I
    .end local v32    # "bad":Z
    :cond_63
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v33, v0

    const/16 v34, 0x3b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_64

    .line 4247
    move-object/from16 v33, v3

    const-string/jumbo v34, "missing \';\'"

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4248
    :cond_64
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4251
    :sswitch_f
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    move/from16 v33, v0

    if-eqz v33, :cond_65

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    move/from16 v33, v0

    if-nez v33, :cond_65

    .line 4252
    move-object/from16 v33, v3

    const-string/jumbo v34, "duplicate \'declare base-uri\' seen"

    const-string/jumbo v35, "XQST0032"

    invoke-virtual/range {v33 .. v35}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 4253
    :cond_65
    move-object/from16 v33, v3

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    .line 4254
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v14, v33

    .line 4255
    .restart local v14    # "val":Ljava/lang/Object;
    move-object/from16 v33, v14

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v33, v0

    if-eqz v33, :cond_66

    .line 4256
    move-object/from16 v33, v14

    check-cast v33, Lgnu/expr/Expression;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 4257
    :cond_66
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4258
    move-object/from16 v33, v3

    move-object/from16 v34, v14

    check-cast v34, Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Lgnu/xquery/lang/XQParser;->setStaticBaseUri(Ljava/lang/String;)V

    .line 4259
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v33

    goto/16 :goto_0

    .line 3766
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_f
        0x45 -> :sswitch_7
        0x47 -> :sswitch_6
        0x48 -> :sswitch_b
        0x49 -> :sswitch_5
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_3
        0x4e -> :sswitch_3
        0x4f -> :sswitch_7
        0x50 -> :sswitch_1
        0x53 -> :sswitch_8
        0x54 -> :sswitch_4
        0x55 -> :sswitch_d
        0x56 -> :sswitch_2
        0x57 -> :sswitch_0
        0x59 -> :sswitch_e
        0x6f -> :sswitch_c
    .end sparse-switch
.end method

.method parseBinaryExpr(I)Lgnu/expr/Expression;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1673
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v1, p1

    .local v1, "prio":I
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v9

    move-object v2, v9

    .line 1676
    .local v2, "exp":Lgnu/expr/Expression;
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v9

    move v3, v9

    .line 1677
    .local v3, "token":I
    move v9, v3

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    move v9, v3

    const/16 v10, 0x194

    if-ne v9, v10, :cond_1

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_1

    .line 1680
    :cond_0
    move-object v9, v2

    move-object v0, v9

    .line 1683
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return-object v0

    .line 1681
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_1
    move v9, v3

    invoke-static {v9}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v9

    move v4, v9

    .line 1682
    .local v4, "tokPriority":I
    move v9, v4

    move v10, v1

    if-ge v9, v10, :cond_2

    .line 1683
    move-object v9, v2

    move-object v0, v9

    goto :goto_1

    .line 1684
    :cond_2
    move-object v9, v0

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v9

    move v5, v9

    .line 1685
    .local v5, "saveReadState":C
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v9

    .line 1686
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 1687
    move v9, v3

    const/16 v10, 0x1a6

    if-lt v9, v10, :cond_5

    move v9, v3

    const/16 v10, 0x1a9

    if-gt v9, v10, :cond_5

    .line 1689
    move v9, v3

    const/16 v10, 0x1a9

    if-eq v9, v10, :cond_3

    move v9, v3

    const/16 v10, 0x1a8

    if-ne v9, v10, :cond_4

    .line 1690
    :cond_3
    move-object v9, v0

    const/16 v10, 0x43

    iput v10, v9, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1691
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v9

    move-object v6, v9

    .line 1692
    .local v6, "type":Lgnu/expr/Expression;
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1693
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v7, v9

    .line 1695
    .local v7, "args":[Lgnu/expr/Expression;
    move v9, v3

    packed-switch v9, :pswitch_data_0

    .line 1715
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v6

    aput-object v11, v9, v10

    .line 1716
    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    .line 1717
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v8, v9

    .line 1720
    .local v8, "func":Lgnu/expr/Expression;
    :goto_2
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v2, v9

    .line 1739
    .end local v6    # "type":Lgnu/expr/Expression;
    .end local v7    # "args":[Lgnu/expr/Expression;
    .end local v8    # "func":Lgnu/expr/Expression;
    :goto_3
    goto/16 :goto_0

    .line 1698
    .restart local v6    # "type":Lgnu/expr/Expression;
    .restart local v7    # "args":[Lgnu/expr/Expression;
    :pswitch_0
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    .line 1699
    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    aput-object v11, v9, v10

    .line 1700
    const-string/jumbo v9, "gnu.xquery.lang.XQParser"

    const-string/jumbo v10, "instanceOf"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v8, v9

    .line 1702
    .restart local v8    # "func":Lgnu/expr/Expression;
    goto :goto_2

    .line 1704
    .end local v8    # "func":Lgnu/expr/Expression;
    :pswitch_1
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    .line 1705
    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    aput-object v11, v9, v10

    .line 1706
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v8, v9

    .line 1707
    .restart local v8    # "func":Lgnu/expr/Expression;
    goto :goto_2

    .line 1709
    .end local v8    # "func":Lgnu/expr/Expression;
    :pswitch_2
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v6

    aput-object v11, v9, v10

    .line 1710
    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    .line 1711
    const-string/jumbo v9, "gnu.xquery.lang.XQParser"

    const-string/jumbo v10, "treatAs"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v8, v9

    .line 1713
    .restart local v8    # "func":Lgnu/expr/Expression;
    goto :goto_2

    .line 1722
    .end local v6    # "type":Lgnu/expr/Expression;
    .end local v7    # "args":[Lgnu/expr/Expression;
    .end local v8    # "func":Lgnu/expr/Expression;
    :cond_5
    move v9, v3

    const/16 v10, 0x1a6

    if-ne v9, v10, :cond_6

    .line 1724
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v6, v9

    .line 1725
    .local v6, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "gnu.xquery.lang.XQParser"

    const-string/jumbo v12, "instanceOf"

    invoke-static {v11, v12}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v2, v9

    .line 1728
    goto :goto_3

    .line 1731
    .end local v6    # "args":[Lgnu/expr/Expression;
    :cond_6
    move-object v9, v0

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v9

    move-object v6, v9

    .line 1732
    .local v6, "exp2":Lgnu/expr/Expression;
    move v9, v3

    const/16 v10, 0x191

    if-ne v9, v10, :cond_7

    .line 1733
    new-instance v9, Lgnu/expr/IfExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-static {v11}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v12, v6

    invoke-static {v12}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v12

    sget-object v13, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v10, v11, v12, v13}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v2, v9

    goto/16 :goto_3

    .line 1734
    :cond_7
    move v9, v3

    const/16 v10, 0x190

    if-ne v9, v10, :cond_8

    .line 1735
    new-instance v9, Lgnu/expr/IfExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-static {v11}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    sget-object v12, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    move-object v13, v6

    invoke-static {v13}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v2, v9

    goto/16 :goto_3

    .line 1737
    :cond_8
    move-object v9, v0

    move v10, v3

    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v2, v9

    goto/16 :goto_3

    .line 1695
    :pswitch_data_0
    .packed-switch 0x1a6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method parseContent(CLjava/util/Vector;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2273
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v2, p1

    .local v2, "delimiter":C
    move-object/from16 v3, p2

    .local v3, "result":Ljava/util/Vector;
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2274
    move-object v15, v3

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    move v4, v15

    .line 2275
    .local v4, "startSize":I
    move v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move v5, v15

    .line 2276
    .local v5, "prevEnclosed":I
    move-object v15, v1

    iget-boolean v15, v15, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    if-nez v15, :cond_2

    move v15, v2

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_0
    move v6, v15

    .line 2277
    .local v6, "skipBoundarySpace":Z
    move v15, v6

    move v7, v15

    .line 2280
    .local v7, "skippable":Z
    :goto_1
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v15

    move v8, v15

    .line 2281
    .local v8, "next":I
    move v15, v8

    move/from16 v16, v2

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 2283
    move v15, v2

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 2285
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v15

    move v8, v15

    .line 2286
    const/4 v15, 0x0

    move-object v9, v15

    .line 2287
    .local v9, "text":Lgnu/expr/Expression;
    move-object v15, v1

    iget v15, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v15, :cond_0

    .line 2289
    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/lang/String;-><init>([CII)V

    move-object v10, v15

    .line 2290
    .local v10, "str":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v18, v16, v17

    move-object v11, v15

    .line 2291
    .local v11, "args":[Lgnu/expr/Expression;
    new-instance v15, Lgnu/expr/ApplyExp;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    sget-object v17, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v18}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v9, v15

    .line 2293
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "args":[Lgnu/expr/Expression;
    :cond_0
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2294
    move v15, v8

    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2296
    move-object v15, v9

    if-eqz v15, :cond_1

    move v15, v7

    if-nez v15, :cond_1

    .line 2297
    move-object v15, v3

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2400
    .end local v9    # "text":Lgnu/expr/Expression;
    :cond_1
    :goto_2
    return-void

    .line 2276
    .end local v6    # "skipBoundarySpace":Z
    .end local v7    # "skippable":Z
    .end local v8    # "next":I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2300
    .restart local v6    # "skipBoundarySpace":Z
    .restart local v7    # "skippable":Z
    .restart local v8    # "next":I
    .restart local v9    # "text":Lgnu/expr/Expression;
    :cond_3
    move-object v15, v1

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v15

    move-object v10, v15

    .line 2301
    .local v10, "content":Lgnu/expr/Expression;
    const/4 v15, 0x0

    move v11, v15

    .line 2302
    .local v11, "isCDATA":Z
    const/4 v15, 0x0

    move v12, v15

    .line 2303
    .local v12, "emptyCDATA":Z
    move-object v15, v10

    instance-of v15, v15, Lgnu/expr/ApplyExp;

    if-eqz v15, :cond_4

    .line 2305
    move-object v15, v10

    check-cast v15, Lgnu/expr/ApplyExp;

    move-object v13, v15

    .line 2306
    .local v13, "aexp":Lgnu/expr/ApplyExp;
    move-object v15, v13

    invoke-virtual {v15}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v15

    sget-object v16, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2308
    const/4 v15, 0x1

    move v11, v15

    .line 2309
    move-object v15, v13

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v15

    invoke-virtual {v15}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v14, v15

    .line 2310
    .local v14, "str":Ljava/lang/String;
    move-object v15, v14

    if-eqz v15, :cond_8

    move-object v15, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x1

    :goto_3
    move v12, v15

    .line 2313
    .end local v13    # "aexp":Lgnu/expr/ApplyExp;
    .end local v14    # "str":Ljava/lang/String;
    :cond_4
    move-object v15, v9

    if-eqz v15, :cond_6

    move v15, v7

    if-eqz v15, :cond_5

    move v15, v11

    if-eqz v15, :cond_6

    .line 2314
    :cond_5
    move-object v15, v3

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2315
    :cond_6
    move v15, v11

    if-eqz v15, :cond_9

    .line 2316
    const/4 v15, 0x0

    move v7, v15

    .line 2319
    :goto_4
    move v15, v12

    if-nez v15, :cond_7

    .line 2320
    move-object v15, v3

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2321
    :cond_7
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2322
    goto/16 :goto_1

    .line 2310
    .restart local v13    # "aexp":Lgnu/expr/ApplyExp;
    .restart local v14    # "str":Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    goto :goto_3

    .line 2318
    .end local v13    # "aexp":Lgnu/expr/ApplyExp;
    .end local v14    # "str":Ljava/lang/String;
    :cond_9
    move v15, v6

    move v7, v15

    goto :goto_4

    .line 2324
    .end local v9    # "text":Lgnu/expr/Expression;
    .end local v10    # "content":Lgnu/expr/Expression;
    .end local v11    # "isCDATA":Z
    .end local v12    # "emptyCDATA":Z
    :cond_a
    move-object v15, v1

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2326
    move-object v15, v1

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2327
    goto/16 :goto_1

    .line 2330
    :cond_b
    move v15, v8

    move/from16 v16, v2

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    move v15, v8

    if-ltz v15, :cond_c

    move v15, v8

    const/16 v16, 0x7b

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 2332
    :cond_c
    move v15, v8

    const/16 v16, 0x7b

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v15

    :goto_5
    move v9, v15

    .line 2333
    .local v9, "postBrace":I
    move v15, v9

    const/16 v16, 0x7b

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 2335
    move-object v15, v1

    const/16 v16, 0x7b

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2336
    const/4 v15, 0x0

    move v7, v15

    .line 2337
    goto/16 :goto_1

    .line 2332
    .end local v9    # "postBrace":I
    :cond_d
    const/4 v15, -0x1

    goto :goto_5

    .line 2342
    .restart local v9    # "postBrace":I
    :cond_e
    move-object v15, v1

    iget v15, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v15, :cond_10

    move v15, v7

    if-nez v15, :cond_10

    .line 2343
    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/lang/String;-><init>([CII)V

    move-object v10, v15

    .line 2350
    .local v10, "text":Ljava/lang/String;
    :goto_6
    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v18, v16, v17

    move-object v11, v15

    .line 2351
    .local v11, "args":[Lgnu/expr/Expression;
    move-object v15, v3

    new-instance v16, Lgnu/expr/ApplyExp;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    sget-object v18, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v19, v11

    invoke-direct/range {v17 .. v19}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2353
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "args":[Lgnu/expr/Expression;
    :cond_f
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2354
    move v15, v8

    move/from16 v16, v2

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 2355
    goto/16 :goto_2

    .line 2344
    :cond_10
    move v15, v8

    const/16 v16, 0x7b

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    move v15, v5

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 2347
    const-string/jumbo v15, ""

    move-object v10, v15

    .restart local v10    # "text":Ljava/lang/String;
    goto :goto_6

    .line 2356
    .end local v10    # "text":Ljava/lang/String;
    :cond_11
    move v15, v8

    if-gez v15, :cond_12

    .line 2357
    move-object v15, v1

    const-string/jumbo v16, "unexpected end-of-file"

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2368
    .line 2399
    .end local v9    # "postBrace":I
    :goto_7
    goto/16 :goto_1

    .line 2360
    .restart local v9    # "postBrace":I
    :cond_12
    move-object v15, v1

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2361
    move-object v15, v1

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2362
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v15

    move-object v10, v15

    .line 2363
    .local v10, "exp":Lgnu/expr/Expression;
    move-object v15, v3

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2365
    move-object v15, v3

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    move v5, v15

    .line 2366
    move v15, v6

    move v7, v15

    goto :goto_7

    .line 2369
    .end local v9    # "postBrace":I
    .end local v10    # "exp":Lgnu/expr/Expression;
    :cond_13
    move v15, v8

    const/16 v16, 0x7d

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 2371
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v15

    move v8, v15

    .line 2372
    move v15, v8

    const/16 v16, 0x7d

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 2374
    move-object v15, v1

    const/16 v16, 0x7d

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2375
    const/4 v15, 0x0

    move v7, v15

    goto :goto_7

    .line 2379
    :cond_14
    move-object v15, v1

    const-string/jumbo v16, "unexpected \'}\' in element content"

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2380
    move-object v15, v1

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_7

    .line 2383
    :cond_15
    move v15, v8

    const/16 v16, 0x26

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 2385
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    .line 2386
    const/4 v15, 0x0

    move v7, v15

    goto :goto_7

    .line 2390
    :cond_16
    move v15, v2

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-eq v15, v0, :cond_18

    move v15, v8

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    move v15, v8

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    move v15, v8

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 2392
    :cond_17
    const/16 v15, 0x20

    move v8, v15

    .line 2393
    :cond_18
    move v15, v8

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 2394
    move-object v15, v1

    const/16 v16, 0x65

    const-string/jumbo v17, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual/range {v15 .. v17}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2395
    :cond_19
    move v15, v7

    if-eqz v15, :cond_1a

    .line 2396
    move v15, v8

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    move v7, v15

    .line 2397
    :cond_1a
    move-object v15, v1

    move/from16 v16, v8

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto/16 :goto_7
.end method

.method public parseDataType()Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->parseItemType()Lgnu/expr/Expression;

    move-result-object v6

    move-object v1, v6

    .line 1474
    .local v1, "etype":Lgnu/expr/Expression;
    move-object v6, v1

    if-nez v6, :cond_3

    .line 1476
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0xee

    if-eq v6, v7, :cond_0

    .line 1477
    move-object v6, v0

    const-string/jumbo v7, "bad syntax - expected DataType"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 1525
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 1478
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1479
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19d

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19f

    if-ne v6, v7, :cond_2

    .line 1481
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 1482
    move-object v6, v0

    const-string/jumbo v7, "occurrence-indicator meaningless after empty-sequence()"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1484
    :cond_2
    sget-object v6, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    move-object v1, v6

    .line 1485
    const/4 v6, 0x0

    move v2, v6

    .line 1486
    .local v2, "min":I
    const/4 v6, 0x0

    move v3, v6

    .line 1508
    .local v3, "max":I
    :goto_1
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v7, 0x43

    if-ne v6, v7, :cond_7

    .line 1510
    move v6, v3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    .line 1511
    move-object v6, v0

    const-string/jumbo v7, "type to \'cast as\' or \'castable as\' must be a \'SingleType\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1488
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_3
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_4

    .line 1490
    const/4 v6, 0x0

    move v2, v6

    .line 1491
    .restart local v2    # "min":I
    const/4 v6, 0x1

    move v3, v6

    .restart local v3    # "max":I
    goto :goto_1

    .line 1493
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_4
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19d

    if-ne v6, v7, :cond_5

    .line 1495
    const/4 v6, 0x1

    move v2, v6

    .line 1496
    .restart local v2    # "min":I
    const/4 v6, -0x1

    move v3, v6

    .restart local v3    # "max":I
    goto :goto_1

    .line 1498
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_5
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19f

    if-ne v6, v7, :cond_6

    .line 1500
    const/4 v6, 0x0

    move v2, v6

    .line 1501
    .restart local v2    # "min":I
    const/4 v6, -0x1

    move v3, v6

    .restart local v3    # "max":I
    goto :goto_1

    .line 1505
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_6
    const/4 v6, 0x1

    move v2, v6

    .line 1506
    .restart local v2    # "min":I
    const/4 v6, 0x1

    move v3, v6

    .restart local v3    # "max":I
    goto :goto_1

    .line 1513
    :cond_7
    move v6, v2

    move v7, v3

    if-eq v6, v7, :cond_8

    .line 1515
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 1516
    const/4 v6, 0x3

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v4, v6

    .line 1519
    .local v4, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v5, v6

    .line 1522
    .local v5, "otype":Lgnu/expr/ApplyExp;
    move-object v6, v5

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1523
    move-object v6, v5

    move-object v0, v6

    goto/16 :goto_0

    .line 1525
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v5    # "otype":Lgnu/expr/ApplyExp;
    :cond_8
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0
.end method

.method parseElementConstructor()Lgnu/expr/Expression;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2570
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/lang/XQParser;
    new-instance v20, Ljava/lang/String;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v3, v20

    .line 2571
    .local v3, "startTag":Ljava/lang/String;
    new-instance v20, Ljava/util/Vector;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v4, v20

    .line 2573
    .local v4, "vec":Ljava/util/Vector;
    move-object/from16 v20, v4

    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2574
    move-object/from16 v20, v2

    const-string/jumbo v21, "comment not allowed in element start tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2575
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 2579
    .local v6, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_0
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 2580
    .local v8, "sawSpace":Z
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v20

    move/from16 v7, v20

    .line 2581
    .local v7, "ch":I
    :goto_1
    move/from16 v20, v7

    if-ltz v20, :cond_0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2583
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v20

    move/from16 v7, v20

    .line 2584
    const/16 v20, 0x1

    move/from16 v8, v20

    goto :goto_1

    .line 2586
    :cond_0
    move/from16 v20, v7

    if-ltz v20, :cond_1

    move/from16 v20, v7

    const/16 v21, 0x3e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move/from16 v20, v7

    const/16 v21, 0x2f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2587
    .line 2679
    :cond_1
    :goto_2
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2680
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 2681
    .local v8, "empty":Z
    move/from16 v20, v7

    const/16 v21, 0x2f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2683
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v20

    move/from16 v7, v20

    .line 2684
    move/from16 v20, v7

    const/16 v21, 0x3e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 2685
    const/16 v20, 0x1

    move/from16 v8, v20

    .line 2689
    :cond_2
    :goto_3
    move/from16 v20, v8

    if-nez v20, :cond_1a

    .line 2691
    move/from16 v20, v7

    const/16 v21, 0x3e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 2692
    move-object/from16 v20, v2

    const-string/jumbo v21, "missing \'>\' after start element"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    .line 2719
    .end local v2    # "this":Lgnu/xquery/lang/XQParser;
    .end local v8    # "empty":Z
    :goto_4
    return-object v2

    .line 2588
    .restart local v2    # "this":Lgnu/xquery/lang/XQParser;
    .local v8, "sawSpace":Z
    :cond_3
    move/from16 v20, v8

    if-nez v20, :cond_4

    .line 2589
    move-object/from16 v20, v2

    const-string/jumbo v21, "missing space before attribute"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    .line 2590
    :cond_4
    move-object/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2591
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v20

    .line 2592
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v9, v20

    .line 2593
    .local v9, "vecSize":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v20, v0

    const/16 v21, 0x41

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v20, v0

    const/16 v21, 0x51

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 2594
    goto/16 :goto_2

    .line 2595
    :cond_5
    new-instance v20, Ljava/lang/String;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v10, v20

    .line 2596
    .local v10, "attrName":Ljava/lang/String;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v11, v20

    .line 2597
    .local v11, "startLine":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v12, v20

    .line 2598
    .local v12, "startColumn":I
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 2599
    .local v13, "definingNamespace":Ljava/lang/String;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v20, v0

    const/16 v21, 0x41

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2601
    move-object/from16 v20, v10

    const-string/jumbo v21, "xmlns"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2602
    const-string/jumbo v20, ""

    move-object/from16 v13, v20

    .line 2609
    :cond_6
    :goto_5
    move-object/from16 v20, v13

    if-eqz v20, :cond_8

    const/16 v20, 0x0

    :goto_6
    move-object/from16 v14, v20

    .line 2612
    .local v14, "makeAttr":Lgnu/expr/Expression;
    move-object/from16 v20, v4

    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v10

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2613
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v20

    move/from16 v7, v20

    .line 2614
    move/from16 v20, v7

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 2616
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2617
    move-object/from16 v20, v2

    const-string/jumbo v21, "missing \'=\' after attribute"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 2606
    .end local v14    # "makeAttr":Lgnu/expr/Expression;
    :cond_7
    move-object/from16 v20, v10

    const-string/jumbo v21, "xmlns:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2607
    move-object/from16 v20, v10

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    goto :goto_5

    .line 2609
    :cond_8
    sget-object v20, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    goto :goto_6

    .line 2619
    .restart local v14    # "makeAttr":Lgnu/expr/Expression;
    :cond_9
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v20

    move/from16 v7, v20

    .line 2620
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    move/from16 v20, v0

    move/from16 v15, v20

    .line 2621
    .local v15, "enclosedExpressionsStart":I
    move/from16 v20, v7

    const/16 v21, 0x7b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 2623
    move-object/from16 v20, v2

    const-string/jumbo v21, "enclosed attribute value expression should be quoted"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 2624
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2628
    :goto_7
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v21, v9

    sub-int v20, v20, v21

    move/from16 v16, v20

    .line 2629
    .local v16, "n":I
    move-object/from16 v20, v13

    if-eqz v20, :cond_13

    .line 2631
    const-string/jumbo v20, ""

    move-object/from16 v17, v20

    .line 2632
    .local v17, "ns":Ljava/lang/String;
    move/from16 v20, v16

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 2633
    const-string/jumbo v20, ""

    move-object/from16 v17, v20

    .line 2646
    :goto_8
    move-object/from16 v20, v4

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 2647
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v22, v17

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2648
    move-object/from16 v20, v13

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 2649
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 2650
    :cond_a
    move-object/from16 v20, v6

    move-object/from16 v18, v20

    .line 2651
    .local v18, "nsb":Lgnu/xml/NamespaceBinding;
    :goto_9
    move-object/from16 v20, v18

    if-eqz v20, :cond_b

    .line 2653
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 2655
    move-object/from16 v20, v2

    const/16 v21, 0x65

    move-object/from16 v22, v13

    if-nez v22, :cond_10

    const-string/jumbo v22, "duplicate default namespace declaration"

    :goto_a
    const-string/jumbo v23, "XQST0071"

    invoke-virtual/range {v20 .. v23}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2660
    .line 2663
    :cond_b
    new-instance v20, Lgnu/xml/NamespaceBinding;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v13

    move-object/from16 v23, v17

    const-string/jumbo v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v24}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object/from16 v6, v20

    .line 2678
    .end local v17    # "ns":Ljava/lang/String;
    .end local v18    # "nsb":Lgnu/xml/NamespaceBinding;
    :goto_c
    goto/16 :goto_0

    .line 2627
    .end local v16    # "n":I
    :cond_c
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    goto/16 :goto_7

    .line 2634
    .restart local v16    # "n":I
    .restart local v17    # "ns":Ljava/lang/String;
    :cond_d
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 2635
    move-object/from16 v20, v2

    const-string/jumbo v21, "enclosed expression not allowed in namespace declaration"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_8

    .line 2638
    :cond_e
    move-object/from16 v20, v4

    move/from16 v21, v9

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 2640
    .local v18, "x":Ljava/lang/Object;
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v20, v18

    check-cast v20, Lgnu/expr/ApplyExp;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v19, v21

    .local v19, "ax":Lgnu/expr/ApplyExp;
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v20

    sget-object v21, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2642
    move-object/from16 v20, v19

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v18, v20

    .line 2643
    .end local v18    # "x":Ljava/lang/Object;
    .end local v19    # "ax":Lgnu/expr/ApplyExp;
    :cond_f
    move-object/from16 v20, v18

    check-cast v20, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    goto/16 :goto_8

    .line 2655
    .local v18, "nsb":Lgnu/xml/NamespaceBinding;
    :cond_10
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "duplicate namespace prefix \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x27

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 2651
    :cond_11
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v20

    move-object/from16 v18, v20

    goto/16 :goto_9

    .line 2663
    :cond_12
    move-object/from16 v23, v17

    goto/16 :goto_b

    .line 2670
    .end local v17    # "ns":Ljava/lang/String;
    .end local v18    # "nsb":Lgnu/xml/NamespaceBinding;
    :cond_13
    move/from16 v20, v16

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 2671
    .local v5, "args":[Lgnu/expr/Expression;
    move/from16 v20, v16

    move/from16 v17, v20

    .local v17, "i":I
    :goto_d
    add-int/lit8 v17, v17, -0x1

    move/from16 v20, v17

    if-ltz v20, :cond_14

    .line 2672
    move-object/from16 v20, v5

    move/from16 v21, v17

    move-object/from16 v22, v4

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgnu/expr/Expression;

    aput-object v22, v20, v21

    goto :goto_d

    .line 2673
    :cond_14
    move-object/from16 v20, v4

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 2674
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v14

    move-object/from16 v23, v5

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v17, v20

    .line 2675
    .local v17, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v20, v2

    move-object/from16 v21, v17

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v20 .. v23}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2676
    move-object/from16 v20, v4

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2687
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v9    # "vecSize":I
    .end local v10    # "attrName":Ljava/lang/String;
    .end local v11    # "startLine":I
    .end local v12    # "startColumn":I
    .end local v13    # "definingNamespace":Ljava/lang/String;
    .end local v14    # "makeAttr":Lgnu/expr/Expression;
    .end local v15    # "enclosedExpressionsStart":I
    .end local v16    # "n":I
    .end local v17    # "aexp":Lgnu/expr/ApplyExp;
    .local v8, "empty":Z
    :cond_15
    move-object/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_3

    .line 2693
    :cond_16
    move-object/from16 v20, v2

    const/16 v21, 0x3c

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2694
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v20

    move/from16 v7, v20

    .line 2695
    move/from16 v20, v7

    if-ltz v20, :cond_19

    .line 2697
    move/from16 v20, v7

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v20

    if-nez v20, :cond_17

    .line 2698
    move-object/from16 v20, v2

    const-string/jumbo v21, "invalid tag syntax after \'</\'"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 2699
    :cond_17
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v20

    .line 2700
    new-instance v20, Ljava/lang/String;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v9, v20

    .line 2701
    .local v9, "tag":Ljava/lang/String;
    move-object/from16 v20, v9

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 2702
    move-object/from16 v20, v2

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\'<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ">\' closed by \'</"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ">\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 2703
    :cond_18
    move-object/from16 v20, v2

    const-string/jumbo v21, "comment not allowed in element end tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2704
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v20

    move/from16 v7, v20

    .line 2705
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2707
    .end local v9    # "tag":Ljava/lang/String;
    :cond_19
    move/from16 v20, v7

    const/16 v21, 0x3e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    .line 2708
    move-object/from16 v20, v2

    const-string/jumbo v21, "missing \'>\' after end element"

    invoke-virtual/range {v20 .. v21}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 2710
    :cond_1a
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 2711
    .restart local v5    # "args":[Lgnu/expr/Expression;
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2712
    new-instance v20, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object/from16 v9, v20

    .line 2713
    .local v9, "mkElement":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 2717
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 2718
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    new-instance v22, Lgnu/expr/QuoteExp;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    move-object/from16 v24, v9

    invoke-direct/range {v23 .. v24}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v23, v5

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v10, v20

    .line 2719
    .local v10, "result":Lgnu/expr/Expression;
    move-object/from16 v20, v10

    move-object/from16 v2, v20

    goto/16 :goto_4
.end method

.method parseEnclosedExpr()Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2408
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    move-object v1, v6

    .line 2409
    .local v1, "saveErrorIfComment":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2410
    move-object v6, v0

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v6

    move v2, v6

    .line 2411
    .local v2, "saveReadState":C
    move-object v6, v0

    const-string/jumbo v7, "unexpected end-of-file after \'{\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v6

    .line 2412
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 2413
    .local v3, "startLine":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 2414
    .local v4, "startColumn":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 2415
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 2418
    .local v5, "exp":Lgnu/expr/Expression;
    :goto_0
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_0

    .line 2419
    .line 2433
    :goto_1
    move-object v6, v0

    move-object v7, v5

    move v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2434
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2435
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2436
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 2420
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x29

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_2

    .line 2422
    :cond_1
    move-object v6, v0

    const-string/jumbo v7, "missing \'}\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 2423
    goto :goto_1

    .line 2425
    :cond_2
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_3

    .line 2426
    move-object v6, v0

    const-string/jumbo v7, "missing \'}\' or \',\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 2430
    :goto_2
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 2428
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    goto :goto_2
.end method

.method parseEntityOrCharRef()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 2198
    .local v1, "next":I
    move v6, v1

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    .line 2201
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 2202
    move v6, v1

    const/16 v7, 0x78

    if-ne v6, v7, :cond_1

    .line 2204
    const/16 v6, 0x10

    move v2, v6

    .line 2205
    .local v2, "base":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 2209
    :goto_0
    const/4 v6, 0x0

    move v3, v6

    .line 2210
    .local v3, "value":I
    :goto_1
    move v6, v1

    if-ltz v6, :cond_0

    .line 2212
    move v6, v1

    int-to-char v6, v6

    move v4, v6

    .line 2213
    .local v4, "ch":C
    move v6, v4

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    move v5, v6

    .line 2214
    .local v5, "digit":I
    move v6, v5

    if-gez v6, :cond_2

    .line 2215
    .line 2222
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    :cond_0
    :goto_2
    move v6, v1

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_4

    .line 2224
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2225
    move-object v6, v0

    const-string/jumbo v7, "invalid character reference"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2234
    .line 2257
    .end local v2    # "base":I
    .end local v3    # "value":I
    :goto_3
    return-void

    .line 2208
    :cond_1
    const/16 v6, 0xa

    move v2, v6

    .restart local v2    # "base":I
    goto :goto_0

    .line 2216
    .restart local v3    # "value":I
    .restart local v4    # "ch":C
    .restart local v5    # "digit":I
    :cond_2
    move v6, v3

    const/high16 v7, 0x8000000

    if-lt v6, v7, :cond_3

    .line 2217
    goto :goto_2

    .line 2218
    :cond_3
    move v6, v3

    move v7, v2

    mul-int/2addr v6, v7

    move v3, v6

    .line 2219
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    .line 2220
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 2221
    goto :goto_1

    .line 2228
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    :cond_4
    move v6, v3

    if-lez v6, :cond_5

    move v6, v3

    const v7, 0xd7ff

    if-le v6, v7, :cond_7

    :cond_5
    move v6, v3

    const v7, 0xe000

    if-lt v6, v7, :cond_6

    move v6, v3

    const v7, 0xfffd

    if-le v6, v7, :cond_7

    :cond_6
    move v6, v3

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_8

    move v6, v3

    const v7, 0x10ffff

    if-gt v6, v7, :cond_8

    .line 2231
    :cond_7
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_3

    .line 2233
    :cond_8
    move-object v6, v0

    const/16 v7, 0x65

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid character value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "XQST0090"

    invoke-virtual {v6, v7, v8, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2237
    .end local v2    # "base":I
    .end local v3    # "value":I
    :cond_9
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v2, v6

    .line 2238
    .local v2, "saveLength":I
    :goto_4
    move v6, v1

    if-ltz v6, :cond_a

    .line 2240
    move v6, v1

    int-to-char v6, v6

    move v3, v6

    .line 2241
    .local v3, "ch":C
    move v6, v3

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2242
    .line 2246
    .end local v3    # "ch":C
    :cond_a
    move v6, v1

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_c

    .line 2248
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2249
    move-object v6, v0

    const-string/jumbo v7, "invalid entity reference"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2250
    goto/16 :goto_3

    .line 2243
    .restart local v3    # "ch":C
    :cond_b
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2244
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v1, v6

    .line 2245
    goto :goto_4

    .line 2252
    .end local v3    # "ch":C
    :cond_c
    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v11, v2

    sub-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    .line 2254
    .local v3, "ref":Ljava/lang/String;
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2255
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->appendNamedEntity(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method parseExpr()Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1638
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method parseExprSequence(IZ)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2752
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "rightToken":I
    move v2, p2

    .local v2, "optional":Z
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    move v6, v1

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 2754
    :cond_0
    move v5, v2

    if-nez v5, :cond_1

    .line 2755
    move-object v5, v0

    const-string/jumbo v6, "missing expression"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 2756
    :cond_1
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v5

    .line 2773
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 2758
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_2
    const/4 v5, 0x0

    move-object v3, v5

    .line 2761
    .local v3, "exp":Lgnu/expr/Expression;
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 2763
    .local v4, "exp1":Lgnu/expr/Expression;
    move-object v5, v3

    if-nez v5, :cond_4

    move-object v5, v4

    :goto_2
    move-object v3, v5

    .line 2764
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    move v6, v1

    if-eq v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2765
    .line 2773
    :cond_3
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 2763
    :cond_4
    move-object v5, v3

    move-object v6, v4

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_2

    .line 2766
    :cond_5
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v5, :cond_6

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    .line 2767
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 2768
    :cond_6
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_8

    .line 2769
    move-object v5, v0

    move v6, v1

    const/16 v7, 0x29

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "expected \')\'"

    :goto_3
    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "confused by syntax error"

    goto :goto_3

    .line 2771
    :cond_8
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 2772
    goto :goto_1
.end method

.method final parseExprSingle()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1644
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curLine:I

    move v1, v3

    .line 1645
    .local v1, "startLine":I
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curColumn:I

    move v2, v3

    .line 1646
    .local v2, "startColumn":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v3

    .line 1647
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    packed-switch v3, :pswitch_data_0

    .line 1666
    move-object v3, v0

    const/16 v4, 0x190

    invoke-static {v4}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 1654
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->parseIfExpr()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1656
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->parseTypeSwitch()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1658
    :pswitch_2
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1660
    :pswitch_3
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1662
    :pswitch_4
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1664
    :pswitch_5
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public parseFLWRExpression(Z)Lgnu/expr/Expression;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3208
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v1, p1

    .local v1, "isFor":Z
    move-object v12, v0

    iget v12, v12, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move v2, v12

    .line 3209
    .local v2, "flworDeclsSave":I
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iput v13, v12, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3210
    move-object v12, v0

    move v13, v1

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v12

    move-object v3, v12

    .line 3212
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v12, v0

    const-string/jumbo v13, "order"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3214
    move-object v12, v0

    move v13, v1

    if-eqz v13, :cond_0

    const/16 v13, 0x66

    :goto_0
    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v12

    move v4, v12

    .line 3215
    .local v4, "saveNesting":C
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3216
    move-object v12, v0

    const-string/jumbo v13, "by"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3217
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3220
    :goto_1
    new-instance v12, Ljava/util/Stack;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    move-object v5, v12

    .line 3223
    .local v5, "specs":Ljava/util/Stack;
    :goto_2
    const/4 v12, 0x0

    move v6, v12

    .line 3224
    .local v6, "descending":Z
    move-object v12, v0

    iget-char v12, v12, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    move v7, v12

    .line 3226
    .local v7, "emptyOrder":C
    new-instance v12, Lgnu/expr/LambdaExp;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget v14, v14, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move-object v15, v0

    iget v15, v15, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v14, v15

    invoke-direct {v13, v14}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v8, v12

    .line 3227
    .local v8, "lexp":Lgnu/expr/LambdaExp;
    move-object v12, v0

    iget v12, v12, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move v9, v12

    .local v9, "i":I
    :goto_3
    move v12, v9

    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v12, v13, :cond_2

    .line 3228
    move-object v12, v8

    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move v14, v9

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v12

    .line 3227
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3214
    .end local v4    # "saveNesting":C
    .end local v5    # "specs":Ljava/util/Stack;
    .end local v6    # "descending":Z
    .end local v7    # "emptyOrder":C
    .end local v8    # "lexp":Lgnu/expr/LambdaExp;
    .end local v9    # "i":I
    :cond_0
    const/16 v13, 0x6c

    goto :goto_0

    .line 3219
    .restart local v4    # "saveNesting":C
    :cond_1
    move-object v12, v0

    const-string/jumbo v13, "missing \'by\' following \'order\'"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3229
    .restart local v5    # "specs":Ljava/util/Stack;
    .restart local v6    # "descending":Z
    .restart local v7    # "emptyOrder":C
    .restart local v8    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v9    # "i":I
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3230
    move-object v12, v8

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3231
    move-object v12, v0

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3232
    move-object v12, v5

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3234
    move-object v12, v0

    const-string/jumbo v13, "ascending"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3235
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3241
    :cond_3
    :goto_4
    move-object v12, v0

    const-string/jumbo v13, "empty"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3243
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3244
    move-object v12, v0

    const-string/jumbo v13, "greatest"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3246
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3247
    const/16 v12, 0x47

    move v7, v12

    .line 3258
    :cond_4
    :goto_5
    move-object v12, v5

    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    if-eqz v16, :cond_a

    const-string/jumbo v16, "D"

    :goto_6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3259
    move-object v12, v0

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    move-object v9, v12

    .line 3260
    .local v9, "collation":Lgnu/xquery/util/NamedCollator;
    move-object v12, v0

    const-string/jumbo v13, "collation"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3262
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 3263
    .local v10, "uri":Ljava/lang/Object;
    move-object v12, v10

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 3267
    move-object v12, v0

    move-object v13, v10

    :try_start_0
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 3268
    .local v11, "uriString":Ljava/lang/String;
    move-object v12, v11

    invoke-static {v12}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v9, v12

    .line 3273
    .line 3275
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_5
    :goto_7
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3277
    .end local v10    # "uri":Ljava/lang/Object;
    :cond_6
    move-object v12, v5

    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v9

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3278
    move-object v12, v0

    iget v12, v12, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_b

    .line 3279
    .line 3282
    move-object v12, v0

    const-string/jumbo v13, "return"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 3283
    move-object v12, v0

    const-string/jumbo v13, "expected \'return\' clause"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v0, v12

    .line 3307
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v4    # "saveNesting":C
    .end local v5    # "specs":Ljava/util/Stack;
    .end local v6    # "descending":Z
    .end local v7    # "emptyOrder":C
    .end local v8    # "lexp":Lgnu/expr/LambdaExp;
    .end local v9    # "collation":Lgnu/xquery/util/NamedCollator;
    :goto_8
    return-object v0

    .line 3236
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v4    # "saveNesting":C
    .restart local v5    # "specs":Ljava/util/Stack;
    .restart local v6    # "descending":Z
    .restart local v7    # "emptyOrder":C
    .restart local v8    # "lexp":Lgnu/expr/LambdaExp;
    .local v9, "i":I
    :cond_7
    move-object v12, v0

    const-string/jumbo v13, "descending"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3238
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3239
    const/4 v12, 0x1

    move v6, v12

    goto/16 :goto_4

    .line 3249
    :cond_8
    move-object v12, v0

    const-string/jumbo v13, "least"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3251
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3252
    const/16 v12, 0x4c

    move v7, v12

    goto/16 :goto_5

    .line 3255
    :cond_9
    move-object v12, v0

    const-string/jumbo v13, "\'empty\' sequence order must be \'greatest\' or \'least\'"

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3258
    :cond_a
    const-string/jumbo v16, "A"

    goto/16 :goto_6

    .line 3270
    .local v9, "collation":Lgnu/xquery/util/NamedCollator;
    .restart local v10    # "uri":Ljava/lang/Object;
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 3272
    .local v11, "name":Ljava/lang/Exception;
    move-object v12, v0

    const/16 v13, 0x65

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unknown collation \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "XQST0076"

    invoke-virtual {v12, v13, v14, v15}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3280
    .end local v10    # "uri":Ljava/lang/Object;
    .end local v11    # "name":Ljava/lang/Exception;
    :cond_b
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3281
    goto/16 :goto_2

    .line 3284
    :cond_c
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    .line 3286
    new-instance v12, Lgnu/expr/LambdaExp;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget v14, v14, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move-object v15, v0

    iget v15, v15, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v14, v15

    invoke-direct {v13, v14}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v6, v12

    .line 3288
    .end local v8    # "lexp":Lgnu/expr/LambdaExp;
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    move-object v12, v0

    iget v12, v12, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move v7, v12

    .local v7, "i":I
    :goto_9
    move v12, v7

    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v12, v13, :cond_d

    .line 3289
    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v12

    .line 3288
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 3290
    :cond_d
    move-object v12, v0

    move v13, v4

    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3291
    move-object v12, v0

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3292
    move-object v12, v6

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3293
    move-object v12, v0

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3294
    move-object v12, v5

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v7, v12

    .line 3295
    .local v7, "nspecs":I
    const/4 v12, 0x2

    move v13, v7

    add-int/2addr v12, v13

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object v8, v12

    .line 3296
    .local v8, "args":[Lgnu/expr/Expression;
    move-object v12, v8

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    .line 3297
    move-object v12, v8

    const/4 v13, 0x1

    move-object v14, v6

    aput-object v14, v12, v13

    .line 3298
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_a
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_e

    .line 3299
    move-object v12, v8

    const/4 v13, 0x2

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v5

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Expression;

    aput-object v14, v12, v13

    .line 3298
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 3300
    :cond_e
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string/jumbo v14, "gnu.xquery.util.OrderedMap"

    const-string/jumbo v15, "orderedMap"

    invoke-static {v14, v15}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v12

    goto/16 :goto_8

    .line 3305
    .end local v4    # "saveNesting":C
    .end local v5    # "specs":Ljava/util/Stack;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "nspecs":I
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v9    # "i":I
    :cond_f
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    iput v13, v12, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    .line 3306
    move-object v12, v0

    move v13, v2

    iput v13, v12, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3307
    move-object v12, v3

    move-object v0, v12

    goto/16 :goto_8
.end method

.method public parseFLWRInner(Z)Lgnu/expr/Expression;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3321
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v3, p1

    .local v3, "isFor":Z
    move-object/from16 v21, v2

    move/from16 v22, v3

    if-eqz v22, :cond_0

    const/16 v22, 0x66

    :goto_0
    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v21

    move/from16 v4, v21

    .line 3322
    .local v4, "saveNesting":C
    move-object/from16 v21, v2

    const/16 v22, 0x24

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3323
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v5, v21

    .line 3324
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v5

    if-nez v21, :cond_1

    .line 3325
    move-object/from16 v21, v2

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "missing Variable - saw "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/xquery/lang/XQParser;->tokenString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    .line 3479
    .end local v2    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return-object v2

    .line 3321
    .end local v4    # "saveNesting":C
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .restart local v2    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    const/16 v22, 0x6c

    goto :goto_0

    .line 3326
    .restart local v4    # "saveNesting":C
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    :cond_1
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 3327
    move-object/from16 v21, v2

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    .line 3334
    :cond_2
    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v23, v0

    move-object/from16 v28, v22

    move/from16 v29, v23

    move/from16 v22, v29

    move-object/from16 v23, v28

    move/from16 v24, v29

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move-object/from16 v23, v5

    aput-object v23, v21, v22

    .line 3335
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3337
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 3339
    .local v6, "type":Lgnu/expr/Expression;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v8, v21

    .line 3340
    .local v8, "inits":[Lgnu/expr/Expression;
    const/16 v21, 0x0

    move-object/from16 v9, v21

    .line 3341
    .local v9, "posDecl":Lgnu/expr/Declaration;
    move/from16 v21, v3

    if-eqz v21, :cond_d

    .line 3343
    move-object/from16 v21, v2

    const-string/jumbo v22, "at"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    move/from16 v10, v21

    .line 3344
    .local v10, "sawAt":Z
    new-instance v21, Lgnu/expr/LambdaExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move/from16 v23, v10

    if-eqz v23, :cond_a

    const/16 v23, 0x2

    :goto_3
    invoke-direct/range {v22 .. v23}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object/from16 v11, v21

    .line 3345
    .local v11, "lexp":Lgnu/expr/LambdaExp;
    move/from16 v21, v10

    if-eqz v21, :cond_4

    .line 3347
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3348
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x24

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 3350
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v9, v21

    .line 3351
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3353
    :cond_3
    move-object/from16 v21, v9

    if-nez v21, :cond_4

    .line 3354
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing Variable after \'at\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 3356
    :cond_4
    move-object/from16 v21, v11

    move-object/from16 v7, v21

    .line 3357
    .local v7, "sc":Lgnu/expr/ScopeExp;
    move-object/from16 v21, v2

    const-string/jumbo v22, "in"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 3358
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3365
    .line 3379
    .end local v10    # "sawAt":Z
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    :goto_4
    move-object/from16 v21, v8

    const/16 v22, 0x0

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    .line 3380
    move-object/from16 v21, v6

    if-eqz v21, :cond_5

    move/from16 v21, v3

    if-nez v21, :cond_5

    .line 3381
    move-object/from16 v21, v8

    const/16 v22, 0x0

    move-object/from16 v23, v8

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v24, v6

    invoke-static/range {v23 .. v24}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v23

    aput-object v23, v21, v22

    .line 3382
    :cond_5
    move-object/from16 v21, v2

    move/from16 v22, v4

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3383
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3384
    move-object/from16 v21, v7

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3385
    move-object/from16 v21, v6

    if-eqz v21, :cond_6

    .line 3386
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3387
    :cond_6
    move/from16 v21, v3

    if-eqz v21, :cond_7

    .line 3389
    move-object/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3390
    move-object/from16 v21, v5

    const-wide/32 v22, 0x40000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3392
    :cond_7
    move-object/from16 v21, v9

    if-eqz v21, :cond_8

    .line 3394
    move-object/from16 v21, v7

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3395
    move-object/from16 v21, v9

    sget-object v22, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 3396
    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3397
    move-object/from16 v21, v9

    const-wide/32 v22, 0x40000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3400
    :cond_8
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x2c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 3402
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3403
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x24

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 3404
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing $NAME after \',\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 3328
    .end local v6    # "type":Lgnu/expr/Expression;
    .end local v7    # "sc":Lgnu/expr/ScopeExp;
    .end local v8    # "inits":[Lgnu/expr/Expression;
    .end local v9    # "posDecl":Lgnu/expr/Declaration;
    :cond_9
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 3330
    const/16 v21, 0x2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    move-object/from16 v6, v21

    .line 3331
    .local v6, "tmp":[Lgnu/expr/Declaration;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v6

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v25, v0

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    goto/16 :goto_2

    .line 3344
    .local v6, "type":Lgnu/expr/Expression;
    .restart local v8    # "inits":[Lgnu/expr/Expression;
    .restart local v9    # "posDecl":Lgnu/expr/Declaration;
    .restart local v10    # "sawAt":Z
    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_3

    .line 3361
    .restart local v7    # "sc":Lgnu/expr/ScopeExp;
    .restart local v11    # "lexp":Lgnu/expr/LambdaExp;
    :cond_b
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x4c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 3362
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3363
    :cond_c
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'in\' in \'for\' clause"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    goto/16 :goto_4

    .line 3368
    .end local v7    # "sc":Lgnu/expr/ScopeExp;
    .end local v10    # "sawAt":Z
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    :cond_d
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x4c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 3369
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3376
    :goto_5
    new-instance v21, Lgnu/expr/LetExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v8

    invoke-direct/range {v22 .. v23}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v10, v21

    .line 3377
    .local v10, "let":Lgnu/expr/LetExp;
    move-object/from16 v21, v10

    move-object/from16 v7, v21

    .restart local v7    # "sc":Lgnu/expr/ScopeExp;
    goto/16 :goto_4

    .line 3372
    .end local v7    # "sc":Lgnu/expr/ScopeExp;
    .end local v10    # "let":Lgnu/expr/LetExp;
    :cond_e
    move-object/from16 v21, v2

    const-string/jumbo v22, "in"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 3373
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3374
    :cond_f
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \':=\' in \'let\' clause"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    goto :goto_5

    .line 3405
    .restart local v7    # "sc":Lgnu/expr/ScopeExp;
    :cond_10
    move-object/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v10, v21

    .line 3466
    .local v10, "body":Lgnu/expr/Expression;
    :goto_6
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3467
    move/from16 v21, v3

    if-eqz v21, :cond_20

    .line 3469
    move-object/from16 v21, v7

    check-cast v21, Lgnu/expr/LambdaExp;

    move-object/from16 v11, v21

    .line 3470
    .restart local v11    # "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v21, v11

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3471
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    move-object/from16 v24, v7

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    move-object/from16 v24, v8

    const/16 v25, 0x0

    aget-object v24, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v12, v21

    .line 3472
    .local v12, "args":[Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const-string/jumbo v23, "gnu.kawa.functions.ValuesMap"

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    const-string/jumbo v24, "valuesMap"

    :goto_7
    invoke-static/range {v23 .. v24}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v24, v12

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 3407
    .end local v10    # "body":Lgnu/expr/Expression;
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_11
    move-object/from16 v21, v2

    const-string/jumbo v22, "for"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 3409
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3410
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x24

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 3411
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing $NAME after \'for\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 3412
    :cond_12
    move-object/from16 v21, v2

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v10, v21

    .restart local v10    # "body":Lgnu/expr/Expression;
    goto/16 :goto_6

    .line 3414
    .end local v10    # "body":Lgnu/expr/Expression;
    :cond_13
    move-object/from16 v21, v2

    const-string/jumbo v22, "let"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 3416
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3417
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x24

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 3418
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing $NAME after \'let\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 3419
    :cond_14
    move-object/from16 v21, v2

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v10, v21

    .restart local v10    # "body":Lgnu/expr/Expression;
    goto/16 :goto_6

    .line 3424
    .end local v10    # "body":Lgnu/expr/Expression;
    :cond_15
    move-object/from16 v21, v2

    const/16 v22, 0x77

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v21

    move/from16 v12, v21

    .line 3425
    .local v12, "save":C
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0xc4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 3427
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3428
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v11, v21

    .line 3436
    .local v11, "cond":Lgnu/expr/Expression;
    :goto_8
    move-object/from16 v21, v2

    move/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3437
    move-object/from16 v21, v2

    const-string/jumbo v22, "stable"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    move/from16 v13, v21

    .line 3438
    .local v13, "sawStable":Z
    move/from16 v21, v13

    if-eqz v21, :cond_16

    .line 3439
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3440
    :cond_16
    move-object/from16 v21, v2

    const-string/jumbo v22, "return"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    move/from16 v14, v21

    .line 3441
    .local v14, "sawReturn":Z
    move-object/from16 v21, v2

    const-string/jumbo v22, "order"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    move/from16 v15, v21

    .line 3442
    .local v15, "sawOrder":Z
    move/from16 v21, v14

    if-nez v21, :cond_19

    move/from16 v21, v15

    if-nez v21, :cond_19

    move-object/from16 v21, v2

    const-string/jumbo v22, "let"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_19

    move-object/from16 v21, v2

    const-string/jumbo v22, "for"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_19

    .line 3443
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'return\' clause"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 3430
    .end local v11    # "cond":Lgnu/expr/Expression;
    .end local v13    # "sawStable":Z
    .end local v14    # "sawReturn":Z
    .end local v15    # "sawOrder":Z
    :cond_17
    move-object/from16 v21, v2

    const-string/jumbo v22, "where"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 3432
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v11, v21

    .restart local v11    # "cond":Lgnu/expr/Expression;
    goto :goto_8

    .line 3435
    .end local v11    # "cond":Lgnu/expr/Expression;
    :cond_18
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .restart local v11    # "cond":Lgnu/expr/Expression;
    goto :goto_8

    .line 3444
    .restart local v13    # "sawStable":Z
    .restart local v14    # "sawReturn":Z
    .restart local v15    # "sawOrder":Z
    :cond_19
    move/from16 v21, v15

    if-nez v21, :cond_1a

    .line 3445
    move-object/from16 v21, v2

    const-string/jumbo v22, "unexpected eof-of-file after \'return\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v21

    .line 3446
    :cond_1a
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v16, v21

    .line 3447
    .local v16, "bodyLine":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v17, v21

    .line 3448
    .local v17, "bodyColumn":I
    move/from16 v21, v14

    if-eqz v21, :cond_1b

    .line 3449
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3450
    :cond_1b
    move/from16 v21, v15

    if-eqz v21, :cond_1e

    .line 3452
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v18, v21

    .line 3453
    .local v18, "ndecls":I
    move/from16 v21, v18

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v19, v21

    .line 3454
    .local v19, "args":[Lgnu/expr/Expression;
    const/16 v21, 0x0

    move/from16 v20, v21

    .local v20, "i":I
    :goto_9
    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1c

    .line 3455
    move-object/from16 v21, v19

    move/from16 v22, v20

    new-instance v23, Lgnu/expr/ReferenceExp;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v26, v0

    move/from16 v27, v20

    add-int v26, v26, v27

    aget-object v25, v25, v26

    invoke-direct/range {v24 .. v25}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v23, v21, v22

    .line 3454
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 3456
    :cond_1c
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Lgnu/expr/PrimProcedure;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    const-string/jumbo v25, "gnu.xquery.util.OrderedMap"

    const-string/jumbo v26, "makeTuple$V"

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v27}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v24, v19

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v10, v21

    .line 3462
    .end local v18    # "ndecls":I
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v20    # "i":I
    .restart local v10    # "body":Lgnu/expr/Expression;
    :goto_a
    move-object/from16 v21, v11

    if-eqz v21, :cond_1d

    .line 3463
    new-instance v21, Lgnu/expr/IfExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v11

    invoke-static/range {v23 .. v23}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v24, v10

    sget-object v25, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct/range {v22 .. v25}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v10, v21

    .line 3464
    :cond_1d
    move-object/from16 v21, v2

    move-object/from16 v22, v10

    move/from16 v23, v16

    move/from16 v24, v17

    invoke-virtual/range {v21 .. v24}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_6

    .line 3461
    .end local v10    # "body":Lgnu/expr/Expression;
    :cond_1e
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v10, v21

    .restart local v10    # "body":Lgnu/expr/Expression;
    goto :goto_a

    .line 3472
    .end local v13    # "sawStable":Z
    .end local v14    # "sawReturn":Z
    .end local v15    # "sawOrder":Z
    .end local v16    # "bodyLine":I
    .end local v17    # "bodyColumn":I
    .local v11, "lexp":Lgnu/expr/LambdaExp;
    .local v12, "args":[Lgnu/expr/Expression;
    :cond_1f
    const-string/jumbo v24, "valuesMapWithPos"

    goto/16 :goto_7

    .line 3478
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_20
    move-object/from16 v21, v7

    check-cast v21, Lgnu/expr/LetExp;

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 3479
    move-object/from16 v21, v7

    move-object/from16 v2, v21

    goto/16 :goto_1
.end method

.method public parseFunctionDefinition(II)Lgnu/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3544
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v2, p1

    .local v2, "declLine":I
    move/from16 v3, p2

    .local v3, "declColumn":I
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x51

    if-eq v11, v12, :cond_0

    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x41

    if-eq v11, v12, :cond_0

    .line 3545
    move-object v11, v1

    const-string/jumbo v12, "missing function name"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v1, v11

    .line 3630
    .end local v1    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v1

    .line 3546
    .restart local v1    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    new-instance v11, Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v14, 0x0

    move-object v15, v1

    iget v15, v15, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v11

    .line 3547
    .local v4, "name":Ljava/lang/String;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v12}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object v14, v1

    iget v14, v14, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v11, v12, v13, v14}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3548
    move-object v11, v1

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v5, v11

    .line 3549
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 3550
    .local v6, "uri":Ljava/lang/String;
    move-object v11, v6

    const-string/jumbo v12, "http://www.w3.org/XML/1998/namespace"

    if-eq v11, v12, :cond_1

    move-object v11, v6

    const-string/jumbo v12, "http://www.w3.org/2001/XMLSchema"

    if-eq v11, v12, :cond_1

    move-object v11, v6

    const-string/jumbo v12, "http://www.w3.org/2001/XMLSchema-instance"

    if-eq v11, v12, :cond_1

    move-object v11, v6

    const-string/jumbo v12, "http://www.w3.org/2005/xpath-functions"

    if-ne v11, v12, :cond_3

    .line 3555
    :cond_1
    move-object v11, v1

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cannot declare function in standard namespace \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x27

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "XQST0045"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_2
    :goto_1
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3571
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x28

    if-eq v11, v12, :cond_7

    .line 3572
    move-object v11, v1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "missing parameter list:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0

    .line 3559
    :cond_3
    move-object v11, v6

    const-string/jumbo v12, ""

    if-ne v11, v12, :cond_5

    .line 3561
    move-object v11, v1

    move-object v12, v1

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v12}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x65

    :goto_2
    const-string/jumbo v13, "cannot declare function in empty namespace"

    const-string/jumbo v14, "XQST0060"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v12, 0x77

    goto :goto_2

    .line 3565
    :cond_5
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object v11, v6

    move-object v12, v1

    iget-object v12, v12, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eq v11, v12, :cond_2

    const-string/jumbo v11, "http://www.w3.org/2005/xquery-local-functions"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v11}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3568
    :cond_6
    move-object v11, v1

    const/16 v12, 0x65

    const-string/jumbo v13, "function not in namespace of library module"

    const-string/jumbo v14, "XQST0048"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3573
    :cond_7
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3574
    new-instance v11, Lgnu/expr/LambdaExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v7, v11

    .line 3575
    .local v7, "lexp":Lgnu/expr/LambdaExp;
    move-object v11, v1

    move-object v12, v7

    move v13, v2

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3576
    move-object v11, v7

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 3577
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v11}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 3578
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v11}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3579
    move-object v11, v8

    const-wide/16 v12, 0x800

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3580
    :cond_8
    move-object v11, v7

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 3581
    move-object v11, v8

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3582
    move-object v11, v8

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 3583
    move-object v11, v1

    move-object v12, v8

    move v13, v2

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3584
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3585
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x29

    if-eq v11, v12, :cond_9

    .line 3590
    :goto_3
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v9, v11

    .line 3591
    .local v9, "param":Lgnu/expr/Declaration;
    move-object v11, v9

    if-nez v11, :cond_b

    .line 3592
    move-object v11, v1

    const-string/jumbo v12, "missing parameter name"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3601
    :goto_4
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x29

    if-ne v11, v12, :cond_c

    .line 3602
    .line 3621
    .end local v9    # "param":Lgnu/expr/Declaration;
    :cond_9
    :goto_5
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3622
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v11

    move-object v9, v11

    .line 3623
    .local v9, "retType":Lgnu/expr/Expression;
    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3624
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3625
    move-object v11, v9

    if-eqz v11, :cond_a

    .line 3626
    move-object v11, v7

    move-object v12, v9

    move-object v13, v1

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 3627
    :cond_a
    new-instance v11, Lgnu/expr/SetExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v8

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v10, v11

    .line 3628
    .local v10, "sexp":Lgnu/expr/SetExp;
    move-object v11, v10

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 3629
    move-object v11, v8

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3630
    move-object v11, v10

    move-object v1, v11

    goto/16 :goto_0

    .line 3595
    .end local v10    # "sexp":Lgnu/expr/SetExp;
    .local v9, "param":Lgnu/expr/Declaration;
    :cond_b
    move-object v11, v7

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3596
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3597
    move-object v11, v7

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lgnu/expr/LambdaExp;->min_args:I

    .line 3598
    move-object v11, v7

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lgnu/expr/LambdaExp;->max_args:I

    .line 3599
    move-object v11, v9

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    goto :goto_4

    .line 3603
    :cond_c
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_11

    .line 3605
    move-object v11, v1

    const-string/jumbo v12, "missing \',\' in parameter list"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v10, v11

    .line 3608
    .local v10, "err":Lgnu/expr/Expression;
    :cond_d
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3609
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ltz v11, :cond_e

    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x3b

    if-eq v11, v12, :cond_e

    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x3b

    if-ne v11, v12, :cond_f

    .line 3610
    :cond_e
    move-object v11, v10

    move-object v1, v11

    goto/16 :goto_0

    .line 3611
    :cond_f
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x29

    if-ne v11, v12, :cond_10

    .line 3612
    goto/16 :goto_5

    .line 3613
    :cond_10
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_d

    .line 3614
    .line 3616
    .line 3619
    .end local v10    # "err":Lgnu/expr/Expression;
    :goto_6
    goto/16 :goto_3

    .line 3618
    :cond_11
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    goto :goto_6
.end method

.method public parseIfExpr()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3135
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v6, v0

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v6

    move v1, v6

    .line 3136
    .local v1, "saveReadState1":C
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 3137
    move-object v6, v0

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v6

    move v2, v6

    .line 3138
    .local v2, "saveReadState2":C
    move-object v6, v0

    const/16 v7, 0x29

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v6

    move-object v3, v6

    .line 3139
    .local v3, "cond":Lgnu/expr/Expression;
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3140
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 3141
    move-object v6, v0

    const-string/jumbo v7, "missing \')\' - unexpected end-of-file"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 3142
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 3143
    move-object v6, v0

    const-string/jumbo v7, "then"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3144
    move-object v6, v0

    const-string/jumbo v7, "missing \'then\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 3147
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 3148
    .local v4, "thenPart":Lgnu/expr/Expression;
    move-object v6, v0

    const-string/jumbo v7, "else"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3149
    move-object v6, v0

    const-string/jumbo v7, "missing \'else\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 3152
    :goto_1
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3153
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 3154
    .local v5, "elsePart":Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/IfExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-static {v8}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v6

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 3146
    .end local v4    # "thenPart":Lgnu/expr/Expression;
    .end local v5    # "elsePart":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    goto :goto_0

    .line 3151
    .restart local v4    # "thenPart":Lgnu/expr/Expression;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    goto :goto_1
.end method

.method parseIntersectExceptExpr()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1781
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 1784
    .local v1, "exp":Lgnu/expr/Expression;
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v4

    move v2, v4

    .line 1785
    .local v2, "op":I
    move v4, v2

    const/16 v5, 0x1a4

    if-eq v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x1a5

    if-eq v4, v5, :cond_0

    .line 1786
    .line 1791
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 1787
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1788
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 1789
    .local v3, "exp2":Lgnu/expr/Expression;
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 1790
    goto :goto_0
.end method

.method public parseItemType()Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1586
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v5

    .line 1587
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v5

    move-object v1, v5

    .line 1589
    .local v1, "etype":Lgnu/expr/Expression;
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 1591
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v6, 0x43

    if-ne v5, v6, :cond_0

    .line 1593
    sget-object v5, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    move-object v2, v5

    .line 1613
    .local v2, "type":Lgnu/bytecode/Type;
    :goto_0
    move-object v5, v2

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v2    # "type":Lgnu/bytecode/Type;
    :goto_1
    return-object v0

    .line 1595
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v5, v1

    move-object v0, v5

    goto :goto_1

    .line 1597
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xed

    if-ne v5, v6, :cond_2

    .line 1599
    move-object v5, v0

    invoke-direct {v5}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1600
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "type":Lgnu/bytecode/Type;
    goto :goto_0

    .line 1602
    .end local v2    # "type":Lgnu/bytecode/Type;
    :cond_2
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x41

    if-eq v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x51

    if-ne v5, v6, :cond_4

    .line 1604
    :cond_3
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v5

    .line 1605
    .local v3, "tname":Ljava/lang/String;
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 1606
    .local v4, "rexp":Lgnu/expr/ReferenceExp;
    move-object v5, v4

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 1607
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object v8, v0

    iget v8, v8, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 1608
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 1609
    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    .line 1612
    .end local v3    # "tname":Ljava/lang/String;
    .end local v4    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_4
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public parseMaybeKindTest()Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1536
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    packed-switch v3, :pswitch_data_0

    .line 1578
    const/4 v3, 0x0

    move-object v0, v3

    .line 1580
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .local v1, "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 1540
    .end local v1    # "type":Lgnu/bytecode/Type;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0xec

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->parseNamedNodeType(Z)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1543
    :pswitch_1
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1544
    sget-object v3, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    move-object v1, v3

    .line 1580
    .restart local v1    # "type":Lgnu/bytecode/Type;
    :goto_2
    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1548
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_2
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1549
    sget-object v3, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    move-object v1, v3

    .line 1550
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_2

    .line 1553
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_3
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1554
    sget-object v3, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    move-object v1, v3

    .line 1555
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_2

    .line 1558
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_4
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1559
    sget-object v3, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object v1, v3

    .line 1560
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_2

    .line 1563
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_5
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 1564
    const/4 v3, 0x0

    move-object v2, v3

    .line 1565
    .local v2, "piTarget":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 1567
    :cond_1
    new-instance v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    .line 1568
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 1570
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    .line 1571
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 1574
    :goto_3
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/xml/ProcessingInstructionType;->getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;

    move-result-object v3

    move-object v1, v3

    .line 1575
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_2

    .line 1573
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_3
    move-object v3, v0

    const-string/jumbo v4, "expected \')\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 1536
    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseMaybePrimaryExpr()Lgnu/expr/Expression;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2867
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/lang/XQParser;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v21, v0

    move/from16 v3, v21

    .line 2868
    .local v3, "startLine":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 2869
    .local v4, "startColumn":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v21

    move/from16 v5, v21

    .line 2874
    .local v5, "token":I
    move/from16 v21, v5

    sparse-switch v21, :sswitch_data_0

    .line 3117
    const/16 v21, 0x0

    move-object/from16 v2, v21

    .line 3129
    .end local v2    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v2

    .line 2877
    .restart local v2    # "this":Lgnu/xquery/lang/XQParser;
    :sswitch_0
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 3128
    .local v6, "exp":Lgnu/expr/Expression;
    :cond_0
    :goto_1
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3129
    move-object/from16 v21, v6

    move-object/from16 v2, v21

    goto :goto_0

    .line 2881
    .end local v6    # "exp":Lgnu/expr/Expression;
    :sswitch_1
    new-instance v21, Ljava/util/Stack;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    move-object/from16 v12, v21

    .line 2884
    .local v12, "extArgs":Ljava/util/Stack;
    :goto_2
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 2886
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x51

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 2887
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing pragma name"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v13, v21

    .line 2890
    .local v13, "qname":Lgnu/expr/Expression;
    :goto_3
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 2891
    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v14, v21

    .line 2893
    .local v14, "sbuf":Ljava/lang/StringBuffer;
    const/16 v21, -0x1

    move/from16 v16, v21

    .line 2894
    .local v16, "spaces":I
    :cond_1
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v21

    move/from16 v15, v21

    .local v15, "ch":I
    add-int/lit8 v16, v16, 0x1

    .line 2895
    move/from16 v21, v15

    if-ltz v21, :cond_2

    move/from16 v21, v15

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v21

    if-nez v21, :cond_1

    .line 2896
    :cond_2
    :goto_4
    move/from16 v21, v15

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v21

    const/16 v22, 0x29

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 2898
    :cond_3
    move/from16 v21, v15

    if-gez v21, :cond_4

    .line 2899
    move-object/from16 v21, v2

    const-string/jumbo v22, "pragma ended by end-of-file"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2900
    :cond_4
    move/from16 v21, v16

    if-nez v21, :cond_5

    .line 2901
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing space between pragma and extension content"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2902
    :cond_5
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 2903
    move-object/from16 v21, v14

    move/from16 v22, v15

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v21

    .line 2904
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v21

    move/from16 v15, v21

    goto :goto_4

    .line 2889
    .end local v13    # "qname":Lgnu/expr/Expression;
    .end local v14    # "sbuf":Ljava/lang/StringBuffer;
    .end local v15    # "ch":I
    .end local v16    # "spaces":I
    :cond_6
    new-instance v21, Ljava/lang/String;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v21

    move-object/from16 v13, v21

    .restart local v13    # "qname":Lgnu/expr/Expression;
    goto/16 :goto_3

    .line 2906
    .restart local v14    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v15    # "ch":I
    .restart local v16    # "spaces":I
    :cond_7
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v21

    .line 2907
    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 2908
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 2909
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0xc5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 2910
    .line 2912
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 2914
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 2915
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7d

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 2917
    move-object/from16 v21, v2

    const/16 v22, 0x7b

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v21

    move/from16 v13, v21

    .line 2918
    .local v13, "saveReadState":C
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    const/16 v23, 0x7d

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 2919
    move-object/from16 v21, v2

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2920
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 2921
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'}\' - unexpected end-of-file"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2923
    .end local v13    # "saveReadState":C
    :cond_8
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    .line 2924
    .local v11, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v12

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 2925
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Lgnu/expr/ReferenceExp;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    sget-object v25, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v24, v11

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v6, v21

    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2911
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v11    # "args":[Lgnu/expr/Expression;
    .local v13, "qname":Lgnu/expr/Expression;
    :cond_9
    goto/16 :goto_2

    .line 2928
    :cond_a
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'{\' after pragma"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 2929
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2932
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v12    # "extArgs":Ljava/util/Stack;
    .end local v13    # "qname":Lgnu/expr/Expression;
    .end local v14    # "sbuf":Ljava/lang/StringBuffer;
    .end local v15    # "ch":I
    .end local v16    # "spaces":I
    :sswitch_2
    move-object/from16 v21, v2

    const-string/jumbo v22, "saw unexpected \'{\' - assume you meant \'(\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 2933
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v21

    .line 2934
    goto/16 :goto_1

    .line 2937
    .end local v6    # "exp":Lgnu/expr/Expression;
    :sswitch_3
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v21

    move/from16 v13, v21

    .line 2938
    .local v13, "next":I
    move/from16 v21, v13

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 2940
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 2942
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x51

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x43

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 2944
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "saw end tag \'</"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v26, v0

    invoke-direct/range {v23 .. v26}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ">\' not in an element constructor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v14, v21

    .line 2947
    .local v14, "msg":Ljava/lang/String;
    :goto_5
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2948
    move-object/from16 v21, v2

    move/from16 v22, v4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2949
    move-object/from16 v21, v2

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 2950
    .restart local v6    # "exp":Lgnu/expr/Expression;
    :goto_6
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x195

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 2951
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    goto :goto_6

    .line 2946
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v14    # "msg":Ljava/lang/String;
    :cond_c
    const-string/jumbo v21, "saw end tag \'</\' not in an element constructor"

    move-object/from16 v14, v21

    .restart local v14    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 2952
    .restart local v6    # "exp":Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v21, v6

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 2956
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v14    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v21, v2

    move/from16 v22, v13

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 2957
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual/range {v21 .. v24}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2959
    goto/16 :goto_1

    .line 2962
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v13    # "next":I
    :sswitch_4
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Ljava/lang/String;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v21

    .line 2963
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2966
    .end local v6    # "exp":Lgnu/expr/Expression;
    :sswitch_5
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v25, v0

    const/16 v26, 0xa

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v21

    .line 2968
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2972
    .end local v6    # "exp":Lgnu/expr/Expression;
    :sswitch_6
    new-instance v21, Ljava/lang/String;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v14, v21

    .line 2976
    .local v14, "str":Ljava/lang/String;
    move/from16 v21, v5

    const/16 v22, 0x31

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 2977
    :try_start_0
    new-instance v21, Ljava/math/BigDecimal;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v14

    invoke-direct/range {v22 .. v23}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v21

    .line 2980
    :goto_7
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v15

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v21

    .line 2985
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2979
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_f
    new-instance v21, Ljava/lang/Double;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v14

    invoke-direct/range {v22 .. v23}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v15, v21

    .local v15, "val":Ljava/lang/Double;
    goto :goto_7

    .line 2982
    .end local v15    # "val":Ljava/lang/Double;
    :catch_0
    move-exception v21

    move-object/from16 v15, v21

    .line 2984
    .local v15, "ex":Ljava/lang/Throwable;
    move-object/from16 v21, v2

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "invalid decimal literal: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 2986
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2988
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "ex":Ljava/lang/Throwable;
    :sswitch_7
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 2989
    .local v15, "name":Ljava/lang/Object;
    move-object/from16 v21, v15

    if-nez v21, :cond_10

    .line 2990
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing Variable"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 2991
    :cond_10
    new-instance v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v15

    invoke-direct/range {v22 .. v23}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v21

    .line 2992
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2993
    goto/16 :goto_1

    .line 2995
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v15    # "name":Ljava/lang/Object;
    :sswitch_8
    new-instance v21, Ljava/lang/String;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v15, v21

    .line 2996
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v21, v2

    const/16 v22, 0x28

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v21

    move/from16 v16, v21

    .line 2997
    .local v16, "save":C
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 2998
    new-instance v21, Ljava/util/Vector;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0xa

    invoke-direct/range {v22 .. v23}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v10, v21

    .line 2999
    .local v10, "vec":Ljava/util/Vector;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x29

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 3003
    :goto_8
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v17, v21

    .line 3004
    .local v17, "arg":Lgnu/expr/Expression;
    move-object/from16 v21, v10

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3005
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x29

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 3006
    .line 3012
    .end local v17    # "arg":Lgnu/expr/Expression;
    :cond_11
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    .line 3014
    .restart local v11    # "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3015
    new-instance v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v15

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object/from16 v17, v21

    .line 3016
    .local v17, "rexp":Lgnu/expr/ReferenceExp;
    move-object/from16 v21, v17

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 3017
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v17

    move-object/from16 v24, v11

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v6, v21

    .line 3018
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual/range {v21 .. v24}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3019
    move-object/from16 v21, v2

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3020
    goto/16 :goto_1

    .line 3007
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v11    # "args":[Lgnu/expr/Expression;
    .local v17, "arg":Lgnu/expr/Expression;
    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x2c

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 3008
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \')\' after function call"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 3009
    :cond_13
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3010
    goto/16 :goto_8

    .line 3028
    .end local v10    # "vec":Ljava/util/Vector;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "save":C
    .end local v17    # "arg":Lgnu/expr/Expression;
    :sswitch_9
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3029
    new-instance v21, Ljava/util/Vector;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    move-object/from16 v10, v21

    .line 3032
    .restart local v10    # "vec":Ljava/util/Vector;
    move/from16 v21, v5

    const/16 v22, 0xfb

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    move/from16 v21, v5

    const/16 v22, 0xfc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 3035
    :cond_14
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x51

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 3036
    :cond_15
    move-object/from16 v21, v2

    move/from16 v22, v5

    const/16 v23, 0xfb

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    const/16 v22, 0x1

    :goto_9
    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .line 3041
    .local v19, "element":Lgnu/expr/Expression;
    :goto_a
    move-object/from16 v21, v10

    move-object/from16 v22, v19

    move/from16 v23, v5

    const/16 v24, 0xfb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    const/16 v23, 0x1

    :goto_b
    invoke-static/range {v22 .. v23}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3042
    move/from16 v21, v5

    const/16 v22, 0xfb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 3044
    new-instance v21, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object/from16 v20, v21

    .line 3045
    .local v20, "mk":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v21, v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 3046
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v20

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v18, v21

    .line 3050
    .end local v20    # "mk":Lgnu/kawa/xml/MakeElement;
    .local v18, "func":Lgnu/expr/Expression;
    :goto_c
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3051
    .line 3082
    .end local v19    # "element":Lgnu/expr/Expression;
    :goto_d
    move-object/from16 v21, v2

    const/16 v22, 0x7b

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v21

    move/from16 v19, v21

    .line 3083
    .local v19, "saveReadState":C
    move-object/from16 v21, v2

    const-string/jumbo v22, "unexpected end-of-file after \'{\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v21

    .line 3084
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7b

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    .line 3085
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'{\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 3036
    .end local v18    # "func":Lgnu/expr/Expression;
    .end local v19    # "saveReadState":C
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 3037
    :cond_17
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 3038
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .local v19, "element":Lgnu/expr/Expression;
    goto/16 :goto_a

    .line 3040
    .end local v19    # "element":Lgnu/expr/Expression;
    :cond_18
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing element/attribute name"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 3041
    .restart local v19    # "element":Lgnu/expr/Expression;
    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_b

    .line 3049
    :cond_1a
    sget-object v21, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object/from16 v18, v21

    .restart local v18    # "func":Lgnu/expr/Expression;
    goto :goto_c

    .line 3052
    .end local v18    # "func":Lgnu/expr/Expression;
    .end local v19    # "element":Lgnu/expr/Expression;
    :cond_1b
    move/from16 v21, v5

    const/16 v22, 0x100

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 3053
    const-string/jumbo v21, "gnu.kawa.xml.DocumentConstructor"

    const-string/jumbo v22, "documentConstructor"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v18, v21

    .restart local v18    # "func":Lgnu/expr/Expression;
    goto :goto_d

    .line 3055
    .end local v18    # "func":Lgnu/expr/Expression;
    :cond_1c
    move/from16 v21, v5

    const/16 v22, 0xfe

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 3056
    const-string/jumbo v21, "gnu.kawa.xml.CommentConstructor"

    const-string/jumbo v22, "commentConstructor"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v18, v21

    .restart local v18    # "func":Lgnu/expr/Expression;
    goto/16 :goto_d

    .line 3058
    .end local v18    # "func":Lgnu/expr/Expression;
    :cond_1d
    move/from16 v21, v5

    const/16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 3061
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 3062
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Ljava/lang/String;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v19, v21

    .line 3074
    .local v19, "target":Lgnu/expr/Expression;
    :cond_1e
    :goto_e
    move-object/from16 v21, v10

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3075
    const-string/jumbo v21, "gnu.kawa.xml.MakeProcInst"

    const-string/jumbo v22, "makeProcInst"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v18, v21

    .line 3077
    .restart local v18    # "func":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3078
    goto/16 :goto_d

    .line 3064
    .end local v18    # "func":Lgnu/expr/Expression;
    .end local v19    # "target":Lgnu/expr/Expression;
    :cond_1f
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 3066
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .restart local v19    # "target":Lgnu/expr/Expression;
    goto :goto_e

    .line 3070
    .end local v19    # "target":Lgnu/expr/Expression;
    :cond_20
    move-object/from16 v21, v2

    const-string/jumbo v22, "expected NCName or \'{\' after \'processing-instruction\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .line 3071
    .restart local v19    # "target":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x51

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    .line 3072
    move-object/from16 v21, v19

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 3080
    .end local v19    # "target":Lgnu/expr/Expression;
    :cond_21
    const-string/jumbo v21, "gnu.kawa.xml.MakeText"

    const-string/jumbo v22, "makeText"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v18, v21

    .restart local v18    # "func":Lgnu/expr/Expression;
    goto/16 :goto_d

    .line 3086
    .local v19, "saveReadState":C
    :cond_22
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3087
    move/from16 v21, v5

    const/16 v22, 0xfd

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_23

    move/from16 v21, v5

    const/16 v22, 0xfe

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_23

    move/from16 v21, v5

    const/16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_26

    .line 3089
    :cond_23
    move-object/from16 v21, v10

    move-object/from16 v22, v2

    const/16 v23, 0x7d

    move/from16 v24, v5

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    const/16 v24, 0x1

    :goto_f
    invoke-virtual/range {v22 .. v24}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3099
    :cond_24
    move-object/from16 v21, v2

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3100
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7d

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_27

    .line 3101
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'}\'"

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 3089
    :cond_25
    const/16 v24, 0x0

    goto :goto_f

    .line 3090
    :cond_26
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x7d

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_24

    .line 3092
    move-object/from16 v21, v10

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3093
    :goto_10
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v21, v0

    const/16 v22, 0x2c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    .line 3095
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3096
    move-object/from16 v21, v10

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_10

    .line 3102
    :cond_27
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    .line 3103
    .restart local v11    # "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3104
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v18

    move-object/from16 v24, v11

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v6, v21

    .line 3105
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual/range {v21 .. v24}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3106
    move/from16 v21, v5

    const/16 v22, 0x100

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_28

    move/from16 v21, v5

    const/16 v22, 0xfb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 3107
    :cond_28
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    goto/16 :goto_1

    .line 3112
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v10    # "vec":Ljava/util/Vector;
    .end local v11    # "args":[Lgnu/expr/Expression;
    .end local v18    # "func":Lgnu/expr/Expression;
    .end local v19    # "saveReadState":C
    :sswitch_a
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v21

    .line 3113
    move-object/from16 v21, v2

    const/16 v22, 0x7d

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 3114
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 2874
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x24 -> :sswitch_7
        0x28 -> :sswitch_0
        0x30 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x46 -> :sswitch_8
        0x7b -> :sswitch_2
        0xc5 -> :sswitch_1
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_9
        0xfc -> :sswitch_9
        0xfd -> :sswitch_9
        0xfe -> :sswitch_9
        0xff -> :sswitch_9
        0x100 -> :sswitch_9
        0x194 -> :sswitch_3
    .end sparse-switch
.end method

.method parseNameTest(Z)Lgnu/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1828
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v1, p1

    .local v1, "attribute":Z
    const/4 v6, 0x0

    move-object v2, v6

    .local v2, "local":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 1829
    .local v3, "prefix":Ljava/lang/String;
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x51

    if-ne v6, v7, :cond_3

    .line 1831
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v4, v6

    .line 1832
    .local v4, "colon":I
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    add-int/lit8 v4, v4, -0x1

    move v7, v4

    aget-char v6, v6, v7

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    new-instance v6, Ljava/lang/String;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    .line 1834
    add-int/lit8 v4, v4, 0x1

    .line 1835
    new-instance v6, Ljava/lang/String;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v11, v4

    sub-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    .line 1879
    .end local v4    # "colon":I
    :cond_1
    :goto_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 1880
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1881
    :cond_2
    const/4 v6, 0x3

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v4, v6

    .line 1882
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v6, v4

    const/4 v7, 0x0

    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Lgnu/expr/ReferenceExp;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    sget-object v12, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    invoke-direct {v11, v12}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v8, v6, v7

    .line 1884
    move-object v6, v4

    const/4 v7, 0x1

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v2

    if-nez v10, :cond_d

    const-string/jumbo v10, ""

    :goto_2
    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    .line 1885
    move-object v6, v4

    const/4 v7, 0x2

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    .line 1886
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    sget-object v8, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string/jumbo v9, "make"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v5, v6

    .line 1889
    .local v5, "make":Lgnu/expr/ApplyExp;
    move-object v6, v5

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1890
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v5    # "make":Lgnu/expr/ApplyExp;
    :goto_3
    return-object v0

    .line 1838
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_3
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19f

    if-ne v6, v7, :cond_9

    .line 1840
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v4, v6

    .line 1841
    .local v4, "next":I
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 1842
    move v6, v4

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_5

    .line 1843
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1862
    :cond_4
    :goto_4
    new-instance v6, Lgnu/mapping/Symbol;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    move-object v0, v6

    goto :goto_3

    .line 1846
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v4, v6

    .line 1847
    move v6, v4

    if-gez v6, :cond_6

    .line 1848
    move-object v6, v0

    const-string/jumbo v7, "unexpected end-of-file after \'*:\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 1849
    :cond_6
    move v6, v4

    int-to-char v6, v6

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1851
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1852
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    .line 1853
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x41

    if-eq v6, v7, :cond_7

    .line 1854
    move-object v6, v0

    const-string/jumbo v7, "invalid name test"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_4

    .line 1856
    :cond_7
    new-instance v6, Ljava/lang/String;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_4

    .line 1859
    :cond_8
    move v6, v4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_4

    .line 1860
    move-object v6, v0

    const-string/jumbo v7, "missing local-name after \'*:\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_4

    .line 1864
    .end local v4    # "next":I
    :cond_9
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x41

    if-ne v6, v7, :cond_b

    .line 1866
    new-instance v6, Ljava/lang/String;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    .line 1867
    move v6, v1

    if-eqz v6, :cond_a

    .line 1868
    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    sget-object v8, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    goto/16 :goto_3

    .line 1869
    :cond_a
    const/4 v6, 0x0

    move-object v3, v6

    goto/16 :goto_1

    .line 1871
    :cond_b
    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x43

    if-ne v6, v7, :cond_1

    .line 1873
    new-instance v6, Ljava/lang/String;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    .line 1874
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    move v4, v6

    .line 1875
    .restart local v4    # "next":I
    move v6, v4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_c

    .line 1876
    move-object v6, v0

    const-string/jumbo v7, "invalid characters after \'NCName:\'"

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 1877
    :cond_c
    const-string/jumbo v6, ""

    move-object v2, v6

    goto/16 :goto_1

    .line 1884
    .local v4, "args":[Lgnu/expr/Expression;
    :cond_d
    move-object v10, v2

    goto/16 :goto_2
.end method

.method public parseNamedNodeType(Z)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1394
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "attribute":Z
    const/4 v4, 0x0

    move-object v3, v4

    .line 1395
    .local v3, "tname":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1396
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x29

    if-ne v4, v5, :cond_0

    .line 1398
    sget-object v4, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    move-object v2, v4

    .line 1399
    .local v2, "qname":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1428
    :goto_0
    move v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 1403
    .end local v2    # "qname":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x51

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    if-ne v4, v5, :cond_4

    .line 1404
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v4

    move-object v2, v4

    .line 1412
    .restart local v2    # "qname":Lgnu/expr/Expression;
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1413
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    .line 1415
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1416
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x51

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    if-ne v4, v5, :cond_6

    .line 1418
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 1423
    :cond_3
    :goto_2
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x29

    if-ne v4, v5, :cond_7

    .line 1424
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    goto :goto_0

    .line 1407
    .end local v2    # "qname":Lgnu/expr/Expression;
    :cond_4
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19f

    if-eq v4, v5, :cond_5

    .line 1408
    move-object v4, v0

    const-string/jumbo v5, "expected QName or *"

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1409
    :cond_5
    sget-object v4, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "qname":Lgnu/expr/Expression;
    goto :goto_1

    .line 1421
    :cond_6
    move-object v4, v0

    const-string/jumbo v5, "expected QName"

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_2

    .line 1426
    :cond_7
    move-object v4, v0

    const-string/jumbo v5, "expected \')\' after element"

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseNodeTest(I)Lgnu/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1896
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v1, p1

    .local v1, "axis":I
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v9

    move v2, v9

    .line 1897
    .local v2, "token":I
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v3, v9

    .line 1899
    .local v3, "args":[Lgnu/expr/Expression;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 1901
    .local v4, "etype":Lgnu/expr/Expression;
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 1903
    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v4

    aput-object v11, v9, v10

    .line 1917
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v9, v9, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v5, v9

    .line 1919
    .local v5, "dotDecl":Lgnu/expr/Declaration;
    move-object v9, v5

    if-nez v9, :cond_8

    .line 1920
    move-object v9, v0

    const-string/jumbo v10, "node test when context item is undefined"

    const-string/jumbo v11, "XPDY0002"

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v6, v9

    .line 1923
    .local v6, "dot":Lgnu/expr/Expression;
    :goto_1
    move-object v9, v4

    if-nez v9, :cond_0

    .line 1924
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v9

    .line 1927
    :cond_0
    move v9, v1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    .line 1928
    :cond_1
    sget-object v9, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    move-object v7, v9

    .line 1953
    .local v7, "makeAxisStep":Lgnu/expr/Expression;
    :goto_2
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v7

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v8, v9

    .line 1954
    .local v8, "mkAxis":Lgnu/expr/ApplyExp;
    move-object v9, v8

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1955
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v8

    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v6

    aput-object v15, v13, v14

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v9

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v5    # "dotDecl":Lgnu/expr/Declaration;
    .end local v6    # "dot":Lgnu/expr/Expression;
    .end local v7    # "makeAxisStep":Lgnu/expr/Expression;
    .end local v8    # "mkAxis":Lgnu/expr/ApplyExp;
    :goto_3
    return-object v0

    .line 1905
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_2
    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x41

    if-eq v9, v10, :cond_3

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x51

    if-eq v9, v10, :cond_3

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x43

    if-eq v9, v10, :cond_3

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x19f

    if-ne v9, v10, :cond_6

    .line 1908
    :cond_3
    move-object v9, v3

    const/4 v10, 0x0

    move v11, v1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_4
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v12, v13}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    aput-object v11, v9, v10

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 1912
    :cond_6
    move v9, v1

    if-ltz v9, :cond_7

    .line 1913
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unsupported axis \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    move v12, v1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "::\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    goto :goto_3

    .line 1915
    :cond_7
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_3

    .line 1922
    .restart local v5    # "dotDecl":Lgnu/expr/Declaration;
    :cond_8
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    sget-object v11, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v6, v9

    .restart local v6    # "dot":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 1929
    :cond_9
    move v9, v1

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    .line 1930
    sget-object v9, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    move-object v7, v9

    .restart local v7    # "makeAxisStep":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 1934
    .end local v7    # "makeAxisStep":Lgnu/expr/Expression;
    :cond_a
    move v9, v1

    packed-switch v9, :pswitch_data_0

    .line 1946
    :pswitch_0
    new-instance v9, Ljava/lang/Error;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/Error;-><init>()V

    throw v9

    .line 1936
    :pswitch_1
    const-string/jumbo v9, "DescendantOrSelf"

    move-object v8, v9

    .line 1948
    .local v8, "axisName":Ljava/lang/String;
    :goto_6
    new-instance v9, Lgnu/expr/PrimProcedure;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "gnu.kawa.xml."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Axis"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "make"

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    move-object v7, v9

    .restart local v7    # "makeAxisStep":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 1937
    .end local v7    # "makeAxisStep":Lgnu/expr/Expression;
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v9, "Self"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1938
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v9, "Parent"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1939
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v9, "Ancestor"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1940
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v9, "AncestorOrSelf"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1941
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v9, "Following"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1942
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v9, "FollowingSibling"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1943
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v9, "Preceding"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1944
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v9, "PrecedingSibling"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1945
    .end local v8    # "axisName":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v9, "Attribute"

    move-object v8, v9

    .restart local v8    # "axisName":Ljava/lang/String;
    goto :goto_6

    .line 1934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
    .end packed-switch
.end method

.method public parseOptionalTypeDeclaration()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1463
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    const-string/jumbo v2, "as"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1464
    const/4 v1, 0x0

    move-object v0, v1

    .line 1466
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 1465
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v1

    .line 1466
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method parseParenExpr()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2740
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 2741
    move-object v3, v0

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    move v1, v3

    .line 2742
    .local v1, "saveReadState":C
    move-object v3, v0

    const/16 v4, 0x29

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v3

    move-object v2, v3

    .line 2743
    .local v2, "exp":Lgnu/expr/Expression;
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2744
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2745
    move-object v3, v0

    const-string/jumbo v4, "missing \')\' - unexpected end-of-file"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2746
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method parsePathExpr()Lgnu/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1798
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x44

    if-ne v5, v6, :cond_5

    .line 1800
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v2, v5

    .line 1802
    .local v2, "dotDecl":Lgnu/expr/Declaration;
    move-object v5, v2

    if-nez v5, :cond_2

    .line 1803
    move-object v5, v0

    const-string/jumbo v6, "context item is undefined"

    const-string/jumbo v7, "XPDY0002"

    invoke-virtual {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 1806
    .local v3, "dot":Lgnu/expr/Expression;
    :goto_0
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "gnu.xquery.util.NodeUtils"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string/jumbo v8, "rootDocument"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v1, v5

    .line 1809
    .local v1, "step1":Lgnu/expr/Expression;
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v5

    move v4, v5

    .line 1810
    .local v4, "next":I
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1811
    move v5, v4

    if-ltz v5, :cond_1

    move v5, v4

    const/16 v6, 0x29

    if-eq v5, v6, :cond_1

    move v5, v4

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_4

    .line 1813
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 1814
    move-object v5, v1

    move-object v0, v5

    .line 1819
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "dot":Lgnu/expr/Expression;
    .end local v4    # "next":I
    :goto_2
    return-object v0

    .line 1805
    .end local v1    # "step1":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v2    # "dotDecl":Lgnu/expr/Declaration;
    :cond_2
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v3, v5

    .restart local v3    # "dot":Lgnu/expr/Expression;
    goto :goto_0

    .line 1809
    .restart local v1    # "step1":Lgnu/expr/Expression;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1816
    .line 1819
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "dot":Lgnu/expr/Expression;
    :cond_4
    :goto_3
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_2

    .line 1818
    .end local v1    # "step1":Lgnu/expr/Expression;
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v5

    move-object v1, v5

    .restart local v1    # "step1":Lgnu/expr/Expression;
    goto :goto_3
.end method

.method parsePrimaryExpr()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2183
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->parseMaybePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 2184
    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 2186
    move-object v2, v0

    const-string/jumbo v3, "missing expression"

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 2187
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2188
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v2

    .line 2189
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 2191
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public parseQuantifiedExpr(Z)Lgnu/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3488
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v2, p1

    .local v2, "isEvery":Z
    move-object v11, v1

    move v12, v2

    if-eqz v12, :cond_0

    const/16 v12, 0x65

    :goto_0
    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v11

    move v3, v11

    .line 3489
    .local v3, "saveNesting":C
    move-object v11, v1

    const/16 v12, 0x24

    iput v12, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3490
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v4, v11

    .line 3491
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v11, v4

    if-nez v11, :cond_1

    .line 3492
    move-object v11, v1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "missing Variable token:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v1, v11

    .line 3536
    .end local v1    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return-object v1

    .line 3488
    .end local v3    # "saveNesting":C
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .restart local v1    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    const/16 v12, 0x73

    goto :goto_0

    .line 3493
    .restart local v3    # "saveNesting":C
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3495
    new-instance v11, Lgnu/expr/LambdaExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v5, v11

    .line 3496
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3497
    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3498
    move-object v11, v4

    const-wide/32 v12, 0x40000

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3499
    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3501
    move-object v11, v1

    const-string/jumbo v12, "in"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3502
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3509
    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v1

    invoke-virtual {v14}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v6, v11

    .line 3510
    .local v6, "inits":[Lgnu/expr/Expression;
    move-object v11, v1

    move v12, v3

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3511
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3513
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_5

    .line 3515
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3516
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x24

    if-eq v11, v12, :cond_4

    .line 3517
    move-object v11, v1

    const-string/jumbo v12, "missing $NAME after \',\'"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v1, v11

    goto :goto_1

    .line 3505
    .end local v6    # "inits":[Lgnu/expr/Expression;
    :cond_2
    move-object v11, v1

    iget v11, v11, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x4c

    if-ne v11, v12, :cond_3

    .line 3506
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3507
    :cond_3
    move-object v11, v1

    const-string/jumbo v12, "missing \'in\' in QuantifiedExpr"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    goto :goto_2

    .line 3518
    .restart local v6    # "inits":[Lgnu/expr/Expression;
    :cond_4
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v11

    move-object v7, v11

    .line 3533
    .local v7, "body":Lgnu/expr/Expression;
    :goto_3
    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3534
    move-object v11, v5

    move-object v12, v7

    iput-object v12, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3535
    const/4 v11, 0x2

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v5

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    move-object v8, v11

    .line 3536
    .local v8, "args":[Lgnu/expr/Expression;
    new-instance v11, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "gnu.xquery.util.ValuesEvery"

    move v14, v2

    if-eqz v14, :cond_8

    const-string/jumbo v14, "every"

    :goto_4
    invoke-static {v13, v14}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v1, v11

    goto/16 :goto_1

    .line 3522
    .end local v7    # "body":Lgnu/expr/Expression;
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_5
    move-object v11, v1

    const-string/jumbo v12, "satisfies"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    move v8, v11

    .line 3523
    .local v8, "sawSatisfies":Z
    move v11, v8

    if-nez v11, :cond_6

    move-object v11, v1

    const-string/jumbo v12, "every"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object v11, v1

    const-string/jumbo v12, "some"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3524
    move-object v11, v1

    const-string/jumbo v12, "missing \'satisfies\' clause"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_1

    .line 3525
    :cond_6
    move-object v11, v1

    const-string/jumbo v12, "unexpected eof-of-file after \'satisfies\'"

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v11

    .line 3526
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v9, v11

    .line 3527
    .local v9, "bodyLine":I
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v10, v11

    .line 3528
    .local v10, "bodyColumn":I
    move v11, v8

    if-eqz v11, :cond_7

    .line 3529
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v11

    .line 3530
    :cond_7
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v11

    move-object v7, v11

    .line 3531
    .restart local v7    # "body":Lgnu/expr/Expression;
    move-object v11, v1

    move-object v12, v7

    move v13, v9

    move v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_3

    .line 3536
    .end local v9    # "bodyLine":I
    .end local v10    # "bodyColumn":I
    .local v8, "args":[Lgnu/expr/Expression;
    :cond_8
    const-string/jumbo v14, "some"

    goto :goto_4
.end method

.method parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1967
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    const/4 v9, 0x0

    move-object v2, v9

    .line 1969
    .local v2, "beforeSlashSlash":Lgnu/expr/Expression;
    :goto_0
    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x44

    if-ne v9, v10, :cond_4

    .line 1971
    :cond_0
    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x44

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v3, v9

    .line 1973
    .local v3, "descendants":Z
    new-instance v9, Lgnu/expr/LambdaExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v4, v9

    .line 1974
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object v9, v4

    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v10}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v5, v9

    .line 1975
    .local v5, "dotDecl":Lgnu/expr/Declaration;
    move-object v9, v5

    const-wide/32 v10, 0x40000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1976
    move-object v9, v5

    sget-object v10, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 1977
    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1978
    move-object v9, v4

    sget-object v10, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 1979
    move-object v9, v4

    sget-object v10, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 1980
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 1981
    move v9, v3

    if-eqz v9, :cond_2

    .line 1983
    move-object v9, v0

    const/16 v10, 0x2f

    iput v10, v9, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1984
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v6, v9

    .line 1985
    .local v6, "dot":Lgnu/expr/Expression;
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v6

    aput-object v12, v10, v11

    move-object v7, v9

    .line 1986
    .local v7, "args":[Lgnu/expr/Expression;
    sget-object v9, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object v8, v9

    .line 1987
    .local v8, "op":Lgnu/kawa/xml/TreeScanner;
    move-object v9, v4

    new-instance v10, Lgnu/expr/ApplyExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v8

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v10, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1988
    move-object v9, v1

    move-object v2, v9

    .line 2010
    .end local v6    # "dot":Lgnu/expr/Expression;
    .end local v7    # "args":[Lgnu/expr/Expression;
    .end local v8    # "op":Lgnu/kawa/xml/TreeScanner;
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2046
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v4

    aput-object v12, v10, v11

    move-object v6, v9

    .line 2047
    .local v6, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v1, v9

    .line 2048
    goto/16 :goto_0

    .line 1971
    .end local v3    # "descendants":Z
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "dotDecl":Lgnu/expr/Declaration;
    .end local v6    # "args":[Lgnu/expr/Expression;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1992
    .restart local v3    # "descendants":Z
    .restart local v4    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v5    # "dotDecl":Lgnu/expr/Declaration;
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v9

    .line 1993
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v9

    move-object v6, v9

    .line 1998
    .local v6, "exp2":Lgnu/expr/Expression;
    move-object v9, v2

    if-eqz v9, :cond_3

    move-object v9, v6

    instance-of v9, v9, Lgnu/expr/ApplyExp;

    if-eqz v9, :cond_3

    move-object v9, v6

    check-cast v9, Lgnu/expr/ApplyExp;

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v7, v10

    .local v7, "func":Lgnu/expr/Expression;
    instance-of v9, v9, Lgnu/expr/ApplyExp;

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v8, v10

    .local v8, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    if-ne v9, v10, :cond_3

    .line 2003
    move-object v9, v8

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    invoke-virtual {v9, v10}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 2004
    move-object v9, v2

    move-object v1, v9

    .line 2007
    .end local v7    # "func":Lgnu/expr/Expression;
    .end local v8    # "aexp":Lgnu/expr/ApplyExp;
    :cond_3
    move-object v9, v4

    move-object v10, v6

    iput-object v10, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2008
    const/4 v9, 0x0

    move-object v2, v9

    goto :goto_2

    .line 2049
    .end local v3    # "descendants":Z
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "dotDecl":Lgnu/expr/Declaration;
    .end local v6    # "exp2":Lgnu/expr/Expression;
    :cond_4
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method parseSeparator()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3706
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 3707
    .local v1, "startLine":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 3708
    .local v2, "startColumn":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v4

    move v3, v4

    .line 3709
    .local v3, "next":I
    move v4, v3

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    .line 3710
    .line 3719
    :goto_1
    return-void

    .line 3708
    .end local v3    # "next":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 3711
    .restart local v3    # "next":I
    :cond_1
    sget-boolean v4, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v4, :cond_2

    move v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    .line 3713
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 3714
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 3715
    move-object v4, v0

    const/16 v5, 0x77

    const-string/jumbo v6, "missing \';\' after declaration"

    invoke-virtual {v4, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3717
    :cond_2
    move v4, v3

    if-ltz v4, :cond_3

    .line 3718
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3719
    :cond_3
    goto :goto_1
.end method

.method parseStepExpr()Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2056
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x33

    if-ne v5, v6, :cond_5

    .line 2058
    :cond_0
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    const/16 v5, 0xc

    :goto_0
    move v1, v5

    .line 2059
    .local v1, "axis":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 2060
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v2, v5

    .line 2062
    .local v2, "dotDecl":Lgnu/expr/Declaration;
    move-object v5, v2

    if-nez v5, :cond_3

    .line 2063
    move-object v5, v0

    const-string/jumbo v6, "context item is undefined"

    const-string/jumbo v7, "XPDY0002"

    invoke-virtual {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 2066
    .local v3, "exp":Lgnu/expr/Expression;
    :goto_1
    move v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 2068
    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    move-object v4, v5

    .line 2069
    .local v4, "args":[Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget-object v7, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-static {v7}, Lgnu/kawa/xml/ParentAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v3, v5

    .line 2073
    .end local v4    # "args":[Lgnu/expr/Expression;
    :cond_1
    move-object v5, v0

    move-object v6, v3

    move v7, v1

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 2106
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "exp":Lgnu/expr/Expression;
    :goto_3
    return-object v0

    .line 2058
    .end local v1    # "axis":I
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_2
    const/16 v5, 0x9

    goto :goto_0

    .line 2065
    .restart local v1    # "axis":I
    .restart local v2    # "dotDecl":Lgnu/expr/Declaration;
    :cond_3
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v3, v5

    .restart local v3    # "exp":Lgnu/expr/Expression;
    goto :goto_1

    .line 2073
    :cond_4
    move v7, v1

    goto :goto_2

    .line 2075
    .end local v1    # "axis":I
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "exp":Lgnu/expr/Expression;
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v5

    const/16 v6, 0x64

    add-int/lit8 v5, v5, -0x64

    move v1, v5

    .line 2077
    .restart local v1    # "axis":I
    move v5, v1

    if-ltz v5, :cond_6

    move v5, v1

    const/16 v6, 0xd

    if-ge v5, v6, :cond_6

    .line 2079
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 2080
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 2106
    .local v2, "unqualifiedStep":Lgnu/expr/Expression;
    :goto_4
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_3

    .line 2082
    .end local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_6
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x40

    if-ne v5, v6, :cond_7

    .line 2084
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    .line 2085
    const/4 v5, 0x2

    move v1, v5

    .line 2086
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_4

    .line 2088
    .end local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_7
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xec

    if-ne v5, v6, :cond_8

    .line 2090
    const/4 v5, 0x2

    move v1, v5

    .line 2091
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_4

    .line 2095
    .end local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_8
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 2096
    .restart local v2    # "unqualifiedStep":Lgnu/expr/Expression;
    move-object v5, v2

    if-eqz v5, :cond_9

    .line 2098
    const/4 v5, 0x3

    move v1, v5

    goto :goto_4

    .line 2102
    :cond_9
    const/4 v5, -0x1

    move v1, v5

    .line 2103
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->parsePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    goto :goto_4
.end method

.method parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2114
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move/from16 v2, p2

    .local v2, "axis":I
    :goto_0
    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v14, 0x5b

    if-ne v13, v14, :cond_5

    .line 2116
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v3, v13

    .line 2117
    .local v3, "startLine":I
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v4, v13

    .line 2118
    .local v4, "startColumn":I
    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->seenPosition:I

    move v5, v13

    .line 2119
    .local v5, "saveSeenPosition":I
    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->seenLast:I

    move v6, v13

    .line 2120
    .local v6, "saveSawLast":I
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v13

    .line 2121
    new-instance v13, Lgnu/expr/LambdaExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v7, v13

    .line 2122
    .local v7, "lexp":Lgnu/expr/LambdaExp;
    move-object v13, v0

    move-object v14, v7

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2123
    move-object v13, v7

    sget-object v14, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v13, v14}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v8, v13

    .line 2124
    .local v8, "dot":Lgnu/expr/Declaration;
    move v13, v2

    if-ltz v13, :cond_1

    .line 2125
    move-object v13, v8

    sget-object v14, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 2128
    :goto_1
    move-object v13, v7

    sget-object v14, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v15, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v14, v15}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v13

    .line 2129
    move-object v13, v7

    sget-object v14, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v15, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v14, v15}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v13

    .line 2130
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v14, v7

    invoke-virtual {v13, v14}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2131
    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2132
    move-object v13, v0

    const/16 v14, 0x5d

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v13

    move-object v9, v13

    .line 2133
    .local v9, "cond":Lgnu/expr/Expression;
    move-object v13, v0

    iget v13, v13, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 2134
    move-object v13, v0

    const-string/jumbo v14, "missing \']\' - unexpected end-of-file"

    invoke-virtual {v13, v14}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2137
    :cond_0
    move v13, v2

    if-gez v13, :cond_2

    .line 2139
    const/16 v13, 0x50

    move v10, v13

    .line 2140
    .local v10, "kind":C
    sget-object v13, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v11, v13

    .line 2158
    .local v11, "valuesFilter":Lgnu/mapping/Procedure;
    :goto_2
    move-object v13, v0

    move-object v14, v9

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2159
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v14, v7

    invoke-virtual {v13, v14}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2160
    move-object v13, v7

    move-object v14, v9

    iput-object v14, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2161
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v13

    .line 2162
    const/4 v13, 0x2

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v1

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    move-object v12, v13

    .line 2163
    .local v12, "args":[Lgnu/expr/Expression;
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v11

    move-object/from16 v16, v12

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v1, v13

    .line 2164
    goto/16 :goto_0

    .line 2127
    .end local v9    # "cond":Lgnu/expr/Expression;
    .end local v10    # "kind":C
    .end local v11    # "valuesFilter":Lgnu/mapping/Procedure;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_1
    move-object v13, v8

    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 2142
    .restart local v9    # "cond":Lgnu/expr/Expression;
    :cond_2
    move v13, v2

    if-eqz v13, :cond_3

    move v13, v2

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    move v13, v2

    const/16 v14, 0x9

    if-eq v13, v14, :cond_3

    move v13, v2

    const/16 v14, 0xa

    if-eq v13, v14, :cond_3

    move v13, v2

    const/16 v14, 0xb

    if-ne v13, v14, :cond_4

    .line 2146
    :cond_3
    const/16 v13, 0x52

    move v10, v13

    .line 2147
    .restart local v10    # "kind":C
    sget-object v13, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v11, v13

    .restart local v11    # "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_2

    .line 2151
    .end local v10    # "kind":C
    .end local v11    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_4
    const/16 v13, 0x46

    move v10, v13

    .line 2152
    .restart local v10    # "kind":C
    sget-object v13, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v11, v13

    .restart local v11    # "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_2

    .line 2171
    .end local v3    # "startLine":I
    .end local v4    # "startColumn":I
    .end local v5    # "saveSeenPosition":I
    .end local v6    # "saveSawLast":I
    .end local v7    # "lexp":Lgnu/expr/LambdaExp;
    .end local v8    # "dot":Lgnu/expr/Declaration;
    .end local v9    # "cond":Lgnu/expr/Expression;
    .end local v10    # "kind":C
    .end local v11    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_5
    move-object v13, v1

    move-object v0, v13

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method parseTypeSwitch()Lgnu/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2779
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v8, v0

    const/16 v9, 0x74

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v8

    move v1, v8

    .line 2780
    .local v1, "save":C
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v8

    move-object v2, v8

    .line 2781
    .local v2, "selector":Lgnu/expr/Expression;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2782
    const/4 v8, 0x0

    move-object v3, v8

    .line 2784
    .local v3, "varName":Ljava/lang/Object;
    new-instance v8, Ljava/util/Vector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object v5, v8

    .line 2785
    .local v5, "vec":Ljava/util/Vector;
    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2786
    :goto_0
    move-object v8, v0

    const-string/jumbo v9, "case"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2788
    move-object v8, v0

    const/16 v9, 0x63

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v8

    .line 2789
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2790
    move-object v8, v0

    iget v8, v8, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x24

    if-ne v8, v9, :cond_2

    .line 2792
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v4, v8

    .line 2793
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 2794
    move-object v8, v0

    const-string/jumbo v9, "missing Variable after \'$\'"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    .line 2855
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :goto_1
    return-object v0

    .line 2795
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2796
    move-object v8, v0

    const-string/jumbo v9, "as"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2797
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2803
    :goto_2
    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 2804
    move-object v8, v0

    const/16 v9, 0x74

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2805
    new-instance v8, Lgnu/expr/LambdaExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v6, v8

    .line 2806
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    move-object v8, v6

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2807
    move-object v8, v0

    const-string/jumbo v9, "return"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2808
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2811
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2812
    move-object v8, v0

    const/16 v9, 0x72

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v8

    .line 2813
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v8

    move-object v7, v8

    .line 2814
    .local v7, "caseExpr":Lgnu/expr/Expression;
    move-object v8, v6

    move-object v9, v7

    iput-object v9, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2815
    move-object v8, v0

    const/16 v9, 0x74

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2816
    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2817
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2818
    goto/16 :goto_0

    .line 2799
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "caseExpr":Lgnu/expr/Expression;
    :cond_1
    move-object v8, v0

    const/16 v9, 0x65

    const-string/jumbo v10, "missing \'as\'"

    invoke-virtual {v8, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_2

    .line 2802
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :cond_2
    new-instance v8, Lgnu/expr/Declaration;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "(arg)"

    invoke-direct {v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v4, v8

    .restart local v4    # "decl":Lgnu/expr/Declaration;
    goto :goto_2

    .line 2810
    .restart local v6    # "lexp":Lgnu/expr/LambdaExp;
    :cond_3
    move-object v8, v0

    const-string/jumbo v9, "missing \'return\' after \'case\'"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 2820
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    :cond_4
    move-object v8, v0

    const-string/jumbo v9, "default"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2822
    new-instance v8, Lgnu/expr/LambdaExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v6, v8

    .line 2823
    .restart local v6    # "lexp":Lgnu/expr/LambdaExp;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2825
    move-object v8, v0

    iget v8, v8, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x24

    if-ne v8, v9, :cond_6

    .line 2827
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v4, v8

    .line 2828
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    move-object v8, v4

    if-nez v8, :cond_5

    .line 2829
    move-object v8, v0

    const-string/jumbo v9, "missing Variable after \'$\'"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_1

    .line 2830
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2834
    :goto_4
    move-object v8, v6

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2836
    move-object v8, v0

    const-string/jumbo v9, "return"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2837
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v8

    .line 2840
    :goto_5
    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2841
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v8

    move-object v7, v8

    .line 2842
    .local v7, "defaultExpr":Lgnu/expr/Expression;
    move-object v8, v6

    move-object v9, v7

    iput-object v9, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2843
    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2844
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2845
    .line 2852
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "defaultExpr":Lgnu/expr/Expression;
    :goto_6
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2853
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v6, v8

    .line 2854
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2855
    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "gnu.kawa.reflect.TypeSwitch"

    const-string/jumbo v11, "typeSwitch"

    invoke-static {v10, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v8

    goto/16 :goto_1

    .line 2833
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    :cond_6
    new-instance v8, Lgnu/expr/Declaration;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "(arg)"

    invoke-direct {v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v4, v8

    .restart local v4    # "decl":Lgnu/expr/Declaration;
    goto :goto_4

    .line 2839
    :cond_7
    move-object v8, v0

    const-string/jumbo v9, "missing \'return\' after \'default\'"

    invoke-virtual {v8, v9}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 2848
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    :cond_8
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x65

    :goto_7
    const-string/jumbo v10, "no \'default\' clause in \'typeswitch\'"

    const-string/jumbo v11, "XPST0003"

    invoke-virtual {v8, v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const/16 v9, 0x77

    goto :goto_7
.end method

.method parseURILiteral()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v2

    .line 1624
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    .line 1625
    move-object v2, v0

    const-string/jumbo v3, "expected a URILiteral"

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .line 1632
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1626
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    new-instance v2, Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 1627
    .restart local v1    # "str":Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1632
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method parseUnaryExpr()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1746
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19e

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19d

    if-ne v4, v5, :cond_3

    .line 1748
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v2, v4

    .line 1749
    .local v2, "op":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1750
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 1751
    .local v1, "exp":Lgnu/expr/Expression;
    const-string/jumbo v4, "gnu.xquery.util.ArithOp"

    move v5, v2

    const/16 v6, 0x19d

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "plus"

    :goto_0
    move v6, v2

    const/16 v7, 0x19d

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "+"

    :goto_1
    invoke-static {v4, v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 1755
    .local v3, "func":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v1, v4

    .line 1759
    .end local v2    # "op":I
    .end local v3    # "func":Lgnu/expr/Expression;
    :goto_2
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 1751
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v2    # "op":I
    :cond_1
    const-string/jumbo v5, "minus"

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "-"

    goto :goto_1

    .line 1758
    .end local v1    # "exp":Lgnu/expr/Expression;
    .end local v2    # "op":I
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parseUnionExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto :goto_2
.end method

.method parseUnionExpr()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1765
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 1768
    .local v1, "exp":Lgnu/expr/Expression;
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v4

    move v2, v4

    .line 1769
    .local v2, "op":I
    move v4, v2

    const/16 v5, 0x1a3

    if-eq v4, v5, :cond_0

    .line 1770
    .line 1775
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0

    .line 1771
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v4

    .line 1772
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 1773
    .local v3, "exp2":Lgnu/expr/Expression;
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 1774
    goto :goto_0
.end method

.method public parseVariable()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3178
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    .line 3179
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v2

    .line 3182
    :goto_0
    new-instance v2, Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 3185
    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x51

    if-ne v2, v3, :cond_1

    .line 3186
    move-object v2, v1

    move-object v0, v2

    .line 3190
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return-object v0

    .line 3181
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "missing \'$\' before variable name"

    invoke-virtual {v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    .line 3187
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2

    .line 3188
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 3190
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method public parseVariableDeclaration()Lgnu/expr/Declaration;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3196
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 3197
    .local v1, "name":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 3198
    const/4 v3, 0x0

    move-object v0, v3

    .line 3202
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 3199
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    new-instance v3, Lgnu/expr/Declaration;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 3200
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3202
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method parseXMLConstructor(IZ)Lgnu/expr/Expression;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2459
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/xquery/lang/XQParser;
    move/from16 v2, p1

    .local v2, "next":I
    move/from16 v3, p2

    .local v3, "inElementContent":Z
    move v9, v2

    const/16 v10, 0x21

    if-ne v9, v10, :cond_7

    .line 2461
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    move v2, v9

    .line 2462
    move v9, v2

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    .line 2464
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->skip()V

    .line 2465
    move-object v9, v1

    const-string/jumbo v10, "-->"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2466
    const/4 v9, 0x0

    move v5, v9

    .line 2467
    .local v5, "bad":Z
    move-object v9, v1

    iget v9, v9, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v6, v9

    .line 2468
    .local v6, "i":I
    const/4 v9, 0x1

    move v7, v9

    .line 2469
    .local v7, "sawHyphen":Z
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v9, v6

    if-ltz v9, :cond_0

    .line 2471
    move-object v9, v1

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move v10, v6

    aget-char v9, v9, v10

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 2472
    .local v8, "curHyphen":Z
    move v9, v7

    if-eqz v9, :cond_2

    move v9, v8

    if-eqz v9, :cond_2

    .line 2474
    const/4 v9, 0x1

    move v5, v9

    .line 2479
    .end local v8    # "curHyphen":Z
    :cond_0
    move v9, v5

    if-eqz v9, :cond_3

    .line 2480
    move-object v9, v1

    const-string/jumbo v10, "consecutive or final hyphen in XML comment"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 2489
    .line 2545
    .end local v5    # "bad":Z
    .end local v6    # "i":I
    .end local v7    # "sawHyphen":Z
    .local v4, "exp":Lgnu/expr/Expression;
    :goto_2
    move-object v9, v4

    move-object v1, v9

    .end local v1    # "this":Lgnu/xquery/lang/XQParser;
    return-object v1

    .line 2471
    .end local v4    # "exp":Lgnu/expr/Expression;
    .restart local v1    # "this":Lgnu/xquery/lang/XQParser;
    .restart local v5    # "bad":Z
    .restart local v6    # "i":I
    .restart local v7    # "sawHyphen":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 2477
    .restart local v8    # "curHyphen":Z
    :cond_2
    move v9, v8

    move v7, v9

    .line 2478
    goto :goto_0

    .line 2483
    .end local v8    # "curHyphen":Z
    :cond_3
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object v8, v9

    .line 2485
    .local v8, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "gnu.kawa.xml.CommentConstructor"

    const-string/jumbo v12, "commentConstructor"

    invoke-static {v11, v12}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v4, v9

    .restart local v4    # "exp":Lgnu/expr/Expression;
    goto :goto_2

    .line 2490
    .end local v4    # "exp":Lgnu/expr/Expression;
    .end local v5    # "bad":Z
    .end local v6    # "i":I
    .end local v7    # "sawHyphen":Z
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_4
    move v9, v2

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x43

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x44

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x41

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x41

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_6

    .line 2494
    move v9, v3

    if-nez v9, :cond_5

    .line 2495
    move-object v9, v1

    const/16 v10, 0x65

    const-string/jumbo v11, "CDATA section must be in element content"

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2496
    :cond_5
    move-object v9, v1

    const-string/jumbo v10, "]]>"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2497
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object v5, v9

    .line 2499
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    sget-object v11, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v4, v9

    .line 2500
    .restart local v4    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 2502
    .end local v4    # "exp":Lgnu/expr/Expression;
    .end local v5    # "args":[Lgnu/expr/Expression;
    :cond_6
    move-object v9, v1

    const-string/jumbo v10, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .restart local v4    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 2504
    .end local v4    # "exp":Lgnu/expr/Expression;
    :cond_7
    move v9, v2

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_d

    .line 2506
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v9

    move v2, v9

    .line 2507
    move v9, v2

    if-ltz v9, :cond_8

    move v9, v2

    int-to-char v9, v9

    invoke-static {v9}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v9

    const/16 v10, 0x41

    if-eq v9, v10, :cond_9

    .line 2509
    :cond_8
    move-object v9, v1

    const-string/jumbo v10, "missing target after \'<?\'"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2510
    :cond_9
    new-instance v9, Ljava/lang/String;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v12, 0x0

    move-object v13, v1

    iget v13, v13, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v9

    .line 2511
    .local v5, "target":Ljava/lang/String;
    const/4 v9, 0x0

    move v6, v9

    .line 2514
    .local v6, "nspaces":I
    :goto_3
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    move v7, v9

    .line 2515
    .local v7, "ch":I
    move v9, v7

    if-gez v9, :cond_b

    .line 2516
    .line 2524
    :goto_4
    move-object v9, v1

    const-string/jumbo v10, "?>"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2525
    move v9, v6

    if-nez v9, :cond_a

    move-object v9, v1

    iget v9, v9, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v9, :cond_a

    .line 2526
    move-object v9, v1

    const-string/jumbo v10, "target must be followed by space or \'?>\'"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2527
    :cond_a
    new-instance v9, Ljava/lang/String;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    iget-object v11, v11, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v12, 0x0

    move-object v13, v1

    iget v13, v13, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    move-object v7, v9

    .line 2528
    .local v7, "content":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v5

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x1

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object v8, v9

    .line 2529
    .restart local v8    # "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "gnu.kawa.xml.MakeProcInst"

    const-string/jumbo v12, "makeProcInst"

    invoke-static {v11, v12}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v4, v9

    .line 2532
    .restart local v4    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 2517
    .end local v4    # "exp":Lgnu/expr/Expression;
    .end local v8    # "args":[Lgnu/expr/Expression;
    .local v7, "ch":I
    :cond_b
    move v9, v7

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_c

    .line 2519
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2520
    goto :goto_4

    .line 2522
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 2523
    goto/16 :goto_3

    .line 2533
    .end local v5    # "target":Ljava/lang/String;
    .end local v6    # "nspaces":I
    .end local v7    # "ch":I
    :cond_d
    move v9, v2

    if-ltz v9, :cond_e

    move v9, v2

    int-to-char v9, v9

    invoke-static {v9}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2534
    :cond_e
    move-object v9, v1

    const-string/jumbo v10, "expected QName after \'<\'"

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .restart local v4    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 2537
    .end local v4    # "exp":Lgnu/expr/Expression;
    :cond_f
    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2538
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v9

    .line 2539
    move-object v9, v1

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v9

    move v5, v9

    .line 2540
    .local v5, "saveReadState":C
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/xquery/lang/XQParser;->parseElementConstructor()Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 2541
    .restart local v4    # "exp":Lgnu/expr/Expression;
    move v9, v3

    if-nez v9, :cond_10

    .line 2542
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 2543
    :cond_10
    move-object v9, v1

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    goto/16 :goto_2
.end method

.method final peekNonSpace(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v3

    move v2, v3

    .line 313
    .local v2, "ch":I
    move v3, v2

    if-gez v3, :cond_0

    .line 314
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 316
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return v0
.end method

.method peekOperand()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 948
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    goto :goto_0

    .line 949
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x51

    if-ne v3, v4, :cond_25

    .line 951
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v3

    move v1, v3

    .line 952
    .local v1, "next":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1071
    :cond_2
    :pswitch_0
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_13

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_13

    .line 1073
    move-object v3, v0

    const/16 v4, 0x46

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    .line 1193
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    .end local v1    # "next":I
    :goto_2
    return v0

    .line 951
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 955
    .restart local v1    # "next":I
    :pswitch_1
    move-object v3, v0

    const-string/jumbo v4, "attribute"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 957
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    .line 958
    move-object v3, v0

    const/16 v4, 0xec

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto :goto_2

    .line 959
    :cond_4
    move v3, v1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_5

    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 961
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 962
    move-object v3, v0

    const/16 v4, 0xfc

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto :goto_2

    .line 968
    :pswitch_2
    move-object v3, v0

    const-string/jumbo v4, "comment"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    .line 971
    move-object v3, v0

    const/16 v4, 0xe8

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto :goto_2

    .line 972
    :cond_6
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2

    .line 974
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 975
    move-object v3, v0

    const/16 v4, 0xfe

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto :goto_2

    .line 980
    :pswitch_3
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_7

    move-object v3, v0

    const-string/jumbo v4, "document"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 982
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 983
    move-object v3, v0

    const/16 v4, 0x100

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 985
    :cond_7
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "document-node"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 986
    move-object v3, v0

    const/16 v4, 0xea

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 989
    :pswitch_4
    move-object v3, v0

    const-string/jumbo v4, "element"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 991
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_8

    .line 992
    move-object v3, v0

    const/16 v4, 0xeb

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 993
    :cond_8
    move v3, v1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_9

    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 995
    :cond_9
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 996
    move-object v3, v0

    const/16 v4, 0xfb

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1000
    :cond_a
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_b

    move-object v3, v0

    const-string/jumbo v4, "empty-sequence"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1001
    move-object v3, v0

    const/16 v4, 0xee

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1002
    :cond_b
    move v3, v1

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "every"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1003
    move-object v3, v0

    const/16 v4, 0xf6

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1006
    :pswitch_5
    move v3, v1

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "for"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1007
    move-object v3, v0

    const/16 v4, 0xf3

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1010
    :pswitch_6
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_c

    move-object v3, v0

    const-string/jumbo v4, "if"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1011
    move-object v3, v0

    const/16 v4, 0xf1

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1012
    :cond_c
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "item"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1013
    move-object v3, v0

    const/16 v4, 0xed

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1016
    :pswitch_7
    move v3, v1

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "let"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1017
    move-object v3, v0

    const/16 v4, 0xf4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1020
    :pswitch_8
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "node"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1021
    move-object v3, v0

    const/16 v4, 0xe6

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1024
    :pswitch_9
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "ordered"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    move-object v3, v0

    const/16 v4, 0xf9

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1028
    :pswitch_a
    move-object v3, v0

    const-string/jumbo v4, "processing-instruction"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1030
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_d

    .line 1031
    move-object v3, v0

    const/16 v4, 0xe9

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1032
    :cond_d
    move v3, v1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_e

    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1034
    :cond_e
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1035
    move-object v3, v0

    const/16 v4, 0xff

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1041
    :pswitch_b
    move v3, v1

    const/16 v4, 0x24

    if-ne v3, v4, :cond_f

    move-object v3, v0

    const-string/jumbo v4, "some"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1042
    move-object v3, v0

    const/16 v4, 0xf5

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1043
    :cond_f
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_10

    move-object v3, v0

    const-string/jumbo v4, "schema-attribute"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1044
    move-object v3, v0

    const/16 v4, 0xef

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1045
    :cond_10
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "schema-element"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1046
    move-object v3, v0

    const/16 v4, 0xf0

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1049
    :pswitch_c
    move-object v3, v0

    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1051
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_11

    .line 1052
    move-object v3, v0

    const/16 v4, 0xe7

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1053
    :cond_11
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_12

    .line 1055
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1056
    move-object v3, v0

    const/16 v4, 0xfd

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1059
    :cond_12
    move v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "typeswitch"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1060
    move-object v3, v0

    const/16 v4, 0xf2

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1063
    :pswitch_d
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "unordered"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1064
    move-object v3, v0

    const/16 v4, 0xfa

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1067
    :pswitch_e
    move v3, v1

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const-string/jumbo v4, "validate"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    move-object v3, v0

    const/16 v4, 0xf8

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1075
    :cond_13
    move v3, v1

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_14

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_14

    .line 1076
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1077
    :cond_14
    new-instance v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    .line 1078
    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 1079
    move v3, v1

    packed-switch v3, :pswitch_data_1

    .line 1174
    :cond_15
    :pswitch_f
    move v3, v1

    if-ltz v3, :cond_16

    .line 1176
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1177
    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    const-string/jumbo v4, "define"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1179
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 1180
    move-object v3, v0

    const/16 v4, 0x57

    iput v4, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1183
    :cond_16
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1082
    :pswitch_10
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "ase-uri"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1083
    move-object v3, v0

    const/16 v4, 0x42

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1084
    :cond_17
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "oundary-space"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1085
    move-object v3, v0

    const/16 v4, 0x53

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1088
    :pswitch_11
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "onstruction"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1089
    move-object v3, v0

    const/16 v4, 0x4b

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1090
    :cond_18
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "opy-namespaces"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1091
    move-object v3, v0

    const/16 v4, 0x4c

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1094
    :pswitch_12
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "efault"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1096
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v3

    .line 1097
    move-object v3, v0

    const-string/jumbo v4, "function"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1098
    move-object v3, v0

    const/16 v4, 0x4f

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1099
    :cond_19
    move-object v3, v0

    const-string/jumbo v4, "element"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1100
    move-object v3, v0

    const/16 v4, 0x45

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1101
    :cond_1a
    move-object v3, v0

    const-string/jumbo v4, "collation"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1102
    move-object v3, v0

    const/16 v4, 0x47

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1103
    :cond_1b
    move-object v3, v0

    const-string/jumbo v4, "order"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1104
    move-object v3, v0

    const/16 v4, 0x48

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1105
    :cond_1c
    move-object v3, v0

    const-string/jumbo v4, "unrecognized/unimplemented \'declare default\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1106
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->skipToSemicolon()V

    .line 1107
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v3

    move v0, v3

    goto/16 :goto_2

    .line 1110
    :cond_1d
    :pswitch_13
    move-object v3, v0

    const-string/jumbo v4, "default"

    const-string/jumbo v5, "lement"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1112
    move-object v3, v0

    const-string/jumbo v4, "replace \'default element\' by \'declare default element namespace\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1113
    move-object v3, v0

    const/16 v4, 0x45

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1117
    :pswitch_14
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "unction"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1118
    move-object v3, v0

    const/16 v4, 0x50

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1119
    :cond_1e
    move-object v3, v0

    const-string/jumbo v4, "define"

    const-string/jumbo v5, "unction"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1121
    move-object v3, v0

    const-string/jumbo v4, "replace \'define function\' by \'declare function\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1122
    move-object v3, v0

    const/16 v4, 0x50

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1124
    :cond_1f
    move-object v3, v0

    const-string/jumbo v4, "default"

    const-string/jumbo v5, "unction"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1126
    move-object v3, v0

    const-string/jumbo v4, "replace \'default function\' by \'declare default function namespace\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1127
    move-object v3, v0

    const/16 v4, 0x4f

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1131
    :pswitch_15
    move-object v3, v0

    const-string/jumbo v4, "import"

    const-string/jumbo v5, "odule"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1132
    move-object v3, v0

    const/16 v4, 0x49

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1135
    :pswitch_16
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "amespace"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1136
    move-object v3, v0

    const/16 v4, 0x4e

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1137
    :cond_20
    move-object v3, v0

    const-string/jumbo v4, "default"

    const-string/jumbo v5, "amespace"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1139
    move-object v3, v0

    const-string/jumbo v4, "replace \'default namespace\' by \'declare default element namespace\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1140
    move-object v3, v0

    const/16 v4, 0x45

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1142
    :cond_21
    move-object v3, v0

    const-string/jumbo v4, "module"

    const-string/jumbo v5, "amespace"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1143
    move-object v3, v0

    const/16 v4, 0x4d

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1146
    :pswitch_17
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "rdering"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1147
    move-object v3, v0

    const/16 v4, 0x55

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1148
    :cond_22
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "ption"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1149
    move-object v3, v0

    const/16 v4, 0x6f

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1152
    :pswitch_18
    move-object v3, v0

    const-string/jumbo v4, "import"

    const-string/jumbo v5, "chema"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1153
    move-object v3, v0

    const/16 v4, 0x54

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1156
    :pswitch_19
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "ariable"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1157
    move-object v3, v0

    const/16 v4, 0x56

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1158
    :cond_23
    move-object v3, v0

    const-string/jumbo v4, "define"

    const-string/jumbo v5, "ariable"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1160
    move-object v3, v0

    const-string/jumbo v4, "replace \'define variable\' by \'declare variable\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1161
    move-object v3, v0

    const/16 v4, 0x56

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1163
    :cond_24
    move-object v3, v0

    const-string/jumbo v4, "xquery"

    const-string/jumbo v5, "ersion"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1164
    move-object v3, v0

    const/16 v4, 0x59

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1167
    :pswitch_1a
    move-object v3, v0

    const-string/jumbo v4, "declare"

    const-string/jumbo v5, "mlspace"

    invoke-direct {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1169
    move-object v3, v0

    const-string/jumbo v4, "replace \'define xmlspace\' by \'declare boundary-space\'"

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1170
    move-object v3, v0

    const/16 v4, 0x53

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1185
    .end local v1    # "next":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_25
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x43

    if-ne v3, v4, :cond_26

    .line 1187
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    move v1, v3

    .line 1188
    .restart local v1    # "next":I
    move v3, v1

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_27

    .line 1189
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v4

    iput v4, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1193
    .end local v1    # "next":I
    :cond_26
    :goto_3
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v3

    goto/16 :goto_2

    .line 1191
    .restart local v1    # "next":I
    :cond_27
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_3

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 1079
    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_f
        :pswitch_f
        :pswitch_19
        :pswitch_f
        :pswitch_1a
    .end packed-switch
.end method

.method peekOperator()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 791
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v5, :cond_0

    .line 792
    const/16 v5, 0xa

    move v0, v5

    .line 887
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return v0

    .line 793
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v5

    goto :goto_0

    .line 795
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x41

    if-ne v5, v6, :cond_2

    .line 797
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move v1, v5

    .line 799
    .local v1, "len":I
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 887
    .end local v1    # "len":I
    :cond_2
    :goto_2
    :pswitch_0
    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    move v0, v5

    goto :goto_1

    .line 802
    .restart local v1    # "len":I
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    move v2, v5

    .line 803
    .local v2, "c1":C
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x1

    aget-char v5, v5, v6

    move v3, v5

    .line 804
    .local v3, "c2":C
    move v5, v2

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_3

    move v5, v3

    const/16 v6, 0x72

    if-ne v5, v6, :cond_3

    .line 805
    move-object v5, v0

    const/16 v6, 0x190

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 806
    :cond_3
    move v5, v2

    const/16 v6, 0x74

    if-ne v5, v6, :cond_4

    move v5, v3

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_4

    .line 807
    move-object v5, v0

    const/16 v6, 0x19c

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 808
    :cond_4
    move v5, v2

    const/16 v6, 0x69

    if-ne v5, v6, :cond_5

    move v5, v3

    const/16 v6, 0x73

    if-ne v5, v6, :cond_5

    .line 809
    move-object v5, v0

    const/16 v6, 0x198

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 810
    :cond_5
    move v5, v2

    const/16 v6, 0x65

    if-ne v5, v6, :cond_6

    move v5, v3

    const/16 v6, 0x71

    if-ne v5, v6, :cond_6

    .line 811
    move-object v5, v0

    const/16 v6, 0x1aa

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 812
    :cond_6
    move v5, v2

    const/16 v6, 0x6e

    if-ne v5, v6, :cond_7

    move v5, v3

    const/16 v6, 0x65

    if-ne v5, v6, :cond_7

    .line 813
    move-object v5, v0

    const/16 v6, 0x1ab

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 814
    :cond_7
    move v5, v2

    const/16 v6, 0x67

    if-ne v5, v6, :cond_9

    .line 816
    move v5, v3

    const/16 v6, 0x65

    if-ne v5, v6, :cond_8

    move-object v5, v0

    const/16 v6, 0x1af

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 817
    :cond_8
    move v5, v3

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    move-object v5, v0

    const/16 v6, 0x1ae

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_2

    .line 819
    :cond_9
    move v5, v2

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_2

    .line 821
    move v5, v3

    const/16 v6, 0x65

    if-ne v5, v6, :cond_a

    move-object v5, v0

    const/16 v6, 0x1ad

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 822
    :cond_a
    move v5, v3

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    move-object v5, v0

    const/16 v6, 0x1ac

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 827
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    move v2, v5

    .line 828
    .restart local v2    # "c1":C
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x1

    aget-char v5, v5, v6

    move v3, v5

    .line 829
    .restart local v3    # "c2":C
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x2

    aget-char v5, v5, v6

    move v4, v5

    .line 830
    .local v4, "c3":C
    move v5, v2

    const/16 v6, 0x61

    if-ne v5, v6, :cond_b

    .line 832
    move v5, v3

    const/16 v6, 0x6e

    if-ne v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 833
    move-object v5, v0

    const/16 v6, 0x191

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 835
    :cond_b
    move v5, v2

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_d

    .line 836
    move v5, v3

    const/16 v6, 0x75

    if-ne v5, v6, :cond_c

    move v5, v4

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_c

    .line 837
    move-object v5, v0

    const/16 v6, 0x19f

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 838
    :cond_c
    move v5, v3

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 839
    move-object v5, v0

    const/16 v6, 0x1a2

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 841
    :cond_d
    move v5, v2

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 842
    move v5, v3

    const/16 v6, 0x69

    if-ne v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x76

    if-ne v5, v6, :cond_2

    .line 843
    move-object v5, v0

    const/16 v6, 0x1a0

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 847
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v4    # "c3":C
    :pswitch_3
    move-object v5, v0

    const-string/jumbo v6, "idiv"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 848
    move-object v5, v0

    const/16 v6, 0x1a1

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 849
    :cond_e
    move-object v5, v0

    const-string/jumbo v6, "cast"

    const-string/jumbo v7, "as"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 850
    move-object v5, v0

    const/16 v6, 0x1a9

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 853
    :pswitch_4
    move-object v5, v0

    const-string/jumbo v6, "where"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 854
    move-object v5, v0

    const/16 v6, 0xc4

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 855
    :cond_f
    move-object v5, v0

    const-string/jumbo v6, "isnot"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 856
    move-object v5, v0

    const/16 v6, 0x199

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 857
    :cond_10
    move-object v5, v0

    const-string/jumbo v6, "union"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 858
    move-object v5, v0

    const/16 v6, 0x1a3

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 859
    :cond_11
    move-object v5, v0

    const-string/jumbo v6, "treat"

    const-string/jumbo v7, "as"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 860
    move-object v5, v0

    const/16 v6, 0x1a7

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 863
    :pswitch_5
    move-object v5, v0

    const-string/jumbo v6, "except"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 864
    move-object v5, v0

    const/16 v6, 0x1a5

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 867
    :pswitch_6
    move-object v5, v0

    const-string/jumbo v6, "instance"

    const-string/jumbo v7, "of"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 868
    move-object v5, v0

    const/16 v6, 0x1a6

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 869
    :cond_12
    move-object v5, v0

    const-string/jumbo v6, "castable"

    const-string/jumbo v7, "as"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    move-object v5, v0

    const/16 v6, 0x1a8

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 873
    :pswitch_7
    move-object v5, v0

    const-string/jumbo v6, "intersect"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 874
    move-object v5, v0

    const/16 v6, 0x1a4

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 877
    :pswitch_8
    move-object v5, v0

    const-string/jumbo v6, "instanceof"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    move-object v5, v0

    const-string/jumbo v6, "use \'instanceof of\' (two words) instead of \'instanceof\'"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 880
    move-object v5, v0

    const/16 v6, 0x1a6

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_2

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method pushNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1214
    const/4 v3, 0x0

    move-object v2, v3

    .line 1215
    :cond_0
    move-object v3, v0

    new-instance v4, Lgnu/xml/NamespaceBinding;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v5, v6, v7, v8}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    iput-object v4, v3, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1216
    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3636
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xquery/lang/XQParser;->saveToken:I

    iput v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 479
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 480
    move-object v1, v0

    invoke-super {v1}, Lgnu/text/Lexer;->reset()V

    .line 481
    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v4}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    move-object v4, v1

    move-object v0, v4

    .line 147
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 145
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 146
    .local v2, "base":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    move-object v3, v4

    .line 147
    .local v3, "basePath":Lgnu/text/Path;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 6

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xquery/lang/XQParser;->interactive:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1232
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/xquery/lang/XQParser;->nesting:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1233
    :cond_0
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/xquery/lang/XQParser;->interactive:Z

    .line 1234
    return-void

    .line 1232
    :cond_1
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/xquery/lang/XQParser;->nesting:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/xquery/lang/XQParser;->nesting:I

    goto :goto_0
.end method

.method public setStaticBaseUri(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v4

    invoke-static {v4}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v4

    iput-object v4, v3, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 91
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    instance-of v3, v3, Lgnu/mapping/WrappedException;

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v2

    check-cast v3, Lgnu/mapping/WrappedException;

    invoke-virtual {v3}, Lgnu/mapping/WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v2, v3

    .line 93
    :cond_0
    move-object v3, v0

    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method final skipComment()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lgnu/xquery/lang/XQParser;->commentCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/xquery/lang/XQParser;->commentCount:I

    .line 267
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v1, v7

    .line 268
    .local v1, "startLine":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    .line 269
    .local v2, "startColumn":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 271
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 272
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 273
    move-object v7, v0

    const/16 v8, 0x65

    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 275
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 276
    .local v3, "prev":I
    const/4 v7, 0x0

    move v4, v7

    .line 277
    .local v4, "commentNesting":I
    move-object v7, v0

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v7

    move v5, v7

    .line 280
    .local v5, "saveReadState":C
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    move v6, v7

    .line 281
    .local v6, "ch":I
    move v7, v6

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_2

    .line 283
    move v7, v3

    const/16 v8, 0x28

    if-ne v7, v8, :cond_1

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    const/4 v7, 0x0

    move v6, v7

    .line 304
    :cond_1
    :goto_1
    move v7, v6

    move v3, v7

    .line 305
    goto :goto_0

    .line 289
    :cond_2
    move v7, v6

    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    move v7, v3

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_4

    .line 291
    move v7, v4

    if-nez v7, :cond_3

    .line 293
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 294
    return-void

    .line 296
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 298
    :cond_4
    move v7, v6

    if-gez v7, :cond_1

    .line 300
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 301
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 302
    move-object v7, v0

    const-string/jumbo v8, "non-terminated comment starting here"

    invoke-virtual {v7, v8}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final skipOldComment()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    const/4 v5, 0x0

    move v1, v5

    .line 242
    .local v1, "seenDashes":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    .line 243
    .local v2, "startLine":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v3, v5

    .line 244
    .local v3, "startColumn":I
    move-object v5, v0

    const-string/jumbo v6, "use (: :) instead of old-style comment {-- --}"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 247
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v5

    move v4, v5

    .line 248
    .local v4, "ch":I
    move v5, v4

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 260
    :goto_1
    goto :goto_0

    .line 250
    :cond_0
    move v5, v4

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_1

    move v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 251
    return-void

    .line 252
    :cond_1
    move v5, v4

    if-gez v5, :cond_2

    .line 254
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 255
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 256
    move-object v5, v0

    const-string/jumbo v6, "non-terminated comment starting here"

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_1
.end method

.method final skipSpace()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return v0
.end method

.method final skipSpace(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move v1, p1

    .local v1, "verticalToo":Z
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    move v2, v3

    .line 197
    .local v2, "ch":I
    move v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 199
    move-object v3, v0

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const/16 v3, 0x28

    move v0, v3

    .line 223
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_1
    return v0

    .line 201
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->skipComment()V

    .line 224
    :cond_1
    :goto_2
    goto :goto_0

    .line 203
    :cond_2
    move v3, v2

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_5

    .line 205
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    move v2, v3

    .line 206
    move v3, v2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    .line 208
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 209
    const/16 v3, 0x7b

    move v0, v3

    goto :goto_1

    .line 211
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    move v2, v3

    .line 212
    move v3, v2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    .line 214
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 215
    move-object v3, v0

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 216
    const/16 v3, 0x7b

    move v0, v3

    goto :goto_1

    .line 218
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_2

    .line 220
    :cond_5
    move v3, v1

    if-eqz v3, :cond_7

    move v3, v2

    if-ltz v3, :cond_6

    move v3, v2

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    :cond_6
    :goto_3
    move v3, v2

    move v0, v3

    goto :goto_1

    .line 220
    :cond_7
    move v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    goto :goto_3
.end method

.method final skipToSemicolon()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    move v1, v2

    .line 233
    .local v1, "next":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 234
    .line 236
    :cond_0
    return-void

    .line 235
    :cond_1
    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4405
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "XPST0003"

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4379
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "code":Ljava/lang/String;
    move-object v4, v0

    const/16 v5, 0x65

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4380
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v4, :cond_3

    .line 4382
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 4383
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 4384
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 4385
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v4

    check-cast v4, Lgnu/mapping/InPort;

    const/16 v5, 0xa

    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    .line 4388
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    move v3, v4

    .line 4389
    .local v3, "ch":I
    move v4, v3

    if-gez v4, :cond_0

    .line 4390
    .line 4397
    :goto_1
    new-instance v4, Lgnu/text/SyntaxException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v4

    .line 4391
    :cond_0
    move v4, v3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 4393
    :cond_1
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4394
    goto :goto_1

    .line 4396
    :cond_2
    goto :goto_0

    .line 4399
    .end local v3    # "ch":I
    :cond_3
    new-instance v4, Lgnu/expr/ErrorExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    return-object v0
.end method

.method tokenString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 4311
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    sparse-switch v4, :sswitch_data_0

    .line 4333
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x64

    add-int/lit8 v4, v4, -0x64

    const/16 v5, 0xd

    if-ge v4, v5, :cond_2

    .line 4335
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    move-object v6, v0

    iget v6, v6, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x64

    add-int/lit8 v6, v6, -0x64

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "::-axis("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 4338
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .line 4314
    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 4315
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v1

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 4316
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ge v4, v5, :cond_1

    .line 4318
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move v5, v2

    aget-char v4, v4, v5

    move v3, v4

    .line 4319
    .local v3, "ch":C
    move v4, v3

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 4320
    move-object v4, v1

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 4321
    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 4316
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4323
    .end local v3    # "ch":C
    :cond_1
    move-object v4, v1

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 4324
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 4326
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + \'(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 4329
    :sswitch_2
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v4

    goto :goto_0

    .line 4331
    :sswitch_3
    const-string/jumbo v4, "<EOF>"

    move-object v0, v4

    goto :goto_0

    .line 4336
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x20

    if-lt v4, v5, :cond_3

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_3

    .line 4337
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lgnu/xquery/lang/XQParser;->curToken:I

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 4338
    :cond_3
    move-object v4, v0

    iget v4, v4, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 4311
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x22 -> :sswitch_0
        0x41 -> :sswitch_2
        0x46 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch
.end method

.method warnOldVersion(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 4425
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget-boolean v2, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4426
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x65

    :goto_0
    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4427
    :cond_1
    return-void

    .line 4426
    :cond_2
    const/16 v3, 0x77

    goto :goto_0
.end method

.method wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 2724
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQParser;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2725
    move-object v2, v1

    move-object v0, v2

    .line 2726
    .end local v0    # "this":Lgnu/xquery/lang/XQParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xquery/lang/XQParser;
    :cond_0
    new-instance v2, Lgnu/expr/ApplyExp;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    sget-object v4, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Lgnu/expr/ReferenceExp;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    sget-object v12, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-direct {v11, v12}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v11, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v8, v6, v7

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
