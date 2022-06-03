.class public Lgnu/kawa/xml/AttributeType;
.super Lgnu/kawa/xml/NodeType;
.source "AttributeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/AttributePredicate;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeAttributeType:Lgnu/bytecode/ClassType;


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    const-string/jumbo v0, "gnu.kawa.xml.AttributeType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    .line 176
    sget-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerce"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    .line 178
    sget-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerceOrNull"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "qname":Lgnu/mapping/Symbol;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/xml/AttributeType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
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

    .line 47
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ATTRIBUTE "

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

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v4

    move-object v3, v4

    .line 159
    .local v3, "pos":Lgnu/lists/SeqPosition;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 160
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v4

    .line 161
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 10

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v8, v0

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v8

    move-object v3, v8

    .line 122
    .local v3, "pos":Lgnu/kawa/xml/KNode;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 123
    const/4 v8, 0x0

    move-object v0, v8

    .line 152
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 125
    const/4 v8, 0x0

    move-object v2, v8

    .line 126
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/kawa/xml/KNode;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 129
    .local v4, "curName":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_4

    .line 131
    move-object v8, v4

    check-cast v8, Lgnu/mapping/Symbol;

    move-object v7, v8

    .line 132
    .local v7, "qname":Lgnu/mapping/Symbol;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 133
    .local v5, "curNamespaceURI":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 149
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

    .line 151
    :cond_3
    move-object v8, v3

    check-cast v8, Lgnu/kawa/xml/KAttr;

    move-object v0, v8

    goto :goto_0

    .line 136
    .end local v5    # "curNamespaceURI":Ljava/lang/String;
    .end local v6    # "curLocalName":Ljava/lang/String;
    :cond_4
    move-object v8, v4

    instance-of v8, v8, Ljavax/xml/namespace/QName;

    if-eqz v8, :cond_5

    .line 138
    move-object v8, v4

    check-cast v8, Ljavax/xml/namespace/QName;

    move-object v7, v8

    .line 140
    .local v7, "qtype":Ljavax/xml/namespace/QName;
    move-object v8, v7

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 141
    .restart local v5    # "curNamespaceURI":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 142
    .restart local v6    # "curLocalName":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v5    # "curNamespaceURI":Ljava/lang/String;
    .end local v6    # "curLocalName":Ljava/lang/String;
    .end local v7    # "qtype":Ljavax/xml/namespace/QName;
    :cond_5
    const-string/jumbo v8, ""

    move-object v5, v8

    .line 147
    .restart local v5    # "curNamespaceURI":Ljava/lang/String;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "curLocalName":Ljava/lang/String;
    goto :goto_1

    .line 152
    :cond_6
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/AttributeType;
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "qname":Lgnu/mapping/Symbol;
    new-instance v1, Lgnu/kawa/xml/AttributeType;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    move-object v0, v1

    .end local v0    # "qname":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/AttributeType;
    .locals 8

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "namespaceURI":Ljava/lang/String;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 25
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v2, v3

    .line 30
    .local v2, "qname":Lgnu/mapping/Symbol;
    :goto_0
    new-instance v3, Lgnu/kawa/xml/AttributeType;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    move-object v0, v3

    .end local v0    # "namespaceURI":Ljava/lang/String;
    return-object v0

    .line 26
    .end local v2    # "qname":Lgnu/mapping/Symbol;
    .restart local v0    # "namespaceURI":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, ""

    if-ne v3, v4, :cond_1

    .line 27
    sget-object v3, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    move-object v2, v3

    .restart local v2    # "qname":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 29
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
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/AttributeType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 61
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 62
    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 167
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 168
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 169
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 170
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 171
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 172
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    const-string/jumbo v1, "gnu.kawa.xml.KAttr"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .locals 11

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "attrType":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 83
    .local v4, "namespaceURI":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 86
    .local v5, "localName":Ljava/lang/String;
    move-object v9, v3

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    .line 88
    move-object v9, v3

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v8, v9

    .line 89
    .local v8, "qname":Lgnu/mapping/Symbol;
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 90
    .local v6, "curNamespaceURI":Ljava/lang/String;
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 106
    .end local v8    # "qname":Lgnu/mapping/Symbol;
    .local v7, "curLocalName":Ljava/lang/String;
    :goto_0
    move-object v9, v5

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 107
    const/4 v9, 0x0

    move-object v5, v9

    .line 108
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

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return v0

    .line 93
    .end local v6    # "curNamespaceURI":Ljava/lang/String;
    .end local v7    # "curLocalName":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/kawa/xml/AttributeType;
    :cond_3
    move-object v9, v3

    instance-of v9, v9, Ljavax/xml/namespace/QName;

    if-eqz v9, :cond_4

    .line 95
    move-object v9, v3

    check-cast v9, Ljavax/xml/namespace/QName;

    move-object v8, v9

    .line 97
    .local v8, "qtype":Ljavax/xml/namespace/QName;
    move-object v9, v8

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 98
    .restart local v6    # "curNamespaceURI":Ljava/lang/String;
    move-object v9, v8

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 99
    .restart local v7    # "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v6    # "curNamespaceURI":Ljava/lang/String;
    .end local v7    # "curLocalName":Ljava/lang/String;
    .end local v8    # "qtype":Ljavax/xml/namespace/QName;
    :cond_4
    const-string/jumbo v9, ""

    move-object v6, v9

    .line 104
    .restart local v6    # "curNamespaceURI":Ljava/lang/String;
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .restart local v7    # "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 108
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/AttributeType;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    move v3, v4

    .line 73
    .local v3, "kind":I
    move v4, v3

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 74
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/xml/AttributeType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result v4

    move v0, v4

    .line 77
    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
    :goto_0
    return v0

    .line 75
    .restart local v0    # "this":Lgnu/kawa/xml/AttributeType;
    :cond_0
    move v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 76
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/AttributeType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 77
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
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 192
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/AttributeType;->setName(Ljava/lang/String;)V

    .line 194
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Symbol;

    iput-object v4, v3, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AttributeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/AttributeType;
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
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/AttributeType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 184
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 185
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 186
    return-void

    .line 184
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method
