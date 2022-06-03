.class public Lgnu/kawa/lispexpr/DefineNamespace;
.super Lkawa/lang/Syntax;
.source "DefineNamespace.java"


# static fields
.field public static final XML_NAMESPACE_MAGIC:Ljava/lang/String; = "&xml&"

.field public static final define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;


# instance fields
.field private makePrivate:Z

.field private makeXML:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 16
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 18
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 21
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string/jumbo v1, "define-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string/jumbo v1, "define-private-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string/jumbo v1, "define-xml-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/DefineNamespace;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/DefineNamespace;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    const-string/jumbo v4, "define-namespace is only allowed in a <body>"

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/DefineNamespace;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18

    .prologue
    .line 32
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/DefineNamespace;
    move-object/from16 v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_0

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v5, v14

    .local v5, "p1":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_0

    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_0

    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v6, v14

    .local v6, "p2":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v13, v14, :cond_1

    .line 37
    .end local v5    # "p1":Lgnu/lists/Pair;
    .end local v6    # "p2":Lgnu/lists/Pair;
    :cond_0
    move-object v13, v4

    const/16 v14, 0x65

    const-string/jumbo v15, "invalid syntax for define-namespace"

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 38
    const/4 v13, 0x0

    move v0, v13

    .line 88
    .end local v0    # "this":Lgnu/kawa/lispexpr/DefineNamespace;
    :goto_0
    return v0

    .line 40
    .restart local v0    # "this":Lgnu/kawa/lispexpr/DefineNamespace;
    .restart local v5    # "p1":Lgnu/lists/Pair;
    .restart local v6    # "p2":Lgnu/lists/Pair;
    :cond_1
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/Symbol;

    move-object v7, v13

    .line 41
    .local v7, "name":Lgnu/mapping/Symbol;
    move-object v13, v3

    move-object v14, v7

    const/16 v15, 0x77

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v8, v13

    .line 42
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v13, v4

    move-object v14, v8

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 43
    move-object v13, v8

    const-wide/32 v14, 0x244000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 45
    move-object v13, v0

    iget-boolean v13, v13, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    if-eqz v13, :cond_3

    .line 47
    move-object v13, v8

    const-wide/32 v14, 0x1000000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 48
    move-object v13, v8

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 52
    :cond_2
    :goto_1
    move-object v13, v8

    move-object v14, v5

    invoke-static {v13, v14}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 54
    const/4 v13, 0x0

    move-object v10, v13

    .line 55
    .local v10, "literal":Ljava/lang/String;
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_6

    .line 62
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 64
    move-object v13, v10

    const-string/jumbo v14, "class:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 66
    move-object v13, v10

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 67
    .local v12, "cname":Ljava/lang/String;
    move-object v13, v10

    move-object v14, v12

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/kawa/lispexpr/ClassNamespace;->getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;

    move-result-object v13

    move-object v11, v13

    .line 69
    .local v11, "namespace":Lgnu/mapping/Namespace;
    move-object v13, v8

    const-string/jumbo v14, "gnu.kawa.lispexpr.ClassNamespace"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 70
    .line 81
    .end local v12    # "cname":Ljava/lang/String;
    :goto_2
    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v11

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v9, v13

    .line 82
    .local v9, "value":Lgnu/expr/Expression;
    move-object v13, v8

    const-wide/16 v14, 0x2000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 83
    .line 86
    .end local v11    # "namespace":Lgnu/mapping/Namespace;
    :goto_3
    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    move-object v13, v2

    move-object v14, v8

    move-object v15, v9

    invoke-static {v14, v15}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    const/4 v13, 0x1

    move v0, v13

    goto/16 :goto_0

    .line 50
    .end local v9    # "value":Lgnu/expr/Expression;
    .end local v10    # "literal":Ljava/lang/String;
    :cond_3
    move-object v13, v3

    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_2

    .line 51
    move-object v13, v8

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setCanRead(Z)V

    goto :goto_1

    .line 71
    .restart local v10    # "literal":Ljava/lang/String;
    :cond_4
    move-object v13, v0

    iget-boolean v13, v13, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    if-eqz v13, :cond_5

    .line 73
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    invoke-static {v13, v14}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v13

    move-object v11, v13

    .line 74
    .restart local v11    # "namespace":Lgnu/mapping/Namespace;
    move-object v13, v8

    const-string/jumbo v14, "gnu.kawa.xml.XmlNamespace"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 78
    .end local v11    # "namespace":Lgnu/mapping/Namespace;
    :cond_5
    move-object v13, v10

    invoke-static {v13}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v13

    move-object v11, v13

    .line 79
    .restart local v11    # "namespace":Lgnu/mapping/Namespace;
    move-object v13, v8

    const-string/jumbo v14, "gnu.mapping.Namespace"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 85
    .end local v11    # "namespace":Lgnu/mapping/Namespace;
    :cond_6
    move-object v13, v4

    move-object v14, v6

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v13

    move-object v9, v13

    .restart local v9    # "value":Lgnu/expr/Expression;
    goto :goto_3
.end method
