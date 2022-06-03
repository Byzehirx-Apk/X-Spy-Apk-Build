.class public Lgnu/kawa/xml/MakeElement;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeElement.java"


# static fields
.field static final endElementMethod:Lgnu/bytecode/Method;

.field public static final makeElement:Lgnu/kawa/xml/MakeElement;

.field static final startElementMethod3:Lgnu/bytecode/Method;

.field static final startElementMethod4:Lgnu/bytecode/Method;

.field static final typeMakeElement:Lgnu/bytecode/ClassType;


# instance fields
.field public copyNamespacesMode:I

.field private handlingKeywordParameters:Z

.field namespaceNodes:Lgnu/xml/NamespaceBinding;

.field public tag:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeElement;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/MakeElement;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeElement;->makeElement:Lgnu/kawa/xml/MakeElement;

    .line 179
    const-string/jumbo v0, "gnu.kawa.xml.MakeElement"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeElement;->typeMakeElement:Lgnu/bytecode/ClassType;

    .line 181
    sget-object v0, Lgnu/kawa/xml/MakeElement;->typeMakeElement:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "startElement"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeElement;->startElementMethod3:Lgnu/bytecode/Method;

    .line 183
    sget-object v0, Lgnu/kawa/xml/MakeElement;->typeMakeElement:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "startElement"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeElement;->startElementMethod4:Lgnu/bytecode/Method;

    .line 185
    sget-object v0, Lgnu/kawa/xml/MakeElement;->typeMakeElement:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "endElement"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeElement;->endElementMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    .line 23
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    return-void
.end method

.method public static endElement(Lgnu/lists/Consumer;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "out":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    invoke-interface {v2}, Lgnu/lists/Consumer;->endElement()V

    .line 97
    return-void
.end method

.method public static getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 54
    .local v1, "args":[Lgnu/expr/Expression;
    move-object v4, v1

    array-length v4, v4

    if-lez v4, :cond_0

    .line 56
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 57
    .local v2, "arg0":Lgnu/expr/Expression;
    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v2

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 60
    .local v3, "val":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_0

    .line 61
    move-object v4, v3

    check-cast v4, Lgnu/mapping/Symbol;

    move-object v0, v4

    .line 64
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v2    # "arg0":Lgnu/expr/Expression;
    .end local v3    # "val":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static startElement(Lgnu/lists/Consumer;Ljava/lang/Object;I)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "out":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/Object;
    move v2, p2

    .local v2, "copyNamespacesMode":I
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    .line 86
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    move-object v3, v4

    .line 89
    .local v3, "type":Lgnu/mapping/Symbol;
    :goto_0
    move-object v4, v0

    instance-of v4, v4, Lgnu/xml/XMLFilter;

    if-eqz v4, :cond_0

    .line 90
    move-object v4, v0

    check-cast v4, Lgnu/xml/XMLFilter;

    move v5, v2

    iput v5, v4, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 91
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 92
    return-void

    .line 88
    .end local v3    # "type":Lgnu/mapping/Symbol;
    :cond_1
    const-string/jumbo v4, ""

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "type":Lgnu/mapping/Symbol;
    goto :goto_0
.end method

.method public static startElement(Lgnu/lists/Consumer;Ljava/lang/Object;ILgnu/xml/NamespaceBinding;)V
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "out":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/Object;
    move v2, p2

    .local v2, "copyNamespacesMode":I
    move-object v3, p3

    .local v3, "namespaceNodes":Lgnu/xml/NamespaceBinding;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_1

    .line 73
    new-instance v5, Lgnu/xml/XName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    check-cast v7, Lgnu/mapping/Symbol;

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object v4, v5

    .line 76
    .local v4, "type":Lgnu/xml/XName;
    :goto_0
    move-object v5, v0

    instance-of v5, v5, Lgnu/xml/XMLFilter;

    if-eqz v5, :cond_0

    .line 77
    move-object v5, v0

    check-cast v5, Lgnu/xml/XMLFilter;

    move v6, v2

    iput v6, v5, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 78
    :cond_0
    move-object v5, v0

    move-object v6, v4

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 75
    .end local v4    # "type":Lgnu/xml/XName;
    :cond_1
    new-instance v5, Lgnu/xml/XName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, ""

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-static {v7, v8, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object v4, v5

    .restart local v4    # "type":Lgnu/xml/XName;
    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 12

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v1

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v8

    .line 102
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v8, v1

    invoke-static {v8}, Lgnu/kawa/xml/MakeElement;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v8

    move-object v3, v8

    .line 105
    .local v3, "out":Lgnu/lists/Consumer;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    :goto_0
    move-object v4, v8

    .line 106
    .local v4, "type":Ljava/lang/Object;
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    if-eqz v8, :cond_1

    .line 107
    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/xml/MakeElement;->startElement(Lgnu/lists/Consumer;Ljava/lang/Object;ILgnu/xml/NamespaceBinding;)V

    .line 110
    :goto_1
    sget-object v8, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v5, v8

    .line 113
    .local v5, "endMarker":Lgnu/expr/Special;
    :goto_2
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 114
    .local v6, "arg":Ljava/lang/Object;
    move-object v8, v6

    move-object v9, v5

    if-ne v8, v9, :cond_2

    .line 115
    .line 124
    move-object v8, v3

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeElement;->endElement(Lgnu/lists/Consumer;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    move-object v8, v2

    move-object v9, v1

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeElement;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 129
    .line 130
    return-void

    .line 105
    .end local v4    # "type":Ljava/lang/Object;
    .end local v5    # "endMarker":Lgnu/expr/Special;
    .end local v6    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 109
    .restart local v4    # "type":Ljava/lang/Object;
    :cond_1
    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    invoke-static {v8, v9, v10}, Lgnu/kawa/xml/MakeElement;->startElement(Lgnu/lists/Consumer;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 128
    .end local v4    # "type":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    move-object v9, v1

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeElement;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v8, v7

    throw v8

    .line 116
    .restart local v4    # "type":Ljava/lang/Object;
    .restart local v5    # "endMarker":Lgnu/expr/Special;
    .restart local v6    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v6

    :try_start_2
    instance-of v8, v8, Lgnu/lists/Consumable;

    if-eqz v8, :cond_4

    .line 117
    move-object v8, v6

    check-cast v8, Lgnu/lists/Consumable;

    move-object v9, v3

    invoke-interface {v8, v9}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 121
    :goto_3
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/xml/MakeElement;->isHandlingKeywordParameters()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 122
    move-object v8, v3

    invoke-interface {v8}, Lgnu/lists/Consumer;->endAttribute()V

    .line 123
    :cond_3
    goto :goto_2

    .line 119
    :cond_4
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 12

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/ConsumerTarget;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v9

    move-object v4, v9

    .line 136
    .local v4, "consumer":Lgnu/bytecode/Variable;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 137
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v9, v5

    array-length v9, v9

    move v6, v9

    .line 138
    .local v6, "nargs":I
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v7, v9

    .line 139
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 140
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 142
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    if-nez v9, :cond_1

    .line 144
    move-object v9, v5

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 145
    const/4 v9, 0x1

    move v8, v9

    .line 152
    .local v8, "i":I
    :goto_0
    move-object v9, v7

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 154
    move-object v9, v7

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 155
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    if-eqz v9, :cond_2

    .line 157
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 158
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeElement;->startElementMethod4:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 162
    :goto_1
    move v9, v8

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 164
    move-object v9, v5

    move v10, v8

    aget-object v9, v9, v10

    move-object v10, v2

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lgnu/kawa/xml/MakeElement;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 165
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/xml/MakeElement;->isHandlingKeywordParameters()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 168
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 162
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 149
    .end local v8    # "i":I
    :cond_1
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 150
    const/4 v9, 0x0

    move v8, v9

    .restart local v8    # "i":I
    goto :goto_0

    .line 161
    :cond_2
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeElement;->startElementMethod3:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 171
    :cond_3
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeElement;->endElementMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 172
    return-void
.end method

.method public getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeElement;
    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/MakeElement;
    return-object v0
.end method

.method public isHandlingKeywordParameters()Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/xml/MakeElement;->handlingKeywordParameters:Z

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeElement;
    return v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    const/16 v1, -0xfff

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeElement;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/MakeElement;
    :cond_0
    const/16 v1, -0x1000

    goto :goto_0
.end method

.method public setHandlingKeywordParameters(Z)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/xml/MakeElement;->handlingKeywordParameters:Z

    .line 37
    return-void
.end method

.method public setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    move-object v1, p1

    .local v1, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/MakeElement;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeElement;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeElement["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeElement;
    return-object v0
.end method
