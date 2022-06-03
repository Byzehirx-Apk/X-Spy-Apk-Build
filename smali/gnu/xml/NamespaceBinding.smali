.class public final Lgnu/xml/NamespaceBinding;
.super Ljava/lang/Object;
.source "NamespaceBinding.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final predefinedXML:Lgnu/xml/NamespaceBinding;


# instance fields
.field depth:I

.field next:Lgnu/xml/NamespaceBinding;

.field prefix:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lgnu/xml/NamespaceBinding;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "xml"

    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "next":Lgnu/xml/NamespaceBinding;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 59
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 60
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    .line 61
    return-void
.end method

.method public static commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "ns1":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "ns2":Lgnu/xml/NamespaceBinding;
    move-object v3, v0

    iget v3, v3, Lgnu/xml/NamespaceBinding;->depth:I

    move-object v4, v1

    iget v4, v4, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v3, v4, :cond_0

    .line 103
    move-object v3, v0

    move-object v2, v3

    .line 104
    .local v2, "tmp":Lgnu/xml/NamespaceBinding;
    move-object v3, v1

    move-object v0, v3

    .line 105
    move-object v3, v2

    move-object v1, v3

    .line 107
    .end local v2    # "tmp":Lgnu/xml/NamespaceBinding;
    :cond_0
    :goto_0
    move-object v3, v1

    iget v3, v3, Lgnu/xml/NamespaceBinding;->depth:I

    move-object v4, v0

    iget v4, v4, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v3, v4, :cond_1

    .line 108
    move-object v3, v1

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v1, v3

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    move-object v3, v0

    move-object v4, v1

    if-eq v3, v4, :cond_2

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v0, v3

    .line 112
    move-object v3, v1

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v1, v3

    goto :goto_1

    .line 114
    :cond_2
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "ns1":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public static maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 10

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 168
    move-object v4, v1

    if-nez v4, :cond_0

    .line 169
    move-object v4, v2

    move-object v0, v4

    .line 175
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_0
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    move-object v2, v4

    .line 172
    :cond_1
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 173
    .local v3, "found":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_3

    move-object v4, v1

    if-nez v4, :cond_4

    .line 174
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 173
    :cond_3
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    :cond_4
    new-instance v4, Lgnu/xml/NamespaceBinding;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static final nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "list1":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "list2":Lgnu/xml/NamespaceBinding;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 49
    move-object v2, v1

    move-object v0, v2

    .line 51
    .end local v0    # "list1":Lgnu/xml/NamespaceBinding;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "list1":Lgnu/xml/NamespaceBinding;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    .line 51
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public count(Lgnu/xml/NamespaceBinding;)I
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "fencePost":Lgnu/xml/NamespaceBinding;
    const/4 v4, 0x0

    move v2, v4

    .line 157
    .local v2, "count":I
    move-object v4, v0

    move-object v3, v4

    .local v3, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v4, v3

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 157
    move-object v4, v3

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v3, v4

    goto :goto_0

    .line 159
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return v0
.end method

.method public final getNext()Lgnu/xml/NamespaceBinding;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
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
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 210
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 211
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 212
    return-void
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    move-object v2, v3

    .local v2, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 77
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 78
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object v0, v3

    .line 80
    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "this":Lgnu/xml/NamespaceBinding;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v2, v3

    goto :goto_0

    .line 80
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fencePost":Lgnu/xml/NamespaceBinding;
    move-object v4, v0

    move-object v3, v4

    .local v3, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_1

    .line 92
    move-object v4, v3

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 93
    move-object v4, v3

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object v0, v4

    .line 95
    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    :goto_1
    return-object v0

    .line 90
    .restart local v0    # "this":Lgnu/xml/NamespaceBinding;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v3, v4

    goto :goto_0

    .line 95
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public reversePrefix(Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "fencePost":Lgnu/xml/NamespaceBinding;
    move-object v6, v1

    move-object v2, v6

    .line 140
    .local v2, "prev":Lgnu/xml/NamespaceBinding;
    move-object v6, v0

    move-object v3, v6

    .line 141
    .local v3, "t":Lgnu/xml/NamespaceBinding;
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, -0x1

    :goto_0
    move v4, v6

    .line 142
    .local v4, "depth":I
    :goto_1
    move-object v6, v3

    move-object v7, v1

    if-eq v6, v7, :cond_1

    .line 144
    move-object v6, v3

    iget-object v6, v6, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v5, v6

    .line 145
    .local v5, "next":Lgnu/xml/NamespaceBinding;
    move-object v6, v3

    move-object v7, v2

    iput-object v7, v6, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 146
    move-object v6, v3

    move-object v2, v6

    .line 147
    move-object v6, v3

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    iput v7, v6, Lgnu/xml/NamespaceBinding;->depth:I

    .line 148
    move-object v6, v5

    move-object v3, v6

    .line 149
    goto :goto_1

    .line 141
    .end local v4    # "depth":I
    .end local v5    # "next":Lgnu/xml/NamespaceBinding;
    :cond_0
    move-object v6, v1

    iget v6, v6, Lgnu/xml/NamespaceBinding;->depth:I

    goto :goto_0

    .line 150
    .restart local v4    # "depth":I
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public final setNext(Lgnu/xml/NamespaceBinding;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "next":Lgnu/xml/NamespaceBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 39
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput v3, v2, Lgnu/xml/NamespaceBinding;->depth:I

    .line 40
    return-void

    .line 39
    :cond_0
    move-object v3, v1

    iget v3, v3, Lgnu/xml/NamespaceBinding;->depth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Namespace{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", depth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/xml/NamespaceBinding;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public toStringAll()Ljava/lang/String;
    .locals 7

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Namespaces{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 188
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    move-object v2, v3

    .local v2, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 190
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 191
    move-object v3, v1

    const-string/jumbo v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 192
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 193
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, "\""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 188
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v2, v3

    goto :goto_0

    .line 193
    :cond_0
    const-string/jumbo v4, "\", "

    goto :goto_1

    .line 195
    :cond_1
    move-object v3, v1

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 196
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xml/NamespaceBinding;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamespaceBinding;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 202
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 203
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
