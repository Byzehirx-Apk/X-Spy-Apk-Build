.class public Lgnu/xquery/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# static fields
.field static collectionNamespace:Ljava/lang/String;

.field public static final collectionResolverSymbol:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 329
    const-string/jumbo v0, "http://gnu.org/kawa/cached-collections"

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "http://www.w3.org/2005/xquery-local-functions"

    const-string/jumbo v1, "collection-resolver"

    const-string/jumbo v2, "qexo"

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NodeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCached(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "doc-available"

    invoke-static {v3, v4, v5}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 457
    move-object v3, v0

    if-nez v3, :cond_0

    .line 458
    const/4 v3, 0x0

    move v0, v3

    .line 466
    .end local v0    # "uri":Ljava/lang/Object;
    :goto_0
    return v0

    .line 461
    .restart local v0    # "uri":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 462
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 464
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 466
    .local v2, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_1

    .line 202
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 209
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "uri":Lgnu/text/Path;
    :goto_0
    return-object v0

    .line 203
    .end local v1    # "uri":Lgnu/text/Path;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_2

    .line 204
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "base-uri"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_2
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    invoke-virtual {v2}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v2

    move-object v1, v2

    .line 206
    .restart local v1    # "uri":Lgnu/text/Path;
    move-object v2, v1

    if-nez v2, :cond_3

    .line 207
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    goto :goto_0

    .line 209
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static collection(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 376
    move-object/from16 v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v11, v0

    move-object v12, v1

    const-string/jumbo v13, "collection"

    invoke-static {v11, v12, v13}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    .line 377
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v11

    move-object v2, v11

    .line 378
    .local v2, "env":Lgnu/mapping/Environment;
    sget-object v11, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    move-object v3, v11

    .line 379
    .local v3, "rsym":Lgnu/mapping/Symbol;
    move-object v11, v2

    move-object v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 380
    .local v4, "rvalue":Ljava/lang/Object;
    move-object v11, v4

    if-nez v11, :cond_0

    .line 382
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v12}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 388
    :cond_0
    move-object v11, v4

    if-nez v11, :cond_1

    .line 390
    move-object v11, v0

    invoke-static {v11}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    .line 417
    .end local v0    # "uri":Ljava/lang/Object;
    .end local v4    # "rvalue":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 392
    .restart local v0    # "uri":Ljava/lang/Object;
    .restart local v4    # "rvalue":Ljava/lang/Object;
    :cond_1
    move-object v11, v4

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_2

    move-object v11, v4

    instance-of v11, v11, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v11, :cond_3

    :cond_2
    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v5, v12

    .local v5, "str":Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v15, v11

    move v11, v15

    move v12, v15

    move v6, v12

    .local v6, "colon":I
    if-lez v11, :cond_3

    .line 395
    move-object v11, v5

    const/4 v12, 0x0

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 396
    .local v7, "cname":Ljava/lang/String;
    move-object v11, v5

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 400
    .local v8, "mname":Ljava/lang/String;
    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    move-object v9, v11

    .line 409
    .line 410
    .local v9, "rclass":Ljava/lang/Class;
    move-object v11, v9

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v11

    check-cast v11, Lgnu/bytecode/ClassType;

    move-object v10, v11

    .line 411
    .local v10, "rclassType":Lgnu/bytecode/ClassType;
    move-object v11, v10

    move-object v12, v8

    const/4 v13, 0x0

    sget-object v14, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v11, v12, v13, v14}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v11

    move-object v4, v11

    .line 412
    .local v4, "rvalue":Lgnu/mapping/MethodProc;
    move-object v11, v4

    if-nez v11, :cond_3

    .line 413
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid collection-resolver: no method "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 402
    .end local v9    # "rclass":Ljava/lang/Class;
    .end local v10    # "rclassType":Lgnu/bytecode/ClassType;
    .local v4, "rvalue":Ljava/lang/Object;
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 404
    .local v10, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid collection-resolver: class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 406
    .end local v10    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v11

    move-object v10, v11

    .line 408
    .local v10, "ex":Ljava/lang/Throwable;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid collection-resolver: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 415
    .end local v4    # "rvalue":Ljava/lang/Object;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "cname":Ljava/lang/String;
    .end local v8    # "mname":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v11, v4

    instance-of v11, v11, Lgnu/mapping/Procedure;

    if-nez v11, :cond_4

    .line 416
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid collection-resolver: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 417
    :cond_4
    move-object v11, v4

    check-cast v11, Lgnu/mapping/Procedure;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public static data$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v5

    .line 112
    .local v2, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    instance-of v5, v5, Lgnu/mapping/Values;

    if-eqz v5, :cond_1

    .line 114
    move-object v5, v0

    check-cast v5, Lgnu/mapping/Values;

    move-object v3, v5

    .line 115
    .local v3, "vals":Lgnu/mapping/Values;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/mapping/Values;->startPos()I

    move-result v5

    move v4, v5

    .line 116
    .local v4, "ipos":I
    :goto_0
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v4, v6

    if-eqz v5, :cond_0

    .line 117
    move-object v5, v2

    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .line 121
    .end local v3    # "vals":Lgnu/mapping/Values;
    .end local v4    # "ipos":I
    :cond_0
    :goto_1
    return-void

    .line 120
    :cond_1
    move-object v5, v2

    move-object v6, v0

    invoke-static {v6}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static docCached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "doc"

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 443
    move-object v2, v0

    if-nez v2, :cond_0

    .line 444
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .line 445
    .end local v0    # "uri":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "uri":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static documentUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v4, :cond_1

    .line 180
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .line 185
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "node":Lgnu/kawa/xml/KNode;
    .local v2, "uri":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 181
    .end local v1    # "node":Lgnu/kawa/xml/KNode;
    .end local v2    # "uri":Ljava/lang/Object;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-nez v3, :cond_2

    .line 182
    new-instance v3, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "xs:document-uri"

    const/4 v6, 0x1

    move-object v7, v0

    const-string/jumbo v8, "node()?"

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_2
    move-object v3, v0

    check-cast v3, Lgnu/kawa/xml/KNode;

    move-object v1, v3

    .line 184
    .restart local v1    # "node":Lgnu/kawa/xml/KNode;
    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v1

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->documentUriOfPos(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 185
    .restart local v2    # "uri":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_3

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    goto :goto_1
.end method

.method static getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "collector":Ljava/lang/Object;
    move-object v9, v0

    instance-of v9, v9, Lgnu/kawa/xml/KNode;

    if-eqz v9, :cond_0

    .line 223
    move-object v9, v0

    invoke-static {v9}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 224
    :cond_0
    move-object v9, v0

    instance-of v9, v9, Lgnu/mapping/Values;

    if-eqz v9, :cond_2

    .line 226
    move-object v9, v0

    check-cast v9, Lgnu/mapping/Values;

    invoke-virtual {v9}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 227
    .local v2, "ar":[Ljava/lang/Object;
    move-object v9, v2

    array-length v9, v9

    move v3, v9

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v9, v3

    if-ltz v9, :cond_1

    .line 228
    move-object v9, v2

    move v10, v3

    aget-object v9, v9, v10

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 229
    .line 272
    .end local v1    # "collector":Ljava/lang/Object;
    .end local v2    # "ar":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_1
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0

    .line 232
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "collector":Ljava/lang/Object;
    :cond_2
    move-object v9, v0

    const-string/jumbo v10, "fn:id"

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    invoke-static {v9, v10, v11, v12}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 233
    .local v2, "str":Ljava/lang/String;
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v3, v9

    .line 234
    .local v3, "len":I
    const/4 v9, 0x0

    move v4, v9

    .line 235
    .end local v1    # "collector":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 237
    move-object v9, v2

    move v10, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v5, v9

    .line 238
    .local v5, "ch":C
    move v9, v5

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 239
    goto :goto_1

    .line 240
    :cond_3
    move v9, v5

    invoke-static {v9}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_2
    move v6, v9

    .line 241
    .local v6, "start":I
    :cond_4
    :goto_3
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_5

    .line 243
    move-object v9, v2

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v5, v9

    .line 244
    move v9, v5

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 245
    .line 250
    :cond_5
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_6

    .line 252
    move-object v9, v2

    move v10, v6

    move v11, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 253
    .local v7, "ref":Ljava/lang/String;
    move-object v9, v1

    if-nez v9, :cond_9

    .line 254
    move-object v9, v7

    move-object v1, v9

    .line 269
    .end local v7    # "ref":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 270
    goto :goto_1

    .line 240
    .end local v6    # "start":I
    :cond_7
    move v9, v3

    goto :goto_2

    .line 246
    .restart local v6    # "start":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 247
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_4

    move v9, v5

    invoke-static {v9}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 248
    move v9, v3

    move v6, v9

    goto :goto_3

    .line 258
    .restart local v7    # "ref":Ljava/lang/String;
    :cond_9
    move-object v9, v1

    instance-of v9, v9, Ljava/util/Stack;

    if-eqz v9, :cond_a

    .line 259
    move-object v9, v1

    check-cast v9, Ljava/util/Stack;

    move-object v8, v9

    .line 266
    .local v8, "st":Ljava/util/Stack;
    :goto_5
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    .line 262
    .end local v8    # "st":Ljava/util/Stack;
    :cond_a
    new-instance v9, Ljava/util/Stack;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    move-object v8, v9

    .line 263
    .restart local v8    # "st":Ljava/util/Stack;
    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 264
    move-object v9, v8

    move-object v1, v9

    .local v1, "collector":Ljava/util/Stack;
    goto :goto_5
.end method

.method public static getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "node":Lgnu/kawa/xml/KNode;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v1, v3

    .line 151
    .local v1, "seq":Lgnu/xml/NodeTree;
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v6, "lang"

    invoke-virtual {v3, v4, v5, v6}, Lgnu/xml/NodeTree;->ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 154
    .local v2, "attr":I
    move v3, v2

    if-nez v3, :cond_0

    .line 155
    const/4 v3, 0x0

    move-object v0, v3

    .line 157
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v0

    .restart local v0    # "node":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Ljava/lang/Object;
    return-object v0
.end method

.method public static getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 353
    const-string/jumbo v4, "#default"

    move-object v0, v4

    .line 354
    .end local v0    # "uri":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v2, v4

    .line 355
    .local v2, "sym":Lgnu/mapping/Symbol;
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 356
    .local v3, "coll":Ljava/lang/Object;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 357
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "collection \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 358
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public static id$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 13

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    check-cast v9, Lgnu/kawa/xml/KNode;

    move-object v3, v9

    .line 278
    .local v3, "node":Lgnu/kawa/xml/KNode;
    move-object v9, v3

    iget-object v9, v9, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v9, Lgnu/xml/NodeTree;

    move-object v4, v9

    .line 279
    .local v4, "ntree":Lgnu/xml/NodeTree;
    move-object v9, v4

    move-object v10, v3

    iget v10, v10, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v9, v10}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v9

    check-cast v9, Lgnu/kawa/xml/KDocument;

    move-object v5, v9

    .line 281
    .local v5, "root":Lgnu/kawa/xml/KDocument;
    move-object v9, v2

    iget-object v9, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v6, v9

    .line 282
    .local v6, "out":Lgnu/lists/Consumer;
    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 283
    .local v7, "idrefs":Ljava/lang/Object;
    move-object v9, v7

    if-nez v9, :cond_0

    .line 284
    .line 301
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/xml/NodeTree;->makeIDtableIfNeeded()V

    .line 286
    move-object v9, v6

    instance-of v9, v9, Lgnu/lists/PositionConsumer;

    if-eqz v9, :cond_2

    move-object v9, v7

    instance-of v9, v9, Ljava/lang/String;

    if-nez v9, :cond_1

    move-object v9, v6

    instance-of v9, v9, Lgnu/kawa/xml/SortedNodes;

    if-eqz v9, :cond_2

    .line 288
    :cond_1
    move-object v9, v7

    move-object v10, v4

    move-object v11, v6

    check-cast v11, Lgnu/lists/PositionConsumer;

    invoke-static {v9, v10, v11}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 301
    :goto_1
    goto :goto_0

    .line 289
    :cond_2
    move-object v9, v7

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 291
    move-object v9, v4

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 292
    .local v8, "pos":I
    move v9, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 293
    move-object v9, v6

    move-object v10, v4

    move v11, v8

    invoke-static {v10, v11}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v10

    invoke-interface {v9, v10}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 294
    :cond_3
    goto :goto_1

    .line 297
    .end local v8    # "pos":I
    :cond_4
    new-instance v9, Lgnu/kawa/xml/SortedNodes;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v8, v9

    .line 298
    .local v8, "nodes":Lgnu/kawa/xml/SortedNodes;
    move-object v9, v7

    move-object v10, v4

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 299
    move-object v9, v8

    move-object v10, v6

    invoke-static {v9, v10}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1
.end method

.method private static idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V
    .locals 9

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "ids":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/PositionConsumer;
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 307
    move-object v6, v1

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 308
    .local v3, "pos":I
    move v6, v3

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 309
    move-object v6, v2

    move-object v7, v1

    move v8, v3

    invoke-interface {v6, v7, v8}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 310
    .line 318
    .end local v3    # "pos":I
    :cond_0
    return-void

    .line 311
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Ljava/util/Stack;

    if-eqz v6, :cond_0

    .line 313
    move-object v6, v0

    check-cast v6, Ljava/util/Stack;

    move-object v3, v6

    .line 314
    .local v3, "st":Ljava/util/Stack;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    move v4, v6

    .line 315
    .local v4, "n":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 316
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static idref(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lgnu/kawa/xml/KNode;

    move-object v2, v4

    .line 323
    .local v2, "node":Lgnu/kawa/xml/KNode;
    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v5

    invoke-static {v4, v5}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v4

    check-cast v4, Lgnu/kawa/xml/KDocument;

    move-object v3, v4

    .line 325
    .local v3, "root":Lgnu/kawa/xml/KDocument;
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static inScopePrefixes$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    check-cast v4, Lgnu/kawa/xml/KElement;

    move-object v2, v4

    .line 101
    .local v2, "element":Lgnu/kawa/xml/KElement;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/kawa/xml/KElement;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 102
    .local v3, "type":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lgnu/xml/XName;

    if-eqz v4, :cond_0

    .line 103
    move-object v4, v3

    check-cast v4, Lgnu/xml/XName;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v4, v5}, Lgnu/xquery/util/NodeUtils;->prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-string/jumbo v5, "xml"

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static lang(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "testlang":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v6, v7, :cond_1

    .line 164
    :cond_0
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 167
    .local v2, "teststr":Ljava/lang/String;
    :goto_0
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KNode;

    invoke-static {v6}, Lgnu/xquery/util/NodeUtils;->getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 168
    .local v3, "lang":Ljava/lang/String;
    move-object v6, v3

    if-nez v6, :cond_2

    .line 169
    const/4 v6, 0x0

    move v0, v6

    .line 174
    .end local v0    # "testlang":Ljava/lang/Object;
    :goto_1
    return v0

    .line 166
    .end local v2    # "teststr":Ljava/lang/String;
    .end local v3    # "lang":Ljava/lang/String;
    .restart local v0    # "testlang":Ljava/lang/Object;
    :cond_1
    move-object v6, v0

    invoke-static {v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .restart local v2    # "teststr":Ljava/lang/String;
    goto :goto_0

    .line 170
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 171
    .local v4, "langlen":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 172
    .local v5, "testlen":I
    move v6, v4

    move v7, v5

    if-le v6, v7, :cond_3

    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3

    .line 173
    move-object v6, v3

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 174
    :cond_3
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method public static localName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 43
    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    .line 51
    .end local v0    # "node":Ljava/lang/Object;
    .local v1, "name":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 44
    .end local v1    # "name":Ljava/lang/Object;
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_2

    .line 45
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "local-name"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_2
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    invoke-virtual {v2}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 47
    .restart local v1    # "name":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_4

    .line 48
    :cond_3
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0

    .line 49
    :cond_4
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_5

    .line 50
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 51
    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static name(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    .line 37
    .end local v0    # "node":Ljava/lang/Object;
    .local v1, "name":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 34
    .end local v1    # "name":Ljava/lang/Object;
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    invoke-virtual {v2}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 35
    .restart local v1    # "name":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_3

    .line 36
    :cond_2
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0

    .line 37
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static namespaceURI(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_1

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 58
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "namespace-uri"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    invoke-virtual {v2}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 61
    .local v1, "name":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 62
    move-object v2, v1

    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 64
    .end local v0    # "node":Ljava/lang/Object;
    .end local v1    # "name":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "node":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public static nilled(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    .line 191
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 196
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 192
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_2

    .line 193
    new-instance v1, Lgnu/mapping/WrongType;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "nilled"

    const/4 v4, 0x1

    move-object v5, v0

    const-string/jumbo v6, "node()?"

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/xml/KElement;

    if-nez v1, :cond_3

    .line 195
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    goto :goto_0

    .line 196
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0
.end method

.method public static nodeName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 20
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 27
    .end local v0    # "node":Ljava/lang/Object;
    .local v1, "sym":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .line 21
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_2

    .line 22
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "node-name"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_2
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    invoke-virtual {v2}, Lgnu/kawa/xml/KNode;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v1, v2

    .line 24
    .restart local v1    # "sym":Lgnu/mapping/Symbol;
    move-object v2, v1

    if-nez v2, :cond_3

    .line 25
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    goto :goto_0

    .line 27
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "name":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v7

    move-object v2, v7

    .line 70
    .local v2, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v7, v2

    move-object v3, v7

    .line 71
    .local v3, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 74
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 75
    .local v4, "uri":Ljava/lang/String;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 76
    .line 72
    :goto_1
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    .line 77
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 80
    .local v5, "prefix":Ljava/lang/String;
    move-object v7, v2

    move-object v6, v7

    .line 82
    .local v6, "ns2":Lgnu/xml/NamespaceBinding;
    :goto_2
    move-object v7, v6

    move-object v8, v3

    if-ne v7, v8, :cond_2

    .line 84
    move-object v7, v1

    move-object v8, v5

    if-nez v8, :cond_1

    const-string/jumbo v8, ""

    :goto_3
    invoke-interface {v7, v8}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 85
    goto :goto_1

    .line 84
    :cond_1
    move-object v8, v5

    goto :goto_3

    .line 87
    :cond_2
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    if-ne v7, v8, :cond_3

    .line 90
    goto :goto_1

    .line 80
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    .line 94
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "ns2":Lgnu/xml/NamespaceBinding;
    :cond_4
    return-void
.end method

.method static resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    instance-of v3, v3, Ljava/io/File;

    if-nez v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/text/Path;

    if-nez v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Ljava/net/URI;

    if-nez v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Ljava/net/URL;

    if-nez v3, :cond_0

    .line 429
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 430
    .end local v0    # "uri":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_1

    move-object v3, v0

    if-nez v3, :cond_2

    .line 431
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    .line 432
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static root(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_1

    .line 127
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 131
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "node":Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v0

    .line 128
    .end local v1    # "node":Lgnu/kawa/xml/KNode;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_2

    .line 129
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "root"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_2
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    move-object v1, v2

    .line 131
    .restart local v1    # "node":Lgnu/kawa/xml/KNode;
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v3

    invoke-static {v2, v3}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static rootDocument(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 9

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "root-document"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "node()?"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    move-object v1, v2

    .line 142
    .local v1, "node":Lgnu/kawa/xml/KNode;
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v3

    invoke-static {v2, v3}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v1, v2

    .line 143
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/KDocument;

    if-nez v2, :cond_1

    .line 144
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "root-document"

    const/4 v5, 0x1

    move-object v6, v0

    const-string/jumbo v7, "document()"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/kawa/xml/KDocument;

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/NodeUtils;->setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 345
    return-void
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 8

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "env":Lgnu/mapping/Environment;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 336
    const-string/jumbo v4, "#default"

    move-object v0, v4

    .line 337
    .end local v0    # "uri":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v3, v4

    .line 338
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    return-void
.end method
