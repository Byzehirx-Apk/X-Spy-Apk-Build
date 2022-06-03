.class public Lgnu/kawa/lispexpr/MakeXmlElement;
.super Lkawa/lang/Syntax;
.source "MakeXmlElement.java"


# static fields
.field public static final makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

.field static final typeNamespace:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lgnu/kawa/lispexpr/MakeXmlElement;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/MakeXmlElement;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    .line 20
    sget-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    const-string/jumbo v1, "$make-xml$"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/MakeXmlElement;->setName(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "gnu.mapping.Namespace"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/MakeXmlElement;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 28

    .prologue
    .line 27
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/lispexpr/MakeXmlElement;
    move-object/from16 v3, p1

    .local v3, "form":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "tr":Lkawa/lang/Translator;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v5, v21

    .line 28
    .local v5, "pair1":Lgnu/lists/Pair;
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    .line 29
    .local v6, "namespaceList":Ljava/lang/Object;
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 30
    .local v7, "obj":Ljava/lang/Object;
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 31
    .local v8, "nsSeen":Z
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v21, v0

    move-object/from16 v9, v21

    .line 32
    .local v9, "saveBindings":Lgnu/xml/NamespaceBinding;
    move-object/from16 v21, v9

    move-object/from16 v10, v21

    .line 33
    .local v10, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 35
    move/from16 v21, v8

    if-nez v21, :cond_0

    .line 37
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->letStart()V

    .line 38
    const/16 v21, 0x1

    move/from16 v8, v21

    .line 40
    :cond_0
    move-object/from16 v21, v6

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v11, v21

    .line 41
    .local v11, "namespacePair":Lgnu/lists/Pair;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v12, v21

    .line 42
    .local v12, "namespaceNode":Lgnu/lists/Pair;
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v13, v21

    .line 43
    .local v13, "nsPrefix":Ljava/lang/String;
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v13, v21

    .line 44
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 45
    .local v14, "valueList":Ljava/lang/Object;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v21

    .line 46
    .local v15, "sbuf":Ljava/lang/StringBuilder;
    :goto_2
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 48
    move-object/from16 v21, v14

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v16, v21

    .line 49
    .local v16, "valuePair":Lgnu/lists/Pair;
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v17, v21

    .line 51
    .local v17, "valueForm":Ljava/lang/Object;
    move-object/from16 v21, v17

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v21, v17

    check-cast v21, Lgnu/lists/Pair;

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 55
    move-object/from16 v21, v17

    check-cast v21, Lgnu/lists/Pair;

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v18, v21

    .line 62
    .local v18, "value":Ljava/lang/Object;
    :goto_3
    move-object/from16 v21, v18

    if-nez v21, :cond_3

    .line 64
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v19, v21

    .line 65
    .local v19, "savePos":Ljava/lang/Object;
    move-object/from16 v21, v4

    const/16 v22, 0x65

    const-string/jumbo v23, "namespace URI must be literal"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 66
    move-object/from16 v21, v4

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 67
    .line 70
    .end local v19    # "savePos":Ljava/lang/Object;
    :goto_4
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 71
    goto :goto_2

    .line 43
    .end local v14    # "valueList":Ljava/lang/Object;
    .end local v15    # "sbuf":Ljava/lang/StringBuilder;
    .end local v16    # "valuePair":Lgnu/lists/Pair;
    .end local v17    # "valueForm":Ljava/lang/Object;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_1
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 59
    .restart local v14    # "valueList":Ljava/lang/Object;
    .restart local v15    # "sbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "valuePair":Lgnu/lists/Pair;
    .restart local v17    # "valueForm":Ljava/lang/Object;
    :cond_2
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v19, v21

    .line 60
    .local v19, "valueExp":Lgnu/expr/Expression;
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v18, v21

    .restart local v18    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 69
    .end local v19    # "valueExp":Lgnu/expr/Expression;
    :cond_3
    move-object/from16 v21, v15

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    goto :goto_4

    .line 72
    .end local v16    # "valuePair":Lgnu/lists/Pair;
    .end local v17    # "valueForm":Ljava/lang/Object;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_4
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v21

    .line 76
    .local v16, "nsUri":Ljava/lang/String;
    new-instance v21, Lgnu/xml/NamespaceBinding;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v13

    move-object/from16 v24, v16

    const-string/jumbo v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v24, 0x0

    :goto_5
    move-object/from16 v25, v10

    invoke-direct/range {v22 .. v25}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object/from16 v10, v21

    .line 81
    move-object/from16 v21, v13

    if-nez v21, :cond_6

    .line 83
    move-object/from16 v21, v16

    invoke-static/range {v21 .. v21}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v21

    move-object/from16 v17, v21

    .line 84
    .local v17, "namespace":Lgnu/mapping/Namespace;
    const-string/jumbo v21, "[default-element-namespace]"

    move-object/from16 v13, v21

    .line 90
    :goto_6
    sget-object v21, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v21

    move-object/from16 v18, v21

    .line 91
    .local v18, "nsSymbol":Lgnu/mapping/Symbol;
    move-object/from16 v21, v4

    move-object/from16 v22, v18

    sget-object v23, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    move-object/from16 v26, v17

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v24}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v19, v21

    .line 93
    .local v19, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v19

    const-wide/32 v22, 0x206000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 95
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    .line 96
    goto/16 :goto_0

    .line 76
    .end local v17    # "namespace":Lgnu/mapping/Namespace;
    .end local v18    # "nsSymbol":Lgnu/mapping/Symbol;
    .end local v19    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v24, v16

    goto :goto_5

    .line 88
    :cond_6
    move-object/from16 v21, v13

    move-object/from16 v22, v16

    invoke-static/range {v21 .. v22}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v21

    move-object/from16 v17, v21

    .restart local v17    # "namespace":Lgnu/mapping/Namespace;
    goto :goto_6

    .line 98
    .end local v11    # "namespacePair":Lgnu/lists/Pair;
    .end local v12    # "namespaceNode":Lgnu/lists/Pair;
    .end local v13    # "nsPrefix":Ljava/lang/String;
    .end local v14    # "valueList":Ljava/lang/Object;
    .end local v15    # "sbuf":Ljava/lang/StringBuilder;
    .end local v16    # "nsUri":Ljava/lang/String;
    .end local v17    # "namespace":Lgnu/mapping/Namespace;
    :cond_7
    new-instance v21, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object/from16 v11, v21

    .line 99
    .local v11, "mkElement":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v21, v11

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 100
    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 103
    move/from16 v21, v8

    if-eqz v21, :cond_8

    .line 104
    move-object/from16 v21, v4

    :try_start_0
    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->letEnter()V

    .line 105
    :cond_8
    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v23, v11

    move-object/from16 v24, v7

    invoke-static/range {v22 .. v24}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 106
    .local v12, "result":Lgnu/expr/Expression;
    move/from16 v21, v8

    if-eqz v21, :cond_9

    move-object/from16 v21, v4

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    :goto_7
    move-object/from16 v13, v21

    .line 110
    move-object/from16 v21, v4

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v21, v13

    move-object/from16 v2, v21

    .end local v2    # "this":Lgnu/kawa/lispexpr/MakeXmlElement;
    return-object v2

    .line 106
    .restart local v2    # "this":Lgnu/kawa/lispexpr/MakeXmlElement;
    :cond_9
    move-object/from16 v21, v12

    goto :goto_7

    .line 110
    .end local v12    # "result":Lgnu/expr/Expression;
    :catchall_0
    move-exception v21

    move-object/from16 v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v21, v20

    throw v21
.end method
