.class public Lgnu/xquery/util/QNameUtils;
.super Ljava/lang/Object;
.source "QNameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/QNameUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localNameFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    if-nez v1, :cond_1

    .line 159
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 162
    .end local v0    # "name":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 160
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Lgnu/mapping/WrongType;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "local-name-from-QName"

    const/4 v4, 0x1

    move-object v5, v0

    const-string/jumbo v6, "xs:QName"

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_2
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v2, p2

    .local v2, "prologNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v5, v1

    move-object v4, v5

    .line 96
    .local v4, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v5, v4

    if-nez v5, :cond_1

    .line 98
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 107
    .local v3, "uri":Ljava/lang/String;
    :goto_1
    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    if-nez v5, :cond_0

    .line 108
    const-string/jumbo v5, ""

    move-object v3, v5

    .line 109
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0

    .line 101
    .end local v3    # "uri":Ljava/lang/String;
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_2

    .line 103
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 104
    .restart local v3    # "uri":Ljava/lang/String;
    goto :goto_1

    .line 94
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v5

    move-object v4, v5

    goto :goto_0
.end method

.method public static makeQName(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 11

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "paramURI":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "paramQName":Ljava/lang/String;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v6, v7, :cond_1

    .line 135
    :cond_0
    const-string/jumbo v6, ""

    move-object v0, v6

    .line 136
    .end local v0    # "paramURI":Ljava/lang/Object;
    :cond_1
    move-object v6, v1

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v2, v6

    .line 137
    .local v2, "colon":I
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 138
    .local v3, "namespaceURI":Ljava/lang/String;
    move v6, v2

    if-gez v6, :cond_3

    .line 140
    move-object v6, v1

    move-object v4, v6

    .line 141
    .local v4, "localPart":Ljava/lang/String;
    const-string/jumbo v6, ""

    move-object v5, v6

    .line 148
    .local v5, "prefix":Ljava/lang/String;
    :goto_0
    move-object v6, v4

    invoke-static {v6}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    if-ltz v6, :cond_4

    move-object v6, v5

    invoke-static {v6}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 150
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid QName syntax \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    .end local v4    # "localPart":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_3
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 146
    .restart local v4    # "localPart":Ljava/lang/String;
    move-object v6, v1

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .restart local v5    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_4
    move v6, v2

    if-ltz v6, :cond_5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 152
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "empty uri for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    :cond_5
    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static namespaceURIForPrefix(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;
    move-object v5, v1

    invoke-static {v5}, Lgnu/kawa/xml/KNode;->coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;

    move-result-object v5

    move-object v2, v5

    .line 197
    .local v2, "el":Lgnu/kawa/xml/KNode;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 198
    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "namespace-uri-for-prefix"

    const/4 v8, 0x2

    move-object v9, v1

    const-string/jumbo v10, "node()"

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_0
    move-object v5, v0

    if-eqz v5, :cond_1

    move-object v5, v0

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v6, :cond_3

    .line 201
    :cond_1
    const/4 v5, 0x0

    move-object v3, v5

    .line 210
    .local v3, "str":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/kawa/xml/KNode;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 211
    .local v4, "uri":Ljava/lang/String;
    move-object v5, v4

    if-nez v5, :cond_5

    .line 212
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    .line 214
    .end local v0    # "prefix":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    .restart local v0    # "prefix":Ljava/lang/Object;
    :cond_3
    move-object v5, v0

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_4

    move-object v5, v0

    instance-of v5, v5, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v5, :cond_4

    .line 203
    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "namespace-uri-for-prefix"

    const/4 v8, 0x1

    move-object v9, v1

    const-string/jumbo v10, "xs:string"

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v5

    .line 206
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 207
    .restart local v3    # "str":Ljava/lang/String;
    move-object v5, v3

    const-string/jumbo v6, ""

    if-ne v5, v6, :cond_2

    .line 208
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 214
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_5
    move-object v5, v4

    move-object v0, v5

    goto :goto_1
.end method

.method public static namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 182
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 185
    .end local v0    # "name":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    :try_start_0
    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 189
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "namespace-uri"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "xs:QName"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public static prefixFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 168
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 174
    .end local v0    # "name":Ljava/lang/Object;
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 169
    .end local v1    # "prefix":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_4

    .line 171
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 172
    .restart local v1    # "prefix":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 173
    :cond_2
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    goto :goto_0

    .line 174
    :cond_3
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 176
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "prefix-from-QName"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "xs:QName"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public static resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v2, p2

    .local v2, "prologNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 120
    .local v3, "uri":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown namespace prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0
.end method

.method public static resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "qname":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v2, p2

    .local v2, "prologNamespaces":Lgnu/xml/NamespaceBinding;
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .line 58
    move-object v8, v0

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_0

    .line 59
    move-object v8, v0

    move-object v0, v8

    .line 82
    .end local v0    # "qname":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "qname":Ljava/lang/Object;
    :cond_0
    move-object v8, v0

    instance-of v8, v8, Lgnu/mapping/Values;

    if-nez v8, :cond_1

    move-object v8, v0

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_2

    move-object v8, v0

    instance-of v8, v8, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v8, :cond_2

    .line 62
    :cond_1
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "bad argument to QName"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 63
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 64
    .local v3, "name":Ljava/lang/String;
    move-object v8, v3

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v4, v8

    .line 66
    .local v4, "colon":I
    move v8, v4

    if-gez v8, :cond_4

    .line 68
    move-object v8, v3

    move-object v6, v8

    .line 69
    .local v6, "localPart":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, v8

    .line 76
    .local v5, "prefix":Ljava/lang/String;
    :goto_1
    move-object v8, v6

    invoke-static {v8}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    if-eqz v8, :cond_5

    move-object v8, v5

    invoke-static {v8}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 79
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid QName syntax \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 73
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "localPart":Ljava/lang/String;
    :cond_4
    move-object v8, v3

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 74
    .restart local v5    # "prefix":Ljava/lang/String;
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "localPart":Ljava/lang/String;
    goto :goto_1

    .line 81
    :cond_5
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Lgnu/xquery/util/QNameUtils;->resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 82
    .local v7, "uri":Ljava/lang/String;
    move-object v8, v7

    move-object v9, v6

    move-object v10, v5

    if-nez v10, :cond_6

    const-string/jumbo v10, ""

    :goto_2
    invoke-static {v8, v9, v10}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_6
    move-object v10, v5

    goto :goto_2
.end method

.method public static resolveQNameUsingElement(Ljava/lang/Object;Lgnu/kawa/xml/KElement;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "qname":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "node":Lgnu/kawa/xml/KElement;
    move-object v7, v0

    invoke-static {v7}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 12
    move-object v7, v0

    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v7, v8, :cond_0

    move-object v7, v0

    if-nez v7, :cond_1

    .line 13
    :cond_0
    move-object v7, v0

    move-object v0, v7

    .line 43
    .end local v0    # "qname":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 14
    .restart local v0    # "qname":Ljava/lang/Object;
    :cond_1
    move-object v7, v0

    instance-of v7, v7, Lgnu/mapping/Values;

    if-nez v7, :cond_2

    move-object v7, v0

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v0

    instance-of v7, v7, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v7, :cond_3

    .line 16
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "bad argument to QName"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 17
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 18
    .local v2, "name":Ljava/lang/String;
    move-object v7, v2

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v3, v7

    .line 20
    .local v3, "colon":I
    move v7, v3

    if-gez v7, :cond_6

    .line 22
    const/4 v7, 0x0

    move-object v4, v7

    .line 23
    .local v4, "prefix":Ljava/lang/String;
    move-object v7, v2

    move-object v5, v7

    .line 30
    .local v5, "localPart":Ljava/lang/String;
    :goto_1
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/KElement;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 31
    .local v6, "uri":Ljava/lang/String;
    move-object v7, v6

    if-nez v7, :cond_4

    .line 33
    move-object v7, v4

    if-nez v7, :cond_7

    .line 34
    const-string/jumbo v7, ""

    move-object v6, v7

    .line 38
    :cond_4
    move-object v7, v5

    invoke-static {v7}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v4

    if-eqz v7, :cond_8

    move-object v7, v4

    invoke-static {v7}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 41
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid QName syntax \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 27
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "localPart":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_6
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 28
    .restart local v4    # "prefix":Ljava/lang/String;
    move-object v7, v2

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "localPart":Ljava/lang/String;
    goto :goto_1

    .line 36
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown namespace for \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 43
    :cond_8
    move-object v7, v6

    move-object v8, v5

    move-object v9, v4

    if-nez v9, :cond_9

    const-string/jumbo v9, ""

    :goto_2
    invoke-static {v7, v8, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    :cond_9
    move-object v9, v4

    goto :goto_2
.end method

.method public static resolveURI(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "relative":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v3, v0

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_0

    .line 221
    move-object v3, v0

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 222
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_1

    .line 223
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 224
    :cond_1
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_2

    move-object v3, v0

    if-nez v3, :cond_3

    .line 225
    :cond_2
    move-object v3, v0

    move-object v0, v3

    .line 234
    .end local v0    # "relative":Ljava/lang/Object;
    .end local v1    # "base":Ljava/lang/Object;
    .local v2, "baseP":Lgnu/text/Path;
    :goto_0
    return-object v0

    .line 226
    .end local v2    # "baseP":Lgnu/text/Path;
    .restart local v0    # "relative":Ljava/lang/Object;
    .restart local v1    # "base":Ljava/lang/Object;
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_4

    .line 227
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 228
    .end local v0    # "relative":Ljava/lang/Object;
    :cond_4
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_5

    .line 229
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 230
    .end local v1    # "base":Ljava/lang/Object;
    :cond_5
    move-object v3, v1

    instance-of v3, v3, Lgnu/text/Path;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Lgnu/text/Path;

    :goto_1
    move-object v2, v3

    .line 231
    .restart local v2    # "baseP":Lgnu/text/Path;
    move-object v3, v0

    instance-of v3, v3, Lgnu/text/Path;

    if-eqz v3, :cond_7

    .line 232
    move-object v3, v2

    move-object v4, v0

    check-cast v4, Lgnu/text/Path;

    invoke-virtual {v3, v4}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 230
    .end local v2    # "baseP":Lgnu/text/Path;
    :cond_6
    move-object v3, v1

    invoke-static {v3}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v3

    goto :goto_1

    .line 234
    .restart local v2    # "baseP":Lgnu/text/Path;
    :cond_7
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static validNCName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return v0
.end method
