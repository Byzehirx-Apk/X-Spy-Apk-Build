.class public Lgnu/kawa/slib/XML;
.super Lgnu/expr/ModuleBody;
.source "XML.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/XML;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

.field public static final attribute$Mnname:Lgnu/expr/ModuleMethod;

.field public static final comment:Ljava/lang/Class;

.field public static final element$Mnname:Lgnu/expr/ModuleMethod;

.field public static final parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final processing$Mninstruction:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "attribute-name"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "element-name"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "parse-xml-from-url"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v1, Lgnu/kawa/xml/KProcessingInstruction;

    sput-object v1, Lgnu/kawa/slib/XML;->processing$Mninstruction:Ljava/lang/Class;

    const-class v1, Lgnu/kawa/xml/KComment;

    sput-object v1, Lgnu/kawa/slib/XML;->comment:Ljava/lang/Class;

    new-instance v1, Lgnu/kawa/slib/XML;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/kawa/slib/XML;-><init>()V

    sput-object v1, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XML;->parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XML;->element$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XML;->attribute$Mnname:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "attr":Lgnu/kawa/xml/KAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KAttr;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "attr":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public static elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "element":Lgnu/kawa/xml/KElement;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KElement;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "element":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public static parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "url":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "url":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 23
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/XML;->parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 20
    :pswitch_1
    move-object v3, v2

    :try_start_0
    check-cast v3, Lgnu/kawa/xml/KElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lgnu/kawa/slib/XML;->elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 23
    :pswitch_2
    move-object v3, v2

    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lgnu/kawa/slib/XML;->attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 20
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "element-name"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 23
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "attribute-name"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 17
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 23
    :goto_0
    return v0

    :pswitch_0
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/kawa/xml/KAttr;

    if-nez v6, :cond_0

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_0
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 20
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/kawa/xml/KElement;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 17
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/XML;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .local v2, "$result":Lgnu/lists/Consumer;
    new-instance v3, Lgnu/kawa/xml/OutputAsXML;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/xml/OutputAsXML;-><init>()V

    sput-object v3, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

    .line 3
    return-void
.end method
