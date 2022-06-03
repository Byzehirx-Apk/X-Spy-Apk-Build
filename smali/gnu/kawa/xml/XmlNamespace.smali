.class public Lgnu/kawa/xml/XmlNamespace;
.super Lgnu/mapping/Namespace;
.source "XmlNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final HTML:Lgnu/kawa/xml/XmlNamespace;

.field public static final HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 10
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lgnu/kawa/xml/XmlNamespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    .line 11
    new-instance v0, Lgnu/xml/NamespaceBinding;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    invoke-direct {v1, v2, v3, v4}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Namespace;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 11

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [xml] -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 18
    .local v2, "xname":Ljava/lang/String;
    sget-object v7, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 20
    :try_start_0
    sget-object v7, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 21
    .local v4, "old":Ljava/lang/Object;
    move-object v7, v4

    instance-of v7, v7, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v7, :cond_0

    .line 22
    move-object v7, v4

    check-cast v7, Lgnu/kawa/xml/XmlNamespace;

    move-object v8, v3

    monitor-exit v8

    move-object v0, v7

    .line 27
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 23
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v7, Lgnu/kawa/xml/XmlNamespace;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lgnu/kawa/xml/XmlNamespace;-><init>()V

    move-object v5, v7

    .line 24
    .local v5, "ns":Lgnu/kawa/xml/XmlNamespace;
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 25
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    .line 26
    sget-object v7, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 27
    move-object v7, v5

    move-object v8, v3

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 28
    .end local v4    # "old":Ljava/lang/Object;
    .end local v5    # "ns":Lgnu/kawa/xml/XmlNamespace;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XmlNamespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/xml/ElementType;->make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/ElementType;

    move-result-object v3

    move-object v2, v3

    .line 53
    .local v2, "type":Lgnu/kawa/xml/ElementType;
    move-object v3, v0

    sget-object v4, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    if-ne v3, v4, :cond_0

    .line 54
    move-object v3, v2

    sget-object v4, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/ElementType;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 55
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/XmlNamespace;
    return-object v0
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XmlNamespace;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 73
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 79
    .local v1, "xname":Ljava/lang/String;
    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Namespace;

    move-object v2, v3

    .line 80
    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v3, v2

    instance-of v3, v3, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v3, :cond_0

    .line 81
    move-object v3, v2

    move-object v0, v3

    .line 83
    .end local v0    # "this":Lgnu/kawa/xml/XmlNamespace;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "this":Lgnu/kawa/xml/XmlNamespace;
    :cond_0
    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XmlNamespace;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 66
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
