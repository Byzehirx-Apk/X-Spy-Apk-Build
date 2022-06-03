.class public Lgnu/xquery/lang/XQResolveNames;
.super Lgnu/expr/ResolveNames;
.source "XQResolveNames.java"


# static fields
.field public static final BASE_URI_BUILTIN:I = -0xb

.field public static final CASTABLE_AS_BUILTIN:I = -0x22

.field public static final CAST_AS_BUILTIN:I = -0x21

.field public static final COLLECTION_BUILTIN:I = -0x8

.field public static final COMPARE_BUILTIN:I = -0x4

.field public static final DEEP_EQUAL_BUILTIN:I = -0x19

.field public static final DEFAULT_COLLATION_BUILTIN:I = -0x1d

.field public static final DISTINCT_VALUES_BUILTIN:I = -0x5

.field public static final DOC_AVAILABLE_BUILTIN:I = -0xa

.field public static final DOC_BUILTIN:I = -0x9

.field public static final HANDLE_EXTENSION_BUILTIN:I = -0x3

.field public static final IDREF_BUILTIN:I = -0x1f

.field public static final ID_BUILTIN:I = -0x1e

.field public static final INDEX_OF_BUILTIN:I = -0xf

.field public static final LANG_BUILTIN:I = -0x17

.field public static final LAST_BUILTIN:I = -0x1

.field public static final LOCAL_NAME_BUILTIN:I = -0x6

.field public static final MAX_BUILTIN:I = -0x1b

.field public static final MIN_BUILTIN:I = -0x1a

.field public static final NAMESPACE_URI_BUILTIN:I = -0x7

.field public static final NAME_BUILTIN:I = -0x18

.field public static final NORMALIZE_SPACE_BUILTIN:I = -0x11

.field public static final NUMBER_BUILTIN:I = -0x1c

.field public static final POSITION_BUILTIN:I = -0x2

.field public static final RESOLVE_PREFIX_BUILTIN:I = -0xd

.field public static final RESOLVE_URI_BUILTIN:I = -0xc

.field public static final ROOT_BUILTIN:I = -0x20

.field public static final STATIC_BASE_URI_BUILTIN:I = -0xe

.field public static final STRING_BUILTIN:I = -0x10

.field public static final UNORDERED_BUILTIN:I = -0x12

.field public static final XS_QNAME_BUILTIN:I = -0x23

.field public static final XS_QNAME_IGNORE_DEFAULT_BUILTIN:I = -0x24

.field public static final castAsDecl:Lgnu/expr/Declaration;

.field public static final castableAsDecl:Lgnu/expr/Declaration;

.field public static final handleExtensionDecl:Lgnu/expr/Declaration;

.field public static final lastDecl:Lgnu/expr/Declaration;

.field public static final resolvePrefixDecl:Lgnu/expr/Declaration;

.field public static final staticBaseUriDecl:Lgnu/expr/Declaration;

.field public static final xsQNameDecl:Lgnu/expr/Declaration;

.field public static final xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;


# instance fields
.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field private moduleDecl:Lgnu/expr/Declaration;

.field public parser:Lgnu/xquery/lang/XQParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "(extension)"

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    .line 119
    const-string/jumbo v0, "(cast as)"

    const/16 v1, -0x21

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    .line 122
    const-string/jumbo v0, "(castable as)"

    const/16 v1, -0x22

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    .line 126
    const-string/jumbo v0, "last"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    .line 129
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v1, "QName"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0x23

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    .line 132
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v1, "(QName-ignore-default)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0x24

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 135
    const-string/jumbo v0, "static-base-uri"

    const/16 v1, -0xe

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    .line 138
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v1, "(resolve-prefix)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/expr/ResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 201
    move-object v2, v0

    sget-object v3, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v3, v2, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 172
    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 173
    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 174
    move-object v2, v0

    const-string/jumbo v3, "position"

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 175
    move-object v2, v0

    const-string/jumbo v3, "compare"

    const/4 v4, -0x4

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 176
    move-object v2, v0

    const-string/jumbo v3, "distinct-values"

    const/4 v4, -0x5

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 177
    move-object v2, v0

    const-string/jumbo v3, "local-name"

    const/4 v4, -0x6

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 178
    move-object v2, v0

    const-string/jumbo v3, "name"

    const/16 v4, -0x18

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 179
    move-object v2, v0

    const-string/jumbo v3, "namespace-uri"

    const/4 v4, -0x7

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 180
    move-object v2, v0

    const-string/jumbo v3, "root"

    const/16 v4, -0x20

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 181
    move-object v2, v0

    const-string/jumbo v3, "base-uri"

    const/16 v4, -0xb

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 182
    move-object v2, v0

    const-string/jumbo v3, "lang"

    const/16 v4, -0x17

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 183
    move-object v2, v0

    const-string/jumbo v3, "resolve-uri"

    const/16 v4, -0xc

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 184
    move-object v2, v0

    const-string/jumbo v3, "collection"

    const/4 v4, -0x8

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 185
    move-object v2, v0

    const-string/jumbo v3, "doc"

    const/16 v4, -0x9

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 186
    move-object v2, v0

    const-string/jumbo v3, "document"

    const/16 v4, -0x9

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 187
    move-object v2, v0

    const-string/jumbo v3, "doc-available"

    const/16 v4, -0xa

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 188
    move-object v2, v0

    const-string/jumbo v3, "index-of"

    const/16 v4, -0xf

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 189
    move-object v2, v0

    const-string/jumbo v3, "string"

    const/16 v4, -0x10

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 190
    move-object v2, v0

    const-string/jumbo v3, "normalize-space"

    const/16 v4, -0x11

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 191
    move-object v2, v0

    const-string/jumbo v3, "unordered"

    const/16 v4, -0x12

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 192
    move-object v2, v0

    const-string/jumbo v3, "deep-equal"

    const/16 v4, -0x19

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 193
    move-object v2, v0

    const-string/jumbo v3, "min"

    const/16 v4, -0x1a

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 194
    move-object v2, v0

    const-string/jumbo v3, "max"

    const/16 v4, -0x1b

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 195
    move-object v2, v0

    const-string/jumbo v3, "number"

    const/16 v4, -0x1c

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 196
    move-object v2, v0

    const-string/jumbo v3, "default-collation"

    const/16 v4, -0x1d

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 197
    move-object v2, v0

    const-string/jumbo v3, "id"

    const/16 v4, -0x1e

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 198
    move-object v2, v0

    const-string/jumbo v3, "idref"

    const/16 v4, -0x1f

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method private checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move v3, p3

    .local v3, "min":I
    move v4, p4

    .local v4, "max":I
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v8, v4

    move-object v9, v1

    array-length v9, v9

    invoke-static {v6, v7, v8, v9}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 516
    .local v5, "err":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 517
    const/4 v6, 0x0

    move-object v0, v6

    .line 519
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public static makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    move v1, p1

    .local v1, "code":I
    new-instance v3, Lgnu/expr/Declaration;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 153
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 154
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setCode(I)V

    .line 155
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "code":I
    const-string/jumbo v2, "http://www.w3.org/2005/xpath-functions"

    move-object v3, v0

    const-string/jumbo v4, "fn"

    invoke-static {v2, v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method static maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 8

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "qname":Lgnu/mapping/Symbol;
    move v1, p1

    .local v1, "isAttribute":Z
    move-object v2, p2

    .local v2, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 992
    move-object v5, v2

    move-object v0, v5

    .line 1001
    .end local v0    # "qname":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .line 993
    .restart local v0    # "qname":Lgnu/mapping/Symbol;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 994
    .local v3, "prefix":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 995
    .local v4, "uri":Ljava/lang/String;
    move-object v5, v3

    const-string/jumbo v6, ""

    if-ne v5, v6, :cond_1

    .line 996
    const/4 v5, 0x0

    move-object v3, v5

    .line 997
    :cond_1
    move-object v5, v4

    const-string/jumbo v6, ""

    if-ne v5, v6, :cond_2

    .line 998
    const/4 v5, 0x0

    move-object v4, v5

    .line 999
    :cond_2
    move v5, v1

    if-eqz v5, :cond_3

    move-object v5, v3

    if-nez v5, :cond_3

    move-object v5, v4

    if-nez v5, :cond_3

    .line 1000
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 1001
    :cond_3
    move-object v5, v3

    move-object v6, v4

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lgnu/xml/NamespaceBinding;->maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method static procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 8

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    new-instance v3, Lgnu/expr/Declaration;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1008
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 1009
    move-object v3, v2

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1010
    move-object v3, v2

    const-wide/16 v4, 0x4000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1011
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method private visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v6, v1

    instance-of v6, v6, Lgnu/expr/BeginExp;

    if-eqz v6, :cond_1

    .line 404
    move-object v6, v1

    check-cast v6, Lgnu/expr/BeginExp;

    move-object v2, v6

    .line 405
    .local v2, "bbody":Lgnu/expr/BeginExp;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v3, v6

    .line 406
    .local v3, "exps":[Lgnu/expr/Expression;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v6

    move v4, v6

    .line 407
    .local v4, "nexps":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 409
    move-object v6, v3

    move v7, v5

    move-object v8, v0

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 411
    .line 427
    .end local v2    # "bbody":Lgnu/expr/BeginExp;
    .end local v3    # "exps":[Lgnu/expr/Expression;
    .end local v4    # "nexps":I
    .end local v5    # "i":I
    :cond_0
    :goto_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0

    .line 412
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_1
    move-object v6, v1

    instance-of v6, v6, Lgnu/expr/SetExp;

    if-eqz v6, :cond_4

    .line 414
    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    move-object v2, v6

    .line 415
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v6, v1

    check-cast v6, Lgnu/expr/SetExp;

    move-object v3, v6

    .line 416
    .local v3, "sexp":Lgnu/expr/SetExp;
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v1, v6

    .line 417
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_3

    .line 419
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v6

    if-nez v6, :cond_2

    .line 420
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 421
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v2, v6

    .line 423
    :cond_3
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 424
    goto :goto_1

    .line 426
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "sexp":Lgnu/expr/SetExp;
    :cond_4
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "contents":Lgnu/expr/Expression;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    sget-object v5, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    move-object v2, v5

    .line 254
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v5, v2

    move-object v6, v1

    sget-object v7, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v5

    move-object v3, v5

    .line 255
    .local v3, "loc":Lgnu/mapping/Location;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 256
    const/4 v5, 0x0

    move-object v0, v5

    .line 267
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .line 257
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v5

    move-object v3, v5

    .line 258
    move-object v5, v3

    instance-of v5, v5, Lgnu/kawa/reflect/StaticFieldLocation;

    if-eqz v5, :cond_1

    .line 260
    move-object v5, v3

    check-cast v5, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v5}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 261
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 262
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 264
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :cond_1
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 265
    .local v4, "val":Ljava/lang/Object;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 266
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQResolveNames;->procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 267
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method getBaseUriExpr()Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    move-object v1, v3

    .line 981
    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v3}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 982
    .local v2, "staticBaseUri":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 983
    move-object v3, v2

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    move-object v0, v3

    .line 985
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move v2, p2

    .local v2, "argno":I
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    move v5, v2

    if-le v4, v5, :cond_0

    .line 459
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, "gnu.xquery.util.NamedCollator"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    const-string/jumbo v7, "find"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .line 463
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .line 462
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    move-object v3, v4

    .line 463
    .local v3, "coll":Lgnu/xquery/util/NamedCollator;
    move-object v4, v3

    if-nez v4, :cond_1

    sget-object v4, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v3

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method push(Lgnu/expr/Declaration;)V
    .locals 14

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    move-object v2, v9

    .line 216
    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 217
    .local v3, "name":Ljava/lang/Object;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v9

    move v4, v9

    .line 218
    .local v4, "function":Z
    move-object v9, v3

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 220
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v9

    move v5, v9

    .line 221
    .local v5, "line":I
    move v9, v5

    if-lez v9, :cond_0

    move-object v9, v2

    if-eqz v9, :cond_0

    .line 223
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 224
    .local v6, "saveFilename":Ljava/lang/String;
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v9

    move v7, v9

    .line 225
    .local v7, "saveLine":I
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v9

    move v8, v9

    .line 226
    .local v8, "saveColumn":I
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 227
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    move v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v3, v9

    .line 228
    .local v3, "name":Lgnu/mapping/Symbol;
    move-object v9, v2

    move-object v10, v6

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 229
    .line 232
    .end local v6    # "saveFilename":Ljava/lang/String;
    .end local v7    # "saveLine":I
    .end local v8    # "saveColumn":I
    :goto_0
    move-object v9, v3

    if-nez v9, :cond_1

    .line 233
    .line 249
    .end local v3    # "name":Lgnu/mapping/Symbol;
    .end local v5    # "line":I
    :goto_1
    return-void

    .line 231
    .local v3, "name":Ljava/lang/Object;
    .restart local v5    # "line":I
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    move v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v3, v9

    .local v3, "name":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 234
    :cond_1
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 237
    .end local v3    # "name":Lgnu/mapping/Symbol;
    .end local v5    # "line":I
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v10, v3

    sget-object v11, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v5, v9

    .line 238
    .local v5, "old":Lgnu/expr/Declaration;
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 240
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v10, v5

    iget-object v10, v10, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v9, v10, :cond_4

    .line 241
    move-object v9, v5

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 248
    :cond_3
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 249
    goto :goto_1

    .line 242
    :cond_4
    sget-boolean v9, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    if-eqz v9, :cond_3

    move-object v9, v3

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_5

    move-object v9, v3

    check-cast v9, Lgnu/mapping/Symbol;

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 245
    :cond_5
    move-object v9, v2

    const/16 v10, 0x77

    move-object v11, v1

    const-string/jumbo v12, "declaration "

    const-string/jumbo v13, " hides previous declaration"

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 207
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 209
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 207
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method pushBuiltin(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "code":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 166
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 6

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ModuleExp;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/xquery/lang/XQResolveNames;->currentLambda:Lgnu/expr/LambdaExp;

    .line 433
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 434
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 436
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 434
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 439
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    iput-object v4, v3, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 440
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-direct {v4, v5}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 443
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 444
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 446
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 447
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->removeSubsumed(Lgnu/expr/Declaration;)V

    .line 444
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 449
    :cond_3
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 30

    .prologue
    .line 524
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "ignored":Ljava/lang/Void;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v5, v21

    .line 525
    .local v5, "func":Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v21, v0

    move-object/from16 v6, v21

    .line 526
    .local v6, "namespaceSave":Lgnu/xml/NamespaceBinding;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 527
    .local v7, "proc":Ljava/lang/Object;
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/MakeElement;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 529
    move-object/from16 v21, v7

    check-cast v21, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v8, v21

    .line 530
    .local v8, "mk":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v21

    move-object/from16 v22, v6

    invoke-static/range {v21 .. v22}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v21

    move-object/from16 v9, v21

    .line 532
    .local v9, "nschain":Lgnu/xml/NamespaceBinding;
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 533
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 535
    .end local v8    # "mk":Lgnu/kawa/xml/MakeElement;
    .end local v9    # "nschain":Lgnu/xml/NamespaceBinding;
    :cond_0
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 536
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    check-cast v22, Lgnu/expr/ReferenceExp;

    move-object/from16 v23, v3

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v5, v21

    .line 539
    :goto_0
    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 540
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v21

    .line 541
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 542
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v5, v21

    .line 543
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 545
    move-object/from16 v21, v5

    check-cast v21, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v8, v21

    .line 548
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v8

    if-eqz v21, :cond_1

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getCode()I

    move-result v21

    move/from16 v29, v21

    move/from16 v21, v29

    move/from16 v22, v29

    move/from16 v9, v22

    .local v9, "code":I
    if-gez v21, :cond_1

    .line 550
    move/from16 v21, v9

    packed-switch v21, :pswitch_data_0

    .line 909
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "code":I
    :cond_1
    :pswitch_0
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 910
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 912
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v8, v21

    .line 913
    .local v8, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_29

    .line 915
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v21, v0

    const/16 v22, 0x65

    const-string/jumbo v23, "type constructor requires a single argument"

    invoke-virtual/range {v21 .. v23}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 916
    move-object/from16 v21, v3

    move-object/from16 v2, v21

    .line 969
    .end local v2    # "this":Lgnu/xquery/lang/XQResolveNames;
    .end local v8    # "args":[Lgnu/expr/Expression;
    :goto_1
    return-object v2

    .line 538
    .restart local v2    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/expr/Expression;

    move-object/from16 v5, v21

    goto/16 :goto_0

    .line 554
    .local v8, "decl":Lgnu/expr/Declaration;
    .restart local v9    # "code":I
    :pswitch_1
    move/from16 v21, v9

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    sget-object v21, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    :goto_2
    move-object/from16 v11, v21

    .line 556
    .local v11, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object/from16 v21, v0

    move-object/from16 v22, v11

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v8, v21

    .line 557
    move-object/from16 v21, v8

    if-nez v21, :cond_4

    .line 558
    move-object/from16 v21, v2

    const/16 v22, 0x65

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "undefined context for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    .line 563
    :goto_3
    new-instance v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v11

    move-object/from16 v24, v8

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object/from16 v2, v21

    goto :goto_1

    .line 554
    .end local v11    # "sym":Lgnu/mapping/Symbol;
    :cond_3
    sget-object v21, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    goto :goto_2

    .line 562
    .restart local v11    # "sym":Lgnu/mapping/Symbol;
    :cond_4
    move-object/from16 v21, v8

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setCanRead(Z)V

    goto :goto_3

    .line 567
    .end local v11    # "sym":Lgnu/mapping/Symbol;
    :pswitch_2
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 568
    .local v12, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v12

    move/from16 v22, v9

    const/16 v23, -0x21

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v22, 0x0

    :goto_4
    aget-object v21, v21, v22

    move-object/from16 v13, v21

    .line 569
    .local v13, "texp":Lgnu/expr/Expression;
    move-object/from16 v21, v13

    move-object/from16 v14, v21

    .line 570
    .local v14, "qexp":Lgnu/expr/Expression;
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 572
    move-object/from16 v21, v13

    check-cast v21, Lgnu/expr/ApplyExp;

    move-object/from16 v15, v21

    .line 573
    .local v15, "taexp":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 575
    move-object/from16 v21, v15

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v14, v21

    .line 577
    .end local v15    # "taexp":Lgnu/expr/ApplyExp;
    :cond_5
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 578
    .local v15, "value":Ljava/lang/Object;
    const/16 v21, 0x0

    move-object/from16 v16, v21

    .line 579
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v21, v15

    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 580
    const-string/jumbo v21, "type to \'cast as\' or \'castable as\' must be atomic"

    move-object/from16 v16, v21

    .line 589
    :cond_6
    :goto_5
    move-object/from16 v21, v16

    if-eqz v21, :cond_7

    .line 590
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v21, v0

    const/16 v22, 0x65

    move-object/from16 v23, v13

    move-object/from16 v24, v16

    const-string/jumbo v25, "XPST0080"

    invoke-virtual/range {v21 .. v25}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_7
    move-object/from16 v21, v15

    sget-object v22, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v21, v0

    if-nez v21, :cond_d

    const/16 v21, 0x1

    :goto_6
    move/from16 v17, v21

    .line 593
    .local v17, "toQName":Z
    move/from16 v21, v9

    const/16 v22, -0x21

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 595
    move/from16 v21, v17

    if-eqz v21, :cond_e

    .line 596
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 568
    .end local v13    # "texp":Lgnu/expr/Expression;
    .end local v14    # "qexp":Lgnu/expr/Expression;
    .end local v15    # "value":Ljava/lang/Object;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "toQName":Z
    :cond_8
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 581
    .restart local v13    # "texp":Lgnu/expr/Expression;
    .restart local v14    # "qexp":Lgnu/expr/Expression;
    .restart local v15    # "value":Ljava/lang/Object;
    .restart local v16    # "msg":Ljava/lang/String;
    :cond_9
    move-object/from16 v21, v15

    sget-object v22, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 582
    const-string/jumbo v21, "type to \'cast as\' or \'castable as\' cannot be anyAtomicType"

    move-object/from16 v16, v21

    goto :goto_5

    .line 583
    :cond_a
    move-object/from16 v21, v15

    sget-object v22, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 584
    const-string/jumbo v21, "type to \'cast as\' or \'castable as\' cannot be anySimpleType"

    move-object/from16 v16, v21

    goto :goto_5

    .line 585
    :cond_b
    move-object/from16 v21, v15

    sget-object v22, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 586
    const-string/jumbo v21, "type to \'cast as\' or \'castable as\' cannot be untyped"

    move-object/from16 v16, v21

    goto/16 :goto_5

    .line 587
    :cond_c
    move-object/from16 v21, v15

    sget-object v22, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 588
    const-string/jumbo v21, "type to \'cast as\' or \'castable as\' cannot be NOTATION"

    move-object/from16 v16, v21

    goto/16 :goto_5

    .line 591
    :cond_d
    const/16 v21, 0x0

    goto :goto_6

    .line 597
    .restart local v17    # "toQName":Z
    :cond_e
    const-string/jumbo v21, "gnu.xquery.util.CastAs"

    const-string/jumbo v22, "castAs"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v5, v21

    .line 619
    :goto_7
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 602
    :cond_f
    move/from16 v21, v17

    if-eqz v21, :cond_10

    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 604
    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    check-cast v21, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 607
    move-object/from16 v21, v15

    move-object/from16 v22, v2

    :try_start_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    move-result-object v21

    .line 610
    sget-object v21, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 612
    :catch_0
    move-exception v21

    move-object/from16 v18, v21

    .line 614
    .local v18, "ex":Ljava/lang/RuntimeException;
    sget-object v21, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 617
    .end local v18    # "ex":Ljava/lang/RuntimeException;
    :cond_10
    const-string/jumbo v21, "gnu.xquery.lang.XQParser"

    const-string/jumbo v22, "castableAs"

    invoke-static/range {v21 .. v22}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v5, v21

    goto :goto_7

    .line 624
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "texp":Lgnu/expr/Expression;
    .end local v14    # "qexp":Lgnu/expr/Expression;
    .end local v15    # "value":Ljava/lang/Object;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "toQName":Z
    :pswitch_3
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 625
    .restart local v12    # "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .local v10, "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_11

    .line 626
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 627
    :cond_11
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 629
    .local v13, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    move/from16 v21, v9

    const/16 v22, -0x24

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 630
    new-instance v21, Lgnu/xml/NamespaceBinding;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x0

    const-string/jumbo v24, ""

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object/from16 v13, v21

    .line 632
    :cond_12
    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 636
    move-object/from16 v21, v12

    const/16 v22, 0x0

    :try_start_1
    aget-object v21, v21, v22

    check-cast v21, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 637
    .local v14, "val":Ljava/lang/Object;
    move-object/from16 v21, v14

    move-object/from16 v22, v13

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 640
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v14

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 642
    .end local v14    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v21

    move-object/from16 v14, v21

    .line 644
    .local v14, "ex":Ljava/lang/RuntimeException;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 647
    .end local v14    # "ex":Ljava/lang/RuntimeException;
    :cond_13
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x0

    move-object/from16 v24, v12

    const/16 v25, 0x0

    aget-object v24, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x1

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v13

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v24, v22, v23

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x2

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v24, v22, v23

    move-object/from16 v14, v21

    .line 651
    .local v14, "xargs":[Lgnu/expr/Expression;
    const-string/jumbo v21, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "resolveQName"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v15, v21

    .line 654
    .local v15, "meth":Lgnu/bytecode/Method;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v15

    move-object/from16 v24, v14

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v16, v21

    .line 655
    .local v16, "app":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v16

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 656
    move-object/from16 v21, v16

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 660
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    .end local v14    # "xargs":[Lgnu/expr/Expression;
    .end local v15    # "meth":Lgnu/bytecode/Method;
    .end local v16    # "app":Lgnu/expr/ApplyExp;
    :pswitch_4
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 661
    .restart local v12    # "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_14

    .line 662
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 663
    :cond_14
    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v21, v0

    if-eqz v21, :cond_17

    .line 665
    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    check-cast v21, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    .line 666
    .local v13, "val":Ljava/lang/Object;
    move-object/from16 v21, v13

    if-nez v21, :cond_15

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v14, v21

    .line 667
    .local v14, "prefix":Ljava/lang/String;
    move-object/from16 v21, v14

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 670
    .local v13, "val":Ljava/lang/String;
    move-object/from16 v21, v13

    if-nez v21, :cond_16

    .line 671
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "unknown namespace prefix \'"

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

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 666
    .end local v14    # "prefix":Ljava/lang/String;
    .local v13, "val":Ljava/lang/Object;
    :cond_15
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    .line 674
    .local v13, "val":Ljava/lang/String;
    .restart local v14    # "prefix":Ljava/lang/String;
    :cond_16
    new-instance v21, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 676
    .end local v13    # "val":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_17
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x0

    move-object/from16 v24, v12

    const/16 v25, 0x0

    aget-object v24, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x1

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v24, v22, v23

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x2

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v24, v22, v23

    move-object/from16 v13, v21

    .line 680
    .local v13, "xargs":[Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/PrimProcedure;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const-string/jumbo v23, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v23 .. v23}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v23

    const-string/jumbo v24, "resolvePrefix"

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    move-object/from16 v14, v21

    .line 683
    .local v14, "pproc":Lgnu/expr/PrimProcedure;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v14

    move-object/from16 v24, v13

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v15, v21

    .line 684
    .local v15, "app":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v15

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 685
    move-object/from16 v21, v15

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 689
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "xargs":[Lgnu/expr/Expression;
    .end local v14    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v15    # "app":Lgnu/expr/ApplyExp;
    :pswitch_5
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "localName"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 691
    .local v12, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:local-name"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 695
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_6
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "name"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 697
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:name"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 701
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_7
    const-string/jumbo v21, "gnu.xquery.util.NumberValue"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "numberValue"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 703
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:number"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 707
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_8
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "root"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 709
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:root"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 713
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_9
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "baseUri"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 715
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:base-uri"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 719
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_a
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "lang"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 721
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:lang"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 725
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_b
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "id$X"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 727
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:id"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 731
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_c
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "idref"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 733
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:idref"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 738
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_d
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 739
    .local v12, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_18

    .line 740
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 741
    :cond_18
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 745
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :pswitch_e
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "namespaceURI"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 747
    .local v12, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:namespace-uri"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 753
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_f
    const-string/jumbo v21, "gnu.xquery.util.StringUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "normalizeSpace"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 755
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:normalize-space"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 761
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_10
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 762
    .local v12, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_19

    .line 763
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 764
    :cond_19
    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 769
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :pswitch_11
    const-string/jumbo v21, "gnu.xquery.util.StringUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "compare"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 771
    .local v12, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:compare"

    const/16 v25, 0x2

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 775
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_12
    move-object/from16 v21, v2

    const-string/jumbo v22, "gnu.xml.TextUtils"

    invoke-static/range {v22 .. v22}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v22

    const-string/jumbo v23, "asString"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:string"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 781
    :pswitch_13
    const-string/jumbo v21, "gnu.xquery.util.SequenceUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "indexOf$X"

    const/16 v23, 0x4

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 783
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:index-of"

    const/16 v25, 0x2

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 787
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_14
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 788
    .local v12, "args":[Lgnu/expr/Expression;
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v13, v21

    .line 789
    .local v13, "cl":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v13

    const-string/jumbo v22, "collection"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v14, v21

    .line 790
    .local v14, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_1a

    .line 791
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 792
    :cond_1a
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v15, v21

    .line 793
    .local v15, "base":Lgnu/expr/Expression;
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_1b

    move-object/from16 v21, v12

    const/16 v22, 0x0

    aget-object v21, v21, v22

    :goto_9
    move-object/from16 v16, v21

    .line 795
    .local v16, "uri":Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v14

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x0

    move-object/from16 v27, v16

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x1

    move-object/from16 v27, v15

    aput-object v27, v25, v26

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v17, v21

    .line 797
    .local v17, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v17

    sget-object v22, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 798
    move-object/from16 v21, v17

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 793
    .end local v16    # "uri":Lgnu/expr/Expression;
    .end local v17    # "aexp":Lgnu/expr/ApplyExp;
    :cond_1b
    sget-object v21, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_9

    .line 803
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "cl":Lgnu/bytecode/ClassType;
    .end local v14    # "meth":Lgnu/bytecode/Method;
    .end local v15    # "base":Lgnu/expr/Expression;
    :pswitch_15
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 804
    .restart local v12    # "args":[Lgnu/expr/Expression;
    const-string/jumbo v21, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v13, v21

    .line 806
    .restart local v13    # "cl":Lgnu/bytecode/ClassType;
    move/from16 v21, v9

    const/16 v22, -0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 808
    const-string/jumbo v21, "docCached"

    move-object/from16 v14, v21

    .line 809
    .local v14, "mname":Ljava/lang/String;
    sget-boolean v21, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v21, :cond_1c

    const-string/jumbo v21, "document"

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 811
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    const/16 v22, 0x77

    const-string/jumbo v23, "replace \'document\' by \'doc\'"

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 816
    :cond_1c
    :goto_a
    move-object/from16 v21, v13

    move-object/from16 v22, v14

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v15, v21

    .line 817
    .local v15, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_1e

    .line 818
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 815
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v14    # "mname":Ljava/lang/String;
    .end local v15    # "meth":Lgnu/bytecode/Method;
    :cond_1d
    const-string/jumbo v21, "availableCached"

    move-object/from16 v14, v21

    .restart local v14    # "mname":Ljava/lang/String;
    goto :goto_a

    .line 819
    .restart local v10    # "err":Lgnu/expr/Expression;
    .restart local v15    # "meth":Lgnu/bytecode/Method;
    :cond_1e
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v16, v21

    .line 820
    .local v16, "base":Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v15

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x0

    move-object/from16 v27, v12

    const/16 v28, 0x0

    aget-object v27, v27, v28

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x1

    move-object/from16 v27, v16

    aput-object v27, v25, v26

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v17, v21

    .line 822
    .restart local v17    # "aexp":Lgnu/expr/ApplyExp;
    move/from16 v21, v9

    const/16 v22, -0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 823
    move-object/from16 v21, v17

    sget-object v22, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 826
    :goto_b
    move-object/from16 v21, v17

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 825
    :cond_1f
    move-object/from16 v21, v17

    sget-object v22, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_b

    .line 830
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "cl":Lgnu/bytecode/ClassType;
    .end local v14    # "mname":Ljava/lang/String;
    .end local v15    # "meth":Lgnu/bytecode/Method;
    .end local v16    # "base":Lgnu/expr/Expression;
    .end local v17    # "aexp":Lgnu/expr/ApplyExp;
    :pswitch_16
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 831
    .restart local v12    # "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v8

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_20

    .line 832
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 833
    :cond_20
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 834
    .local v13, "margs":[Lgnu/expr/Expression;
    move-object/from16 v21, v13

    const/16 v22, 0x0

    move-object/from16 v23, v12

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    .line 835
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 836
    move-object/from16 v21, v13

    const/16 v22, 0x1

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    .line 839
    :goto_c
    const-string/jumbo v21, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "resolveURI"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v14, v21

    .line 841
    .local v14, "meth":Lgnu/bytecode/Method;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v14

    move-object/from16 v24, v13

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 838
    .end local v14    # "meth":Lgnu/bytecode/Method;
    :cond_21
    move-object/from16 v21, v13

    const/16 v22, 0x1

    move-object/from16 v23, v12

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    goto :goto_c

    .line 845
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    .end local v13    # "margs":[Lgnu/expr/Expression;
    :pswitch_17
    const-string/jumbo v21, "gnu.xquery.util.DistinctValues"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "distinctValues$X"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 847
    .local v12, "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:distinct-values"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 853
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_18
    const-string/jumbo v21, "gnu.xquery.util.SequenceUtils"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "deepEqual"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 855
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:deep-equal"

    const/16 v25, 0x2

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 860
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_19
    const-string/jumbo v21, "gnu.xquery.util.MinMax"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "min"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 862
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:min"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 867
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_1a
    const-string/jumbo v21, "gnu.xquery.util.MinMax"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    const-string/jumbo v22, "max"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v12, v21

    .line 869
    .restart local v12    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    const-string/jumbo v24, "fn:max"

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 873
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_1b
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v22

    move-object/from16 v23, v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v25}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v10, v22

    .restart local v10    # "err":Lgnu/expr/Expression;
    if-eqz v21, :cond_22

    .line 874
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 875
    :cond_22
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 876
    .local v12, "coll":Lgnu/xquery/util/NamedCollator;
    move-object/from16 v21, v12

    if-eqz v21, :cond_23

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/util/NamedCollator;->getName()Ljava/lang/String;

    move-result-object v21

    :goto_d
    invoke-static/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v21, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    goto :goto_d

    .line 880
    .end local v10    # "err":Lgnu/expr/Expression;
    .end local v12    # "coll":Lgnu/xquery/util/NamedCollator;
    :pswitch_1c
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    move-object/from16 v13, v21

    .line 881
    .local v13, "comp":Lgnu/expr/Compilation;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v14, v21

    .line 882
    .local v14, "args":[Lgnu/expr/Expression;
    const/16 v21, 0x0

    move/from16 v15, v21

    .line 883
    .local v15, "i":I
    :goto_e
    move/from16 v21, v15

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    .line 885
    move-object/from16 v21, v14

    move/from16 v22, v15

    aget-object v21, v21, v22

    move-object/from16 v16, v21

    .line 886
    .local v16, "pname":Lgnu/expr/Expression;
    move-object/from16 v21, v16

    check-cast v21, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v17, v21

    .line 887
    .local v17, "qname":Ljava/lang/String;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v21, v0

    move-object/from16 v22, v17

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v21

    move-object/from16 v18, v21

    .line 888
    .local v18, "psymbol":Lgnu/mapping/Symbol;
    move-object/from16 v21, v18

    if-nez v21, :cond_25

    .line 889
    .line 883
    :cond_24
    :goto_f
    add-int/lit8 v15, v15, 0x2

    goto :goto_e

    .line 890
    :cond_25
    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_26

    .line 891
    move-object/from16 v21, v13

    const/16 v22, 0x65

    const-string/jumbo v23, "pragma name cannot be in the empty namespace"

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_f

    .line 894
    :cond_26
    move-object/from16 v21, v2

    move-object/from16 v22, v18

    move-object/from16 v23, v14

    move/from16 v24, v15

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .line 896
    .local v19, "replacement":Lgnu/expr/Expression;
    move-object/from16 v21, v19

    if-eqz v21, :cond_24

    .line 897
    move-object/from16 v21, v19

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 900
    .end local v16    # "pname":Lgnu/expr/Expression;
    .end local v17    # "qname":Ljava/lang/String;
    .end local v18    # "psymbol":Lgnu/mapping/Symbol;
    .end local v19    # "replacement":Lgnu/expr/Expression;
    :cond_27
    move/from16 v21, v15

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_28

    .line 901
    move-object/from16 v21, v14

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    aget-object v21, v21, v22

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 902
    :cond_28
    const-string/jumbo v21, "no recognized pragma or default in extension expression"

    move-object/from16 v16, v21

    .line 903
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v21

    const/16 v22, 0x65

    move-object/from16 v23, v16

    const-string/jumbo v24, "XQST0079"

    invoke-virtual/range {v21 .. v24}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v21, Lgnu/expr/ErrorExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v16

    invoke-direct/range {v22 .. v23}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 918
    .end local v9    # "code":I
    .end local v13    # "comp":Lgnu/expr/Compilation;
    .end local v14    # "args":[Lgnu/expr/Expression;
    .end local v15    # "i":I
    .end local v16    # "msg":Ljava/lang/String;
    .local v8, "args":[Lgnu/expr/Expression;
    :cond_29
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const-string/jumbo v23, "gnu.xquery.util.CastAs"

    const-string/jumbo v24, "castAs"

    invoke-static/range {v23 .. v24}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x0

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x1

    move-object/from16 v27, v8

    const/16 v28, 0x0

    aget-object v27, v27, v28

    aput-object v27, v25, v26

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 921
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_2a
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/MakeElement;

    move/from16 v21, v0

    if-eqz v21, :cond_31

    .line 923
    move-object/from16 v21, v7

    check-cast v21, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v8, v21

    .line 926
    .local v8, "make":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v21

    move-object/from16 v9, v21

    .line 927
    .local v9, "nsBindings":Lgnu/xml/NamespaceBinding;
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    move-object/from16 v21, v0

    move-object/from16 v10, v21

    .line 928
    .local v10, "tag":Lgnu/mapping/Symbol;
    move-object/from16 v21, v10

    if-nez v21, :cond_2b

    .line 929
    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v21

    move-object/from16 v10, v21

    .line 930
    :cond_2b
    move-object/from16 v21, v10

    const/16 v22, 0x0

    move-object/from16 v23, v9

    invoke-static/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v21

    move-object/from16 v9, v21

    .line 931
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v11, v21

    .line 932
    .local v11, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/mapping/Symbol;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 933
    .local v12, "attrSyms":[Lgnu/mapping/Symbol;
    const/16 v21, 0x0

    move/from16 v13, v21

    .line 934
    .local v13, "nattrSyms":I
    const/16 v21, 0x0

    move/from16 v14, v21

    .local v14, "i":I
    :goto_10
    move/from16 v21, v14

    move-object/from16 v22, v11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_30

    .line 936
    move-object/from16 v21, v11

    move/from16 v22, v14

    aget-object v21, v21, v22

    move-object/from16 v15, v21

    .line 937
    .local v15, "arg":Lgnu/expr/Expression;
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v21, v0

    if-eqz v21, :cond_2c

    .line 939
    move-object/from16 v21, v15

    check-cast v21, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v21

    .line 940
    .local v16, "app":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v21

    sget-object v22, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2c

    .line 942
    move-object/from16 v21, v16

    invoke-static/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v21

    move-object/from16 v17, v21

    .line 943
    .local v17, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v21, v17

    if-eqz v21, :cond_2c

    .line 945
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 947
    .local v18, "j":I
    :goto_11
    move/from16 v21, v18

    move/from16 v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d

    .line 949
    move-object/from16 v21, v12

    move/from16 v22, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v23, v17

    aput-object v23, v21, v22

    .line 950
    .line 961
    move-object/from16 v21, v17

    const/16 v22, 0x1

    move-object/from16 v23, v9

    invoke-static/range {v21 .. v23}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v21

    move-object/from16 v9, v21

    .line 934
    .end local v16    # "app":Lgnu/expr/ApplyExp;
    .end local v17    # "sym":Lgnu/mapping/Symbol;
    .end local v18    # "j":I
    :cond_2c
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 952
    .restart local v16    # "app":Lgnu/expr/ApplyExp;
    .restart local v17    # "sym":Lgnu/mapping/Symbol;
    .restart local v18    # "j":I
    :cond_2d
    move-object/from16 v21, v17

    move-object/from16 v22, v12

    move/from16 v23, v18

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 954
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v21

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 955
    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v21

    move-object/from16 v19, v21

    .line 956
    .local v19, "elementSym":Lgnu/mapping/Symbol;
    move-object/from16 v21, v19

    if-nez v21, :cond_2f

    const/16 v21, 0x0

    :goto_12
    move-object/from16 v20, v21

    .line 958
    .local v20, "elementName":Ljava/lang/String;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v21, v0

    const/16 v22, 0x65

    move-object/from16 v23, v17

    move-object/from16 v24, v20

    invoke-static/range {v23 .. v24}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "XQST0040"

    invoke-virtual/range {v21 .. v24}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 945
    .end local v19    # "elementSym":Lgnu/mapping/Symbol;
    .end local v20    # "elementName":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v18, v18, 0x1

    goto :goto_11

    .line 956
    .restart local v19    # "elementSym":Lgnu/mapping/Symbol;
    :cond_2f
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_12

    .line 966
    .end local v15    # "arg":Lgnu/expr/Expression;
    .end local v16    # "app":Lgnu/expr/ApplyExp;
    .end local v17    # "sym":Lgnu/mapping/Symbol;
    .end local v18    # "j":I
    .end local v19    # "elementSym":Lgnu/mapping/Symbol;
    :cond_30
    move-object/from16 v21, v9

    if-eqz v21, :cond_31

    .line 967
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 969
    .end local v8    # "make":Lgnu/kawa/xml/MakeElement;
    .end local v9    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .end local v10    # "tag":Lgnu/mapping/Symbol;
    .end local v11    # "args":[Lgnu/expr/Expression;
    .end local v12    # "attrSyms":[Lgnu/mapping/Symbol;
    .end local v13    # "nattrSyms":I
    .end local v14    # "i":I
    :cond_31
    move-object/from16 v21, v3

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 550
    :pswitch_data_0
    .packed-switch -0x24
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_1b
        :pswitch_7
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_d
        :pswitch_4
        :pswitch_16
        :pswitch_9
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_e
        :pswitch_5
        :pswitch_17
        :pswitch_11
        :pswitch_1c
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 19

    .prologue
    .line 277
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object/from16 v2, p2

    .local v2, "call":Lgnu/expr/ApplyExp;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v13

    if-nez v13, :cond_1

    .line 279
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    .line 280
    .local v3, "symbol":Ljava/lang/Object;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v13

    move v4, v13

    .line 281
    .local v4, "needFunction":Z
    move-object v13, v1

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v13

    move v5, v13

    .line 282
    .local v5, "needType":Z
    move-object v13, v2

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    move v6, v13

    .line 284
    .local v6, "namespace":I
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v14, v3

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    .line 286
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v13, v7

    if-eqz v13, :cond_3

    .line 287
    .line 366
    :cond_0
    :goto_1
    move-object v13, v7

    if-eqz v13, :cond_11

    .line 367
    move-object v13, v1

    move-object v14, v7

    invoke-virtual {v13, v14}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 375
    .end local v3    # "symbol":Ljava/lang/Object;
    .end local v4    # "needFunction":Z
    .end local v5    # "needType":Z
    .end local v6    # "namespace":I
    .end local v7    # "decl":Lgnu/expr/Declaration;
    :cond_1
    :goto_2
    move-object v13, v1

    move-object v0, v13

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_3
    return-object v0

    .line 282
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    .restart local v3    # "symbol":Ljava/lang/Object;
    .restart local v4    # "needFunction":Z
    .restart local v5    # "needType":Z
    :cond_2
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v13

    invoke-static {v13}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v13

    goto :goto_0

    .line 288
    .restart local v6    # "namespace":I
    .restart local v7    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object v13, v3

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_7

    const-string/jumbo v13, ""

    move-object v14, v3

    check-cast v14, Lgnu/mapping/Symbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v8, v15

    .local v8, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 292
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 294
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v13, "request"

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 295
    const-string/jumbo v13, "getCurrentRequest"

    move-object v10, v13

    .line 300
    .local v10, "mname":Ljava/lang/String;
    :goto_4
    move-object v13, v10

    if-eqz v13, :cond_6

    .line 302
    const-string/jumbo v13, "gnu.kawa.servlet.ServletRequestContext"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    move-object v14, v10

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    move-object v11, v13

    .line 305
    .local v11, "meth":Lgnu/bytecode/Method;
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v11

    sget-object v16, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v13

    goto :goto_3

    .line 296
    .end local v10    # "mname":Ljava/lang/String;
    .end local v11    # "meth":Lgnu/bytecode/Method;
    :cond_4
    const-string/jumbo v13, "response"

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 297
    const-string/jumbo v13, "getCurrentResponse"

    move-object v10, v13

    .restart local v10    # "mname":Ljava/lang/String;
    goto :goto_4

    .line 299
    .end local v10    # "mname":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move-object v10, v13

    .restart local v10    # "mname":Ljava/lang/String;
    goto :goto_4

    .line 307
    :cond_6
    goto :goto_1

    .line 308
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "mname":Ljava/lang/String;
    :cond_7
    move-object v13, v3

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_8

    .line 311
    move-object v13, v0

    move-object v14, v3

    check-cast v14, Lgnu/mapping/Symbol;

    invoke-virtual {v13, v14}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    goto/16 :goto_1

    .line 315
    :cond_8
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    move-object v9, v13

    .line 316
    .restart local v9    # "name":Ljava/lang/String;
    move-object v13, v9

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_9

    .line 318
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 319
    move v13, v4

    if-eqz v13, :cond_9

    .line 321
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_5
    move v13, v10

    move-object v14, v0

    iget-object v14, v14, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    array-length v14, v14

    if-ge v13, v14, :cond_9

    .line 323
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    move v14, v10

    aget-object v13, v13, v14

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v13

    move-object v8, v13

    .line 324
    .restart local v8    # "sym":Lgnu/mapping/Symbol;
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v14, v8

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    .line 325
    move-object v13, v7

    if-eqz v13, :cond_c

    .line 326
    .line 333
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    .end local v10    # "i":I
    :cond_9
    :goto_6
    move-object v13, v7

    if-nez v13, :cond_0

    .line 335
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object v14, v9

    move v15, v4

    invoke-virtual {v13, v14, v15}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v13

    move-object v8, v13

    .line 336
    .restart local v8    # "sym":Lgnu/mapping/Symbol;
    move-object v13, v8

    if-eqz v13, :cond_0

    .line 338
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v14, v8

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    .line 339
    move-object v13, v7

    if-nez v13, :cond_0

    move v13, v4

    if-nez v13, :cond_a

    move v13, v5

    if-eqz v13, :cond_0

    .line 342
    :cond_a
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 343
    .local v10, "uri":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v11, v13

    .line 344
    .local v11, "type":Lgnu/bytecode/Type;
    const-string/jumbo v13, "http://www.w3.org/2001/XMLSchema"

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 346
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v11, v13

    .line 353
    :cond_b
    :goto_7
    move-object v13, v11

    if-eqz v13, :cond_f

    .line 354
    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v11

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v14, v1

    invoke-virtual {v13, v14}, Lgnu/expr/QuoteExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_3

    .line 327
    .end local v11    # "type":Lgnu/bytecode/Type;
    .local v10, "i":I
    :cond_c
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    .line 328
    move-object v13, v7

    if-eqz v13, :cond_d

    .line 329
    goto :goto_6

    .line 321
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 348
    .local v10, "uri":Ljava/lang/String;
    .restart local v11    # "type":Lgnu/bytecode/Type;
    :cond_e
    move v13, v5

    if-eqz v13, :cond_b

    move-object v13, v10

    const-string/jumbo v14, ""

    if-ne v13, v14, :cond_b

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v13

    invoke-virtual {v13}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v13

    if-nez v13, :cond_b

    .line 351
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v13

    move-object v11, v13

    goto :goto_7

    .line 355
    :cond_f
    move-object v13, v10

    if-eqz v13, :cond_10

    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_10

    move-object v13, v10

    const-string/jumbo v14, "class:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 358
    move-object v13, v10

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    move-object v12, v13

    .line 359
    .local v12, "ctype":Lgnu/bytecode/ClassType;
    move-object v13, v12

    move-object v14, v8

    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_3

    .line 361
    .end local v12    # "ctype":Lgnu/bytecode/ClassType;
    :cond_10
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v7, v13

    goto/16 :goto_1

    .line 368
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "type":Lgnu/bytecode/Type;
    :cond_11
    move v13, v4

    if-eqz v13, :cond_12

    .line 369
    move-object v13, v0

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unknown function "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    goto/16 :goto_2

    .line 370
    :cond_12
    move v13, v5

    if-eqz v13, :cond_13

    .line 371
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const/16 v14, 0x65

    move-object v15, v1

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unknown type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "XPST0051"

    invoke-virtual/range {v13 .. v17}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 373
    :cond_13
    move-object v13, v0

    iget-object v13, v13, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const/16 v14, 0x65

    move-object v15, v1

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unknown variable $"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "XPST0008"

    invoke-virtual/range {v13 .. v17}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Lgnu/expr/ApplyExp;

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v3, v7

    .line 381
    .local v3, "result":Lgnu/expr/Expression;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    .line 384
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    iget-boolean v7, v7, Lgnu/expr/Compilation;->immediate:Z

    if-nez v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v5, v8

    .local v5, "name":Ljava/lang/Object;
    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_1

    const-string/jumbo v7, "http://www.w3.org/2005/xquery-local-functions"

    move-object v8, v5

    check-cast v8, Lgnu/mapping/Symbol;

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v6, v8

    .local v6, "new_value":Lgnu/expr/Expression;
    instance-of v7, v7, Lgnu/expr/ApplyExp;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lgnu/expr/ApplyExp;

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    sget-object v8, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    if-eq v7, v8, :cond_1

    .line 390
    :cond_0
    move-object v7, v4

    const-wide/32 v8, 0x1000000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 391
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 393
    .end local v5    # "name":Ljava/lang/Object;
    .end local v6    # "new_value":Lgnu/expr/Expression;
    :cond_1
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "minArgs":I
    move-object v5, v0

    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lgnu/expr/PrimProcedure;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    return-object v0
.end method

.method withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object v1, p1

    .local v1, "function":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "minArgs":I
    move-object v7, v3

    move v8, v4

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v2

    array-length v10, v10

    invoke-static {v7, v8, v9, v10}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 478
    .local v5, "err":Ljava/lang/String;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 479
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 483
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .line 480
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v6, v7

    .line 481
    .local v6, "xargs":[Lgnu/expr/Expression;
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    move-object v7, v6

    move v8, v4

    move-object v9, v0

    move-object v10, v2

    move v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/lang/XQResolveNames;->getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v9

    aput-object v9, v7, v8

    .line 483
    new-instance v7, Lgnu/expr/ApplyExp;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v7

    goto :goto_0
.end method

.method withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/XQResolveNames;
    move-object/from16 v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object/from16 v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "minArgs":I
    move-object v9, v3

    move v10, v4

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v2

    array-length v12, v12

    invoke-static {v9, v10, v11, v12}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 492
    .local v5, "err":Ljava/lang/String;
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 493
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    .line 508
    .end local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :goto_0
    return-object v0

    .line 494
    .restart local v0    # "this":Lgnu/xquery/lang/XQResolveNames;
    :cond_0
    move-object v9, v2

    array-length v9, v9

    move v10, v4

    if-ne v9, v10, :cond_2

    .line 496
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v6, v9

    .line 497
    .local v6, "xargs":[Lgnu/expr/Expression;
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v4

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v7, v9

    .line 499
    .local v7, "dot":Lgnu/expr/Declaration;
    move-object v9, v7

    if-nez v9, :cond_1

    .line 501
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "undefined context for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 502
    .local v8, "message":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const/16 v10, 0x65

    move-object v11, v8

    const-string/jumbo v12, "XPDY0002"

    invoke-virtual {v9, v10, v11, v12}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v9, Lgnu/expr/ErrorExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    invoke-direct {v10, v11}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_0

    .line 505
    .end local v8    # "message":Ljava/lang/String;
    :cond_1
    move-object v9, v6

    move v10, v4

    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v7

    invoke-direct {v12, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v11, v9, v10

    .line 506
    move-object v9, v6

    move-object v2, v9

    .line 508
    .end local v6    # "xargs":[Lgnu/expr/Expression;
    .end local v7    # "dot":Lgnu/expr/Declaration;
    :cond_2
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v9

    goto :goto_0
.end method
