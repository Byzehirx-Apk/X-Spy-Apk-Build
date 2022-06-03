.class public Lgnu/kawa/xml/ElementType;
.super Lgnu/kawa/xml/NodeType;
.source "ElementType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/ElementPredicate;


# static fields
.field public static final MATCH_ANY_LOCALNAME:Ljava/lang/String; = ""

.field public static final MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

.field public static final anyElement:Lgnu/kawa/xml/ElementType;

.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeElementType:Lgnu/bytecode/ClassType;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;

.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lgnu/mapping/Symbol;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/kawa/xml/ElementType;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/ElementType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    .line 203
    const-string/jumbo v0, "gnu.kawa.xml.ElementType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    .line 205
    sget-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerce"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->coerceMethod:Lgnu/bytecode/Method;

    .line 207
    sget-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerceOrNull"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "qname":Lgnu/mapping/Symbol;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/xml/ElementType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "qname":Lgnu/mapping/Symbol;
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-direct {v3, v4}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 53
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ELEMENT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (*)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;
    .locals 8

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/xml/ElementType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v4

    move-object v3, v4

    .line 167
    .local v3, "pos":Lgnu/kawa/xml/KElement;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 168
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v4

    .line 169
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v8, v0

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v8

    check-cast v8, Lgnu/kawa/xml/KElement;

    move-object v3, v8

    .line 128
    .local v3, "pos":Lgnu/kawa/xml/KElement;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 129
    const/4 v8, 0x0

    move-object v0, v8

    .line 160
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 131
    const/4 v8, 0x0

    move-object v2, v8

    .line 134
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/kawa/xml/KElement;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 137
    .local v4, "curName":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_4

    .line 139
    move-object v8, v4

    check-cast v8, Lgnu/mapping/Symbol;

    move-object v7, v8

    .line 140
    .local v7, "qname":Lgnu/mapping/Symbol;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 141
    .local v5, "curNamespaceURI":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 157
    .end local v7    # "qname":Lgnu/mapping/Symbol;
    .local v6, "curLocalName":Ljava/lang/String;
    :goto_1
    move-object v8, v2

    move-object v9, v6

    if-eq v8, v9, :cond_2

    move-object v8, v2

    if-nez v8, :cond_6

    :cond_2
    move-object v8, v1

    move-object v9, v5

    if-eq v8, v9, :cond_3

    move-object v8, v1

    if-nez v8, :cond_6

    .line 159
    :cond_3
    move-object v8, v3

    move-object v0, v8

    goto :goto_0

    .line 144
    .end local v5    # "curNamespaceURI":Ljava/lang/String;
    .end local v6    # "curLocalName":Ljava/lang/String;
    :cond_4
    move-object v8, v4

    instance-of v8, v8, Ljavax/xml/namespace/QName;

    if-eqz v8, :cond_5

    .line 146
    move-object v8, v4

    check-cast v8, Ljavax/xml/namespace/QName;

    move-object v7, v8

    .line 148
    .local v7, "qtype":Ljavax/xml/namespace/QName;
    move-object v8, v7

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 149
    .restart local v5    # "curNamespaceURI":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 150
    .restart local v6    # "curLocalName":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v5    # "curNamespaceURI":Ljava/lang/String;
    .end local v6    # "curLocalName":Ljava/lang/String;
    .end local v7    # "qtype":Ljavax/xml/namespace/QName;
    :cond_5
    const-string/jumbo v8, ""

    move-object v5, v8

    .line 155
    .restart local v5    # "curNamespaceURI":Ljava/lang/String;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "curLocalName":Ljava/lang/String;
    goto :goto_1

    .line 160
    :cond_6
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/ElementType;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "qname":Lgnu/mapping/Symbol;
    new-instance v1, Lgnu/kawa/xml/ElementType;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/ElementType;-><init>(Lgnu/mapping/Symbol;)V

    move-object v0, v1

    .end local v0    # "qname":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/ElementType;
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "namespaceURI":Ljava/lang/String;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 31
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v2, v3

    .line 36
    .local v2, "qname":Lgnu/mapping/Symbol;
    :goto_0
    new-instance v3, Lgnu/kawa/xml/ElementType;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/kawa/xml/ElementType;-><init>(Lgnu/mapping/Symbol;)V

    move-object v0, v3

    .end local v0    # "namespaceURI":Ljava/lang/String;
    return-object v0

    .line 32
    .end local v2    # "qname":Lgnu/mapping/Symbol;
    .restart local v0    # "namespaceURI":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, ""

    if-ne v3, v4, :cond_1

    .line 33
    sget-object v3, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    move-object v2, v3

    .restart local v2    # "qname":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 35
    .end local v2    # "qname":Lgnu/mapping/Symbol;
    :cond_1
    new-instance v3, Lgnu/mapping/Symbol;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    move-object v2, v3

    .restart local v2    # "qname":Lgnu/mapping/Symbol;
    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/ElementType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 67
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 68
    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/ElementType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 69
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 175
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 176
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 177
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 178
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 179
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/ElementType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 180
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    new-instance v2, Lgnu/kawa/xml/MakeElement;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object v1, v2

    .line 196
    .local v1, "element":Lgnu/kawa/xml/MakeElement;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    iput-object v3, v2, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    .line 197
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/MakeElement;->setHandlingKeywordParameters(Z)V

    .line 198
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    if-eqz v2, :cond_0

    .line 199
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 200
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    const-string/jumbo v1, "gnu.kawa.xml.KElement"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "elementType":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 89
    .local v4, "namespaceURI":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 92
    .local v5, "localName":Ljava/lang/String;
    move-object v9, v3

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    .line 94
    move-object v9, v3

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v8, v9

    .line 95
    .local v8, "qname":Lgnu/mapping/Symbol;
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 96
    .local v6, "curNamespaceURI":Ljava/lang/String;
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 112
    .end local v8    # "qname":Lgnu/mapping/Symbol;
    .local v7, "curLocalName":Ljava/lang/String;
    :goto_0
    move-object v9, v5

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 113
    const/4 v9, 0x0

    move-object v5, v9

    .line 114
    :cond_0
    move-object v9, v5

    move-object v10, v7

    if-eq v9, v10, :cond_1

    move-object v9, v5

    if-nez v9, :cond_5

    :cond_1
    move-object v9, v4

    move-object v10, v6

    if-eq v9, v10, :cond_2

    move-object v9, v4

    if-nez v9, :cond_5

    :cond_2
    const/4 v9, 0x1

    :goto_1
    move v0, v9

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return v0

    .line 99
    .end local v6    # "curNamespaceURI":Ljava/lang/String;
    .end local v7    # "curLocalName":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/kawa/xml/ElementType;
    :cond_3
    move-object v9, v3

    instance-of v9, v9, Ljavax/xml/namespace/QName;

    if-eqz v9, :cond_4

    .line 101
    move-object v9, v3

    check-cast v9, Ljavax/xml/namespace/QName;

    move-object v8, v9

    .line 103
    .local v8, "qtype":Ljavax/xml/namespace/QName;
    move-object v9, v8

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 104
    .restart local v6    # "curNamespaceURI":Ljava/lang/String;
    move-object v9, v8

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 105
    .restart local v7    # "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v6    # "curNamespaceURI":Ljava/lang/String;
    .end local v7    # "curLocalName":Ljava/lang/String;
    .end local v8    # "qtype":Ljavax/xml/namespace/QName;
    :cond_4
    const-string/jumbo v9, ""

    move-object v6, v9

    .line 110
    .restart local v6    # "curNamespaceURI":Ljava/lang/String;
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .restart local v7    # "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/ElementType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/ElementType;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    move v3, v4

    .line 79
    .local v3, "kind":I
    move v4, v3

    const/16 v5, 0x21

    if-ne v4, v5, :cond_0

    .line 80
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/xml/ElementType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result v4

    move v0, v4

    .line 83
    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    :goto_0
    return v0

    .line 81
    .restart local v0    # "this":Lgnu/kawa/xml/ElementType;
    :cond_0
    move v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 82
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/ElementType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 83
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 221
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 222
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/ElementType;->setName(Ljava/lang/String;)V

    .line 223
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Symbol;

    iput-object v4, v3, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    .line 224
    return-void
.end method

.method public setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ElementType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ElementType;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ElementType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/ElementType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 213
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 214
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    return-void

    .line 213
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method
