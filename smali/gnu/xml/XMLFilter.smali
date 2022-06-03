.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "XMLFilter.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1

.field private static final SAW_KEYWORD:I = 0x1

.field private static final SAW_WORD:I = 0x2


# instance fields
.field attrCount:I

.field attrLocalName:Ljava/lang/String;

.field attrPrefix:Ljava/lang/String;

.field base:Lgnu/lists/Consumer;

.field public transient copyNamespacesMode:I

.field currentNamespacePrefix:Ljava/lang/String;

.field protected ignoringLevel:I

.field in:Lgnu/text/LineBufferedReader;

.field inStartTag:Z

.field locator:Lgnu/text/SourceLocator;

.field mappingTable:[Lgnu/xml/MappingInfo;

.field mappingTableMask:I

.field private messages:Lgnu/text/SourceMessages;

.field mismatchReported:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public out:Lgnu/lists/Consumer;

.field previous:I

.field startIndexes:[I

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I

.field tlist:Lgnu/lists/TreeList;

.field workStack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/xml/XMLFilter;->previous:I

    .line 87
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 100
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/xml/XMLFilter;->attrCount:I

    .line 115
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    .line 126
    move-object v2, v0

    const/16 v3, 0x80

    new-array v3, v3, [Lgnu/xml/MappingInfo;

    iput-object v3, v2, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    .line 127
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/xml/XMLFilter;->mappingTableMask:I

    .line 717
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 718
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 719
    move-object v2, v1

    instance-of v2, v2, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_0

    .line 720
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/xml/NodeTree;

    iput-object v3, v2, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    .line 724
    :goto_0
    move-object v2, v0

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 725
    return-void

    .line 722
    :cond_0
    move-object v2, v0

    new-instance v3, Lgnu/lists/TreeList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/lists/TreeList;-><init>()V

    iput-object v3, v2, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    goto :goto_0
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "attrSymbol":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "elementName":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "duplicate attribute: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1446
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1447
    .local v3, "uri":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1449
    move-object v4, v2

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1450
    move-object v4, v2

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1451
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1453
    :cond_0
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1454
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1456
    move-object v4, v2

    const-string/jumbo v5, " in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1457
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1458
    move-object v4, v2

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1460
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "attrSymbol":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method private ensureSpaceInStartIndexes(I)V
    .locals 8

    .prologue
    .line 1430
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "oldSize":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->startIndexes:[I

    if-nez v3, :cond_1

    .line 1432
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1436
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object v2, v3

    .line 1437
    .local v2, "tmpn":[I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->startIndexes:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/xml/XMLFilter;->startIndexes:[I

    goto :goto_0
.end method

.method private ensureSpaceInWorkStack(I)V
    .locals 8

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "oldSize":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 1418
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1422
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 1423
    .local v2, "tmpn":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 10

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "list":Lgnu/xml/NamespaceBinding;
    move-object v2, p2

    .local v2, "node":Lgnu/xml/NamespaceBinding;
    move-object v6, v2

    sget-object v7, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne v6, v7, :cond_0

    .line 906
    move-object v6, v1

    move-object v0, v6

    .line 919
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_0
    return-object v0

    .line 907
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-direct {v6, v7, v8}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v6

    move-object v1, v6

    .line 908
    move-object v6, v2

    iget-object v6, v6, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object v3, v6

    .line 909
    .local v3, "uri":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_2

    .line 911
    move-object v6, v3

    if-nez v6, :cond_1

    .line 912
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 913
    :cond_1
    sget-object v6, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    move-object v1, v6

    .line 915
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v4, v6

    .line 916
    .local v4, "prefix":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 917
    .local v5, "found":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_4

    move-object v6, v3

    if-nez v6, :cond_5

    .line 918
    :cond_3
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 917
    :cond_4
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 919
    :cond_5
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method private resolve(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move v2, p2

    .local v2, "isAttribute":Z
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_0

    .line 328
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 334
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_0
    return-object v0

    .line 329
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 330
    .local v3, "uri":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 331
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 332
    :cond_1
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 333
    move-object v4, v0

    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown namespace prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 334
    :cond_2
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method private startAttributeCommon()Z
    .locals 7

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v1, :cond_0

    .line 925
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lgnu/xml/XMLFilter;->ignoringLevel:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 926
    :cond_0
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v1, :cond_1

    .line 927
    const/4 v1, 0x0

    move v0, v1

    .line 935
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_0
    return v0

    .line 929
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_1
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v1, :cond_2

    .line 930
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->attrCount:I

    .line 931
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 932
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->attrCount:I

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;->ensureSpaceInStartIndexes(I)V

    .line 933
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->attrCount:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    aput v3, v1, v2

    .line 934
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lgnu/xml/XMLFilter;->attrCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/xml/XMLFilter;->attrCount:I

    .line 935
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 4

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1294
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 6

    .prologue
    .line 1299
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1300
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 1301
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v2

    .line 1302
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 9

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1308
    const-string/jumbo v4, "null"

    move-object v1, v4

    .line 1309
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    move v8, v2

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 1310
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "baseUri":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v2, v2, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_0

    .line 1281
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v2, Lgnu/lists/XConsumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1532
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1533
    return-void
.end method

.method protected checkValidComment([CII)V
    .locals 10

    .prologue
    .line 1129
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move v7, v3

    move v4, v7

    .line 1130
    .local v4, "i":I
    const/4 v7, 0x1

    move v5, v7

    .line 1131
    .local v5, "sawHyphen":Z
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v7, v4

    if-ltz v7, :cond_0

    .line 1133
    move-object v7, v1

    move v8, v2

    move v9, v4

    add-int/2addr v8, v9

    aget-char v7, v7, v8

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 1134
    .local v6, "curHyphen":Z
    move v7, v5

    if-eqz v7, :cond_2

    move v7, v6

    if-eqz v7, :cond_2

    .line 1136
    move-object v7, v0

    const/16 v8, 0x65

    const-string/jumbo v9, "consecutive or final hyphen in XML comment"

    invoke-virtual {v7, v8, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1137
    .line 1141
    .end local v6    # "curHyphen":Z
    :cond_0
    return-void

    .line 1133
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1139
    .restart local v6    # "curHyphen":Z
    :cond_2
    move v7, v6

    move v5, v7

    .line 1140
    goto :goto_0
.end method

.method protected checkWriteAtomic()Z
    .locals 3

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 603
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v1, :cond_0

    .line 604
    const/4 v1, 0x0

    move v0, v1

    .line 606
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_0
    return v0

    .line 605
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 606
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method closeStartTag()V
    .locals 23

    .prologue
    .line 339
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xml/XMLFilter;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v17, v0

    if-ltz v17, :cond_0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move/from16 v17, v0

    if-lez v17, :cond_1

    .line 340
    .line 598
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgnu/xml/XMLFilter;->inStartTag:Z

    .line 342
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 344
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 345
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 346
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    sget-object v17, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_1
    move-object/from16 v3, v17

    .line 349
    .local v3, "outer":Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 353
    .local v4, "bindings":Lgnu/xml/NamespaceBinding;
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "i":I
    :goto_2
    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    .line 355
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v5

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v6, v17

    .line 356
    .local v6, "saved":Ljava/lang/Object;
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 358
    move-object/from16 v17, v6

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v7, v17

    .line 359
    .local v7, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    .line 360
    .local v8, "prefix":Ljava/lang/String;
    move-object/from16 v17, v8

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 361
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 362
    :cond_3
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 363
    .local v9, "uri":Ljava/lang/String;
    move-object/from16 v17, v9

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 364
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 365
    :cond_4
    move/from16 v17, v5

    if-lez v17, :cond_7

    move-object/from16 v17, v8

    if-nez v17, :cond_7

    move-object/from16 v17, v9

    if-nez v17, :cond_7

    .line 366
    .line 353
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 346
    .end local v3    # "outer":Lgnu/xml/NamespaceBinding;
    .end local v4    # "bindings":Lgnu/xml/NamespaceBinding;
    .end local v5    # "i":I
    .end local v6    # "saved":Ljava/lang/Object;
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    const/16 v19, 0x2

    add-int/lit8 v18, v18, -0x2

    aget-object v17, v17, v18

    check-cast v17, Lgnu/xml/NamespaceBinding;

    goto/16 :goto_1

    .line 367
    .restart local v3    # "outer":Lgnu/xml/NamespaceBinding;
    .restart local v4    # "bindings":Lgnu/xml/NamespaceBinding;
    .restart local v5    # "i":I
    .restart local v6    # "saved":Ljava/lang/Object;
    .restart local v7    # "sym":Lgnu/mapping/Symbol;
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 368
    .local v10, "isOuter":Z
    move-object/from16 v17, v4

    move-object/from16 v11, v17

    .line 370
    .local v11, "ns":Lgnu/xml/NamespaceBinding;
    :goto_4
    move-object/from16 v17, v11

    move-object/from16 v18, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 371
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 372
    :cond_8
    move-object/from16 v17, v11

    if-nez v17, :cond_a

    .line 374
    move-object/from16 v17, v8

    if-nez v17, :cond_9

    move-object/from16 v17, v9

    if-eqz v17, :cond_5

    .line 375
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v20}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_3

    .line 378
    :cond_a
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 380
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 382
    move/from16 v17, v10

    if-eqz v17, :cond_b

    .line 383
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v20}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_3

    .line 388
    :cond_b
    move-object/from16 v17, v4

    move-object/from16 v13, v17

    .line 391
    .local v13, "ns2":Lgnu/xml/NamespaceBinding;
    :goto_5
    move-object/from16 v17, v13

    if-nez v17, :cond_e

    .line 394
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 396
    .local v14, "j":I
    :goto_6
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "_ns_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 397
    .local v12, "nprefix":Ljava/lang/String;
    move-object/from16 v17, v4

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_d

    .line 398
    .line 400
    .line 409
    .end local v14    # "j":I
    :goto_7
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v20}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v17

    move-object/from16 v4, v17

    .line 410
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 411
    .local v13, "local":Ljava/lang/String;
    move-object/from16 v17, v9

    if-nez v17, :cond_c

    .line 412
    const-string/jumbo v17, ""

    move-object/from16 v9, v17

    .line 413
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v5

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    move-object/from16 v21, v12

    invoke-static/range {v19 .. v21}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v19

    aput-object v19, v17, v18

    .line 415
    goto/16 :goto_3

    .line 394
    .local v13, "ns2":Lgnu/xml/NamespaceBinding;
    .restart local v14    # "j":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 402
    .end local v12    # "nprefix":Ljava/lang/String;
    .end local v14    # "j":I
    :cond_e
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 404
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 405
    .restart local v12    # "nprefix":Ljava/lang/String;
    move-object/from16 v17, v4

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 406
    goto :goto_7

    .line 389
    .end local v12    # "nprefix":Ljava/lang/String;
    :cond_f
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    goto/16 :goto_5

    .line 368
    .end local v13    # "ns2":Lgnu/xml/NamespaceBinding;
    :cond_10
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    goto/16 :goto_4

    .line 424
    .end local v6    # "saved":Ljava/lang/Object;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "isOuter":Z
    .end local v11    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_11
    const/16 v17, 0x0

    move/from16 v5, v17

    :goto_8
    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_31

    .line 426
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v5

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v6, v17

    .line 428
    .restart local v6    # "saved":Ljava/lang/Object;
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 430
    .local v8, "isNsNode":Z
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_22

    .line 432
    :cond_12
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 434
    move-object/from16 v17, v6

    check-cast v17, Lgnu/xml/MappingInfo;

    move-object/from16 v7, v17

    .line 435
    .local v7, "info":Lgnu/xml/MappingInfo;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 436
    .local v9, "prefix":Ljava/lang/String;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 437
    .local v11, "local":Ljava/lang/String;
    move/from16 v17, v5

    if-lez v17, :cond_18

    move-object/from16 v17, v9

    if-nez v17, :cond_13

    move-object/from16 v17, v11

    const-string/jumbo v18, "xmlns"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_14

    :cond_13
    move-object/from16 v17, v9

    const-string/jumbo v18, "xmlns"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 441
    :cond_14
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 442
    const-string/jumbo v17, "(namespace-node)"

    move-object/from16 v10, v17

    .line 455
    .local v10, "uri":Ljava/lang/String;
    :goto_9
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/MappingInfo;->tagHash:I

    move/from16 v17, v0

    move/from16 v12, v17

    .line 456
    .local v12, "hash":I
    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    move/from16 v18, v0

    and-int v17, v17, v18

    move/from16 v13, v17

    .line 458
    .local v13, "bucket":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v17, v0

    move/from16 v18, v13

    aget-object v17, v17, v18

    move-object/from16 v7, v17

    .line 459
    const/16 v17, 0x0

    move-object/from16 v14, v17

    .line 463
    .local v14, "tagMatch":Lgnu/xml/MappingInfo;
    :goto_a
    move-object/from16 v17, v7

    if-nez v17, :cond_1b

    .line 465
    move-object/from16 v17, v14

    move-object/from16 v7, v17

    .line 466
    new-instance v17, Lgnu/xml/MappingInfo;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Lgnu/xml/MappingInfo;-><init>()V

    move-object/from16 v7, v17

    .line 467
    move-object/from16 v17, v7

    move/from16 v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/xml/MappingInfo;->tagHash:I

    .line 468
    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 469
    move-object/from16 v17, v7

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 470
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 471
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v17, v0

    move/from16 v18, v13

    move-object/from16 v19, v7

    aput-object v19, v17, v18

    .line 472
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 473
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v20}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 474
    move/from16 v17, v5

    if-nez v17, :cond_15

    .line 476
    new-instance v17, Lgnu/xml/XName;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v20}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object/from16 v16, v17

    .line 477
    .local v16, "xname":Lgnu/xml/XName;
    move-object/from16 v17, v16

    move-object/from16 v15, v17

    .line 478
    .local v15, "type":Lgnu/xml/XName;
    move-object/from16 v17, v7

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 479
    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 480
    .line 519
    .end local v15    # "type":Lgnu/xml/XName;
    .end local v16    # "xname":Lgnu/xml/XName;
    :cond_15
    :goto_b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v5

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v19, v7

    aput-object v19, v17, v18

    .line 520
    .line 530
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v12    # "hash":I
    .end local v13    # "bucket":I
    .end local v14    # "tagMatch":Lgnu/xml/MappingInfo;
    :goto_c
    const/16 v17, 0x1

    move/from16 v12, v17

    .local v12, "j":I
    :goto_d
    move/from16 v17, v12

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    .line 532
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v13, v17

    .line 534
    .local v13, "other":Ljava/lang/Object;
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_23

    .line 535
    move-object/from16 v17, v13

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v14, v17

    .line 540
    .local v14, "osym":Lgnu/mapping/Symbol;
    :goto_e
    move-object/from16 v17, v11

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17

    move-object/from16 v17, v10

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 543
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v15, v17

    .line 544
    .local v15, "tag":Ljava/lang/Object;
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 545
    move-object/from16 v17, v15

    check-cast v17, Lgnu/xml/MappingInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 546
    .end local v15    # "tag":Ljava/lang/Object;
    :cond_16
    move-object/from16 v17, v2

    const/16 v18, 0x65

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 530
    .end local v14    # "osym":Lgnu/mapping/Symbol;
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    .line 445
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v13    # "other":Ljava/lang/Object;
    .restart local v9    # "prefix":Ljava/lang/String;
    :cond_18
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move/from16 v19, v5

    if-lez v19, :cond_19

    const/16 v19, 0x1

    :goto_f
    invoke-direct/range {v17 .. v19}, Lgnu/xml/XMLFilter;->resolve(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .restart local v10    # "uri":Ljava/lang/String;
    goto/16 :goto_9

    .end local v10    # "uri":Ljava/lang/String;
    :cond_19
    const/16 v19, 0x0

    goto :goto_f

    .line 449
    .end local v7    # "info":Lgnu/xml/MappingInfo;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v11    # "local":Ljava/lang/String;
    :cond_1a
    move-object/from16 v17, v6

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v12, v17

    .line 450
    .local v12, "symbol":Lgnu/mapping/Symbol;
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLFilter;->lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;

    move-result-object v17

    move-object/from16 v7, v17

    .line 451
    .restart local v7    # "info":Lgnu/xml/MappingInfo;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 452
    .restart local v9    # "prefix":Ljava/lang/String;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 453
    .restart local v11    # "local":Ljava/lang/String;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .restart local v10    # "uri":Ljava/lang/String;
    goto/16 :goto_9

    .line 483
    .local v12, "hash":I
    .local v13, "bucket":I
    .local v14, "tagMatch":Lgnu/xml/MappingInfo;
    :cond_1b
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/MappingInfo;->tagHash:I

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 487
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e

    .line 489
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 490
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v20}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 496
    :cond_1c
    :goto_10
    move/from16 v17, v5

    if-nez v17, :cond_21

    .line 498
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1d

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    if-nez v17, :cond_1f

    .line 501
    :cond_1d
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 502
    .local v15, "type":Lgnu/xml/XName;
    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 503
    move-object/from16 v17, v15

    if-nez v17, :cond_15

    .line 505
    new-instance v17, Lgnu/xml/XName;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v20}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object/from16 v16, v17

    .line 506
    .restart local v16    # "xname":Lgnu/xml/XName;
    move-object/from16 v17, v16

    move-object/from16 v15, v17

    .line 507
    move-object/from16 v17, v7

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 508
    goto/16 :goto_b

    .line 492
    .end local v15    # "type":Lgnu/xml/XName;
    .end local v16    # "xname":Lgnu/xml/XName;
    :cond_1e
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 493
    .line 461
    :cond_1f
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    goto/16 :goto_a

    .line 494
    :cond_20
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    if-nez v17, :cond_1c

    .line 495
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v20}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    goto/16 :goto_10

    .line 514
    :cond_21
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 515
    .local v15, "type":Lgnu/mapping/Symbol;
    goto/16 :goto_b

    .line 523
    .end local v7    # "info":Lgnu/xml/MappingInfo;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "local":Ljava/lang/String;
    .end local v12    # "hash":I
    .end local v13    # "bucket":I
    .end local v14    # "tagMatch":Lgnu/xml/MappingInfo;
    .end local v15    # "type":Lgnu/mapping/Symbol;
    :cond_22
    move-object/from16 v17, v6

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v12, v17

    .line 524
    .local v12, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 525
    .restart local v10    # "uri":Ljava/lang/String;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 526
    .restart local v11    # "local":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .restart local v7    # "info":Lgnu/xml/MappingInfo;
    goto/16 :goto_c

    .line 536
    .local v12, "j":I
    .local v13, "other":Ljava/lang/Object;
    :cond_23
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 537
    move-object/from16 v17, v13

    check-cast v17, Lgnu/xml/MappingInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .local v14, "osym":Lgnu/mapping/Symbol;
    goto/16 :goto_e

    .line 550
    .end local v13    # "other":Ljava/lang/Object;
    .end local v14    # "osym":Lgnu/mapping/Symbol;
    :cond_24
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 552
    move/from16 v17, v5

    if-nez v17, :cond_28

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v17, v0

    :goto_11
    move-object/from16 v12, v17

    .line 553
    .local v12, "type":Ljava/lang/Object;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/MappingInfo;->index:I

    move/from16 v17, v0

    move/from16 v13, v17

    .line 554
    .local v13, "index":I
    move/from16 v17, v13

    if-lez v17, :cond_25

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move/from16 v18, v13

    aget-object v17, v17, v18

    move-object/from16 v18, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_26

    .line 557
    :cond_25
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v17

    move/from16 v13, v17

    .line 558
    move-object/from16 v17, v7

    move/from16 v18, v13

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/xml/MappingInfo;->index:I

    .line 560
    :cond_26
    move/from16 v17, v5

    if-nez v17, :cond_29

    .line 561
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v18, v0

    move/from16 v19, v13

    invoke-virtual/range {v17 .. v19}, Lgnu/lists/TreeList;->setElementName(II)V

    .line 564
    .line 424
    .end local v13    # "index":I
    :cond_27
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 552
    .local v12, "j":I
    :cond_28
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    goto :goto_11

    .line 562
    .local v12, "type":Ljava/lang/Object;
    .restart local v13    # "index":I
    :cond_29
    move/from16 v17, v8

    if-eqz v17, :cond_2a

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27

    .line 563
    :cond_2a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v18, v0

    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    move/from16 v19, v13

    invoke-virtual/range {v17 .. v19}, Lgnu/lists/TreeList;->setAttributeName(II)V

    goto :goto_12

    .line 567
    .end local v13    # "index":I
    .local v12, "j":I
    :cond_2b
    move-object/from16 v17, v7

    if-nez v17, :cond_2c

    move-object/from16 v17, v6

    :goto_13
    move-object/from16 v12, v17

    .line 569
    .local v12, "type":Ljava/lang/Object;
    move/from16 v17, v5

    if-nez v17, :cond_2e

    .line 570
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_12

    .line 567
    .local v12, "j":I
    :cond_2c
    move/from16 v17, v5

    if-nez v17, :cond_2d

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v17, v0

    goto :goto_13

    :cond_2d
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v17, v0

    goto :goto_13

    .line 571
    .local v12, "type":Ljava/lang/Object;
    :cond_2e
    move/from16 v17, v8

    if-eqz v17, :cond_2f

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27

    .line 573
    :cond_2f
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 574
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v17, v0

    move/from16 v18, v5

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    move/from16 v13, v17

    .line 575
    .local v13, "start":I
    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_30

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v17, v0

    move/from16 v18, v5

    aget v17, v17, v18

    :goto_14
    move/from16 v14, v17

    .line 576
    .local v14, "end":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move/from16 v18, v13

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    move/from16 v19, v14

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v17

    .line 579
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lgnu/lists/Consumer;->endAttribute()V

    goto/16 :goto_12

    .line 575
    .end local v14    # "end":I
    :cond_30
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v17, v0

    goto :goto_14

    .line 585
    .end local v6    # "saved":Ljava/lang/Object;
    .end local v7    # "info":Lgnu/xml/MappingInfo;
    .end local v8    # "isNsNode":Z
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "local":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/Object;
    .end local v13    # "start":I
    :cond_31
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/kawa/sax/ContentConsumer;

    move/from16 v17, v0

    if-eqz v17, :cond_32

    .line 586
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual/range {v17 .. v17}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 589
    :cond_32
    const/16 v17, 0x1

    move/from16 v5, v17

    :goto_15
    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_33

    .line 590
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v18, v0

    move/from16 v19, v5

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x0

    aput-object v19, v17, v18

    .line 589
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 591
    :cond_33
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_34

    .line 593
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 595
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/TreeList;->clear()V

    .line 597
    :cond_34
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/xml/XMLFilter;->attrCount:I

    .line 598
    goto/16 :goto_0
.end method

.method public commentFromParser([CII)V
    .locals 8

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget v4, v4, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v4, :cond_1

    .line 1159
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1160
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v4, v4, Lgnu/lists/XConsumer;

    if-eqz v4, :cond_0

    .line 1161
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v4, Lgnu/lists/XConsumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v4, :cond_0

    .line 1164
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 5

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/SeqPosition;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v1

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3, v4}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 654
    return-void
.end method

.method public emitCharacterReference(I[CII)V
    .locals 7

    .prologue
    .line 1121
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "value":I
    move-object v2, p2

    .local v2, "name":[C
    move v3, p3

    .local v3, "start":I
    move v4, p4

    .local v4, "length":I
    move v5, v1

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_0

    .line 1122
    move v5, v1

    move-object v6, v0

    invoke-static {v5, v6}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/XMLFilter;->write(I)V

    goto :goto_0
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0
    .param p1, "buffer"    # [C
    .param p2, "target"    # I
    .param p3, "tlength"    # I
    .param p4, "data"    # I
    .param p5, "dlength"    # I

    .prologue
    .line 1276
    return-void
.end method

.method public emitEndAttributes()V
    .locals 2

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1006
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1007
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1008
    return-void
.end method

.method public emitEndElement([CII)V
    .locals 14

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "length":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1017
    move-object v9, v0

    const/16 v10, 0x65

    const-string/jumbo v11, "unclosed attribute"

    invoke-virtual {v9, v10, v11}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1018
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1020
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1022
    move-object v9, v0

    const/16 v10, 0x65

    const-string/jumbo v11, "unmatched end element"

    invoke-virtual {v9, v10, v11}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1023
    .line 1054
    :goto_0
    return-void

    .line 1025
    :cond_1
    move-object v9, v1

    if-eqz v9, :cond_4

    .line 1027
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v9

    move-object v4, v9

    .line 1028
    .local v4, "info":Lgnu/xml/MappingInfo;
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v5, v9

    .line 1029
    .local v5, "old":Ljava/lang/Object;
    move-object v9, v5

    instance-of v9, v9, Lgnu/xml/MappingInfo;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/xml/XMLFilter;->mismatchReported:Z

    if-nez v9, :cond_4

    .line 1031
    move-object v9, v5

    check-cast v9, Lgnu/xml/MappingInfo;

    move-object v6, v9

    .line 1032
    .local v6, "mold":Lgnu/xml/MappingInfo;
    move-object v9, v4

    iget-object v9, v9, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object v10, v6

    iget-object v10, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v9, v10, :cond_2

    move-object v9, v4

    iget-object v9, v9, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v10, v6

    iget-object v10, v10, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eq v9, v10, :cond_4

    .line 1034
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "</"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 1035
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1036
    move-object v9, v7

    const-string/jumbo v10, "> matching <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1037
    move-object v9, v6

    iget-object v9, v9, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v8, v9

    .line 1038
    .local v8, "oldPrefix":Ljava/lang/String;
    move-object v9, v8

    if-eqz v9, :cond_3

    .line 1040
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1041
    move-object v9, v7

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1043
    :cond_3
    move-object v9, v7

    move-object v10, v6

    iget-object v10, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1044
    move-object v9, v7

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1045
    move-object v9, v0

    const/16 v10, 0x65

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1046
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lgnu/xml/XMLFilter;->mismatchReported:Z

    .line 1050
    .end local v4    # "info":Lgnu/xml/MappingInfo;
    .end local v5    # "old":Ljava/lang/Object;
    .end local v6    # "mold":Lgnu/xml/MappingInfo;
    .end local v7    # "sbuf":Ljava/lang/StringBuffer;
    .end local v8    # "oldPrefix":Ljava/lang/String;
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1051
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLFilter;->nesting:I

    if-gtz v9, :cond_5

    .line 1052
    goto/16 :goto_0

    .line 1053
    :cond_5
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1054
    goto/16 :goto_0
.end method

.method public emitEntityReference([CII)V
    .locals 12

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "name":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v9, v1

    move v10, v2

    aget-char v9, v9, v10

    move v4, v9

    .line 1089
    .local v4, "c0":C
    const/16 v9, 0x3f

    move v5, v9

    .line 1090
    .local v5, "ch":C
    move v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    const/16 v10, 0x74

    if-ne v9, v10, :cond_2

    .line 1093
    move v9, v4

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_1

    .line 1094
    const/16 v9, 0x3c

    move v5, v9

    .line 1113
    :cond_0
    :goto_0
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1114
    return-void

    .line 1095
    :cond_1
    move v9, v4

    const/16 v10, 0x67

    if-ne v9, v10, :cond_0

    .line 1096
    const/16 v9, 0x3e

    move v5, v9

    goto :goto_0

    .line 1098
    :cond_2
    move v9, v3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 1100
    move v9, v4

    const/16 v10, 0x61

    if-ne v9, v10, :cond_0

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_0

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-char v9, v9, v10

    const/16 v10, 0x70

    if-ne v9, v10, :cond_0

    .line 1101
    const/16 v9, 0x26

    move v5, v9

    goto :goto_0

    .line 1103
    :cond_3
    move v9, v3

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 1105
    move-object v9, v1

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    move v6, v9

    .line 1106
    .local v6, "c1":C
    move-object v9, v1

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-char v9, v9, v10

    move v7, v9

    .line 1107
    .local v7, "c2":C
    move-object v9, v1

    move v10, v2

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    aget-char v9, v9, v10

    move v8, v9

    .line 1108
    .local v8, "c3":C
    move v9, v4

    const/16 v10, 0x71

    if-ne v9, v10, :cond_4

    move v9, v6

    const/16 v10, 0x75

    if-ne v9, v10, :cond_4

    move v9, v7

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_4

    move v9, v8

    const/16 v10, 0x74

    if-ne v9, v10, :cond_4

    .line 1109
    const/16 v9, 0x22

    move v5, v9

    goto :goto_0

    .line 1110
    :cond_4
    move v9, v4

    const/16 v10, 0x61

    if-ne v9, v10, :cond_0

    move v9, v6

    const/16 v10, 0x70

    if-ne v9, v10, :cond_0

    move v9, v7

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_0

    move v9, v8

    const/16 v10, 0x73

    if-ne v9, v10, :cond_0

    .line 1111
    const/16 v9, 0x27

    move v5, v9

    goto :goto_0
.end method

.method public emitStartAttribute([CII)V
    .locals 11

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 973
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 974
    :cond_0
    move-object v7, v0

    invoke-direct {v7}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v7

    if-nez v7, :cond_1

    .line 975
    .line 999
    :goto_0
    return-void

    .line 977
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v7

    move-object v4, v7

    .line 978
    .local v4, "info":Lgnu/xml/MappingInfo;
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Lgnu/xml/XMLFilter;->nesting:I

    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v4

    aput-object v9, v7, v8

    .line 979
    move-object v7, v4

    iget-object v7, v7, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v5, v7

    .line 980
    .local v5, "prefix":Ljava/lang/String;
    move-object v7, v4

    iget-object v7, v7, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object v6, v7

    .line 981
    .local v6, "local":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 982
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 983
    move-object v7, v5

    if-eqz v7, :cond_5

    .line 985
    move-object v7, v5

    const-string/jumbo v8, "xmlns"

    if-ne v7, v8, :cond_2

    .line 987
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 997
    :cond_2
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-boolean v7, v7, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v7, :cond_4

    .line 998
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 999
    :cond_4
    goto :goto_0

    .line 992
    :cond_5
    move-object v7, v6

    const-string/jumbo v8, "xmlns"

    if-ne v7, v8, :cond_2

    move-object v7, v5

    if-nez v7, :cond_2

    .line 994
    move-object v7, v0

    const-string/jumbo v8, ""

    iput-object v8, v7, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto :goto_1
.end method

.method public emitStartElement([CII)V
    .locals 9

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 841
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v5

    move-object v4, v5

    .line 842
    .local v4, "info":Lgnu/xml/MappingInfo;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 843
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v5, v6}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 844
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v4

    aput-object v7, v5, v6

    .line 845
    return-void
.end method

.method public endAttribute()V
    .locals 20

    .prologue
    .line 232
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/xml/XMLFilter;
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 233
    .line 323
    :goto_0
    return-void

    .line 234
    :cond_0
    move-object v11, v1

    iget v11, v11, Lgnu/xml/XMLFilter;->previous:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 236
    move-object v11, v1

    const/4 v12, 0x0

    iput v12, v11, Lgnu/xml/XMLFilter;->previous:I

    .line 237
    goto :goto_0

    .line 239
    :cond_1
    move-object v11, v1

    iget v11, v11, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v11, :cond_2

    .line 240
    move-object v11, v1

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Lgnu/xml/XMLFilter;->ignoringLevel:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 241
    :cond_2
    move-object v11, v1

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v18, v11

    move/from16 v19, v12

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    iput v13, v12, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v11, :cond_7

    .line 243
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    const-string/jumbo v12, "id"

    if-ne v11, v12, :cond_3

    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    const-string/jumbo v12, "xml"

    if-ne v11, v12, :cond_3

    .line 246
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v12, v1

    iget v12, v12, Lgnu/xml/XMLFilter;->attrCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    const/4 v12, 0x5

    add-int/lit8 v11, v11, 0x5

    move v2, v11

    .line 248
    .local v2, "valStart":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v11, v11, Lgnu/lists/TreeList;->gapStart:I

    move v3, v11

    .line 249
    .local v3, "valEnd":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v11, v11, Lgnu/lists/TreeList;->data:[C

    move-object v4, v11

    .line 250
    .local v4, "data":[C
    move v11, v2

    move v5, v11

    .line 252
    .local v5, "i":I
    :goto_1
    move v11, v5

    move v12, v3

    if-lt v11, v12, :cond_8

    .line 255
    .line 278
    .end local v2    # "valStart":I
    .end local v3    # "valEnd":I
    .end local v4    # "data":[C
    .end local v5    # "i":I
    :cond_3
    :goto_2
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 279
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 280
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object v11, v1

    iget-boolean v11, v11, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v11, :cond_5

    .line 281
    :cond_4
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v11}, Lgnu/lists/TreeList;->endAttribute()V

    .line 282
    :cond_5
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 285
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v12, v1

    iget v12, v12, Lgnu/xml/XMLFilter;->attrCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    move v2, v11

    .line 286
    .local v2, "attrStart":I
    move v11, v2

    move v3, v11

    .line 287
    .local v3, "uriStart":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v11, v11, Lgnu/lists/TreeList;->gapStart:I

    move v4, v11

    .line 288
    .local v4, "uriEnd":I
    move v11, v4

    move v12, v3

    sub-int/2addr v11, v12

    move v5, v11

    .line 289
    .local v5, "uriLength":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v11, v11, Lgnu/lists/TreeList;->data:[C

    move-object v6, v11

    .line 294
    .local v6, "data":[C
    const/4 v11, 0x0

    move v7, v11

    .line 295
    .local v7, "uriHash":I
    move v11, v3

    move v8, v11

    .local v8, "i":I
    :goto_3
    move v11, v8

    move v12, v4

    if-ge v11, v12, :cond_6

    .line 297
    move-object v11, v6

    move v12, v8

    aget-char v11, v11, v12

    move v9, v11

    .line 298
    .local v9, "datum":C
    move v11, v9

    const v12, 0xffff

    and-int/2addr v11, v12

    const v12, 0x9fff

    if-le v11, v12, :cond_b

    .line 300
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v11

    .line 301
    .local v10, "sbuf":Ljava/lang/StringBuffer;
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move v12, v3

    move v13, v4

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 302
    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    move v7, v11

    .line 303
    const/4 v11, 0x0

    move v3, v11

    .line 304
    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    move/from16 v18, v11

    move/from16 v11, v18

    move/from16 v12, v18

    move v5, v12

    move v4, v11

    .line 305
    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    new-array v11, v11, [C

    move-object v6, v11

    .line 306
    move-object v11, v10

    const/4 v12, 0x0

    move v13, v4

    move-object v14, v6

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 307
    .line 311
    .end local v9    # "datum":C
    .end local v10    # "sbuf":Ljava/lang/StringBuffer;
    :cond_6
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move v12, v2

    iput v12, v11, Lgnu/lists/TreeList;->gapStart:I

    .line 313
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    const-string/jumbo v12, ""

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    :goto_4
    move-object v8, v11

    .line 315
    .local v8, "prefix":Ljava/lang/String;
    move-object v11, v1

    move-object v12, v8

    move-object v13, v6

    move v14, v3

    move v15, v5

    move/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;

    move-result-object v11

    move-object v9, v11

    .line 318
    .local v9, "info":Lgnu/xml/MappingInfo;
    move-object v11, v1

    move-object v12, v9

    iget-object v12, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    iput-object v12, v11, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 320
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 323
    .end local v2    # "attrStart":I
    .end local v3    # "uriStart":I
    .end local v4    # "uriEnd":I
    .end local v5    # "uriLength":I
    .end local v6    # "data":[C
    .end local v7    # "uriHash":I
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "info":Lgnu/xml/MappingInfo;
    :cond_7
    goto/16 :goto_0

    .line 257
    .local v2, "valStart":I
    .local v3, "valEnd":I
    .local v4, "data":[C
    .local v5, "i":I
    :cond_8
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v11, v12

    move v6, v11

    .line 258
    .local v6, "datum":C
    move v11, v6

    const v12, 0xffff

    and-int/2addr v11, v12

    const v12, 0x9fff

    if-gt v11, v12, :cond_9

    move v11, v6

    const/16 v12, 0x9

    if-eq v11, v12, :cond_9

    move v11, v6

    const/16 v12, 0xd

    if-eq v11, v12, :cond_9

    move v11, v6

    const/16 v12, 0xa

    if-eq v11, v12, :cond_9

    move v11, v6

    const/16 v12, 0x20

    if-ne v11, v12, :cond_a

    move v11, v5

    move v12, v3

    if-eq v11, v12, :cond_9

    move-object v11, v4

    move v12, v5

    aget-char v11, v11, v12

    const/16 v12, 0x20

    if-ne v11, v12, :cond_a

    .line 268
    :cond_9
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v11

    .line 269
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move v12, v2

    move v13, v3

    move-object v14, v7

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 270
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move v12, v2

    iput v12, v11, Lgnu/lists/TreeList;->gapStart:I

    .line 271
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    .line 273
    goto/16 :goto_2

    .line 275
    .end local v7    # "sbuf":Ljava/lang/StringBuffer;
    :cond_a
    goto/16 :goto_1

    .line 309
    .local v2, "attrStart":I
    .local v3, "uriStart":I
    .local v4, "uriEnd":I
    .local v5, "uriLength":I
    .local v6, "data":[C
    .local v7, "uriHash":I
    .local v8, "i":I
    .local v9, "datum":C
    :cond_b
    const/16 v11, 0x1f

    move v12, v7

    mul-int/2addr v11, v12

    move v12, v9

    add-int/2addr v11, v12

    move v7, v11

    .line 295
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 313
    .end local v9    # "datum":C
    :cond_c
    move-object v11, v1

    iget-object v11, v11, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public endDocument()V
    .locals 5

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v1, :cond_0

    .line 1250
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1251
    .line 1268
    :goto_0
    return-void

    .line 1253
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lgnu/xml/XMLFilter;->nesting:I

    .line 1254
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v2, v2, v3

    check-cast v2, Lgnu/xml/NamespaceBinding;

    iput-object v2, v1, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1255
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1256
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1257
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v1, :cond_1

    .line 1258
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endDocument()V

    .line 1268
    :goto_1
    goto :goto_0

    .line 1260
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1
.end method

.method public endElement()V
    .locals 5

    .prologue
    .line 1058
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1059
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lgnu/xml/XMLFilter;->nesting:I

    .line 1060
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 1061
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v1, :cond_1

    .line 1063
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v2, v2, v3

    check-cast v2, Lgnu/xml/NamespaceBinding;

    iput-object v2, v1, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1064
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1065
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1066
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endElement()V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v1, v2, :cond_0

    .line 1070
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 1071
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1526
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1527
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1503
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "qName":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1504
    return-void
.end method

.method public endEntity()V
    .locals 2

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v1, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 1287
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/lists/XConsumer;

    invoke-interface {v1}, Lgnu/lists/XConsumer;->endEntity()V

    .line 1288
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1559
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    iput-object v3, v2, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1560
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 8

    .prologue
    .line 1465
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    if-nez v3, :cond_0

    .line 1466
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1467
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    if-eqz v3, :cond_1

    .line 1468
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 1471
    :goto_0
    return-void

    .line 1470
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 14

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "oldBindings":Lgnu/xml/NamespaceBinding;
    move-object v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    move v4, v8

    .line 139
    .local v4, "hash":I
    move-object v8, v1

    if-eqz v8, :cond_0

    .line 140
    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v8, v9

    move v4, v8

    .line 141
    :cond_0
    move v8, v4

    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v8, v9

    move v5, v8

    .line 142
    .local v5, "bucket":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 145
    .local v6, "info":Lgnu/xml/MappingInfo;
    :goto_1
    move-object v8, v6

    if-nez v8, :cond_3

    .line 147
    new-instance v8, Lgnu/xml/MappingInfo;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v6, v8

    .line 148
    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v10, v5

    aget-object v9, v9, v10

    iput-object v9, v8, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 149
    move-object v8, v0

    iget-object v8, v8, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v9, v5

    move-object v10, v6

    aput-object v10, v8, v9

    .line 150
    move-object v8, v6

    move v9, v4

    iput v9, v8, Lgnu/xml/MappingInfo;->tagHash:I

    .line 151
    move-object v8, v6

    move-object v9, v1

    iput-object v9, v8, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 152
    move-object v8, v6

    move-object v9, v2

    iput-object v9, v8, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 153
    move-object v8, v6

    move-object v9, v2

    iput-object v9, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 154
    move-object v8, v2

    const-string/jumbo v9, ""

    if-ne v8, v9, :cond_1

    .line 155
    const/4 v8, 0x0

    move-object v2, v8

    .line 156
    :cond_1
    new-instance v8, Lgnu/xml/NamespaceBinding;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v7, v8

    .line 158
    .local v7, "namespaces":Lgnu/xml/NamespaceBinding;
    move-object v8, v6

    move-object v9, v7

    iput-object v9, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 159
    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v0, v8

    .line 169
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_2
    return-object v0

    .line 138
    .end local v4    # "hash":I
    .end local v5    # "bucket":I
    .end local v6    # "info":Lgnu/xml/MappingInfo;
    .end local v7    # "namespaces":Lgnu/xml/NamespaceBinding;
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    goto :goto_0

    .line 162
    .restart local v4    # "hash":I
    .restart local v5    # "bucket":I
    .restart local v6    # "info":Lgnu/xml/MappingInfo;
    :cond_3
    move-object v8, v6

    iget v8, v8, Lgnu/xml/MappingInfo;->tagHash:I

    move v9, v4

    if-ne v8, v9, :cond_4

    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v9, v1

    if-ne v8, v9, :cond_4

    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v7, v9

    .restart local v7    # "namespaces":Lgnu/xml/NamespaceBinding;
    if-eqz v8, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v8, v9, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    if-ne v8, v9, :cond_4

    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object v9, v2

    if-ne v8, v9, :cond_4

    .line 169
    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v0, v8

    goto :goto_2

    .line 143
    .end local v7    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_4
    move-object v8, v6

    iget-object v8, v8, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    move-object v6, v8

    goto/16 :goto_1
.end method

.method public getColumnNumber()I
    .locals 5

    .prologue
    .line 1593
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    move v4, v2

    move v2, v4

    move v3, v4

    move v1, v3

    .local v1, "col":I
    if-lez v2, :cond_0

    move v2, v1

    .end local v1    # "col":I
    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return v0

    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1579
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0

    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 4

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v2, :cond_0

    .line 1585
    const/4 v2, -0x1

    move v0, v2

    .line 1587
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    .local v1, "line":I
    :goto_0
    return v0

    .line 1586
    .end local v1    # "line":I
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v2

    move v1, v2

    .line 1587
    .restart local v1    # "line":I
    move v2, v1

    if-gez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1574
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return-object v0

    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1539
    return-void
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 1475
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return v0

    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final inElement()Z
    .locals 5

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    move v1, v2

    .line 757
    .local v1, "i":I
    :goto_0
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 758
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 759
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return v0

    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/xml/XMLFilter;
    return v0
.end method

.method public linefeedFromParser()V
    .locals 3

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lgnu/lists/Consumer;->write(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;
    .locals 18

    .prologue
    .line 186
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object/from16 v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "uriChars":[C
    move/from16 v3, p3

    .local v3, "uriStart":I
    move/from16 v4, p4

    .local v4, "uriLength":I
    move/from16 v5, p5

    .local v5, "uriHash":I
    move-object/from16 v6, p6

    .local v6, "oldBindings":Lgnu/xml/NamespaceBinding;
    move-object v12, v1

    if-nez v12, :cond_1

    move v12, v5

    :goto_0
    move v7, v12

    .line 192
    .local v7, "hash":I
    move v12, v7

    move-object v13, v0

    iget v13, v13, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v12, v13

    move v8, v12

    .line 193
    .local v8, "bucket":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v13, v8

    aget-object v12, v12, v13

    move-object v9, v12

    .line 196
    .local v9, "info":Lgnu/xml/MappingInfo;
    :goto_1
    move-object v12, v9

    if-nez v12, :cond_2

    .line 198
    new-instance v12, Lgnu/xml/MappingInfo;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v9, v12

    .line 199
    move-object v12, v9

    move-object v13, v0

    iget-object v13, v13, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v14, v8

    aget-object v13, v13, v14

    iput-object v13, v12, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 200
    move-object v12, v0

    iget-object v12, v12, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v13, v8

    move-object v14, v9

    aput-object v14, v12, v13

    .line 201
    new-instance v12, Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 206
    .local v10, "uri":Ljava/lang/String;
    move-object v12, v9

    move v13, v7

    iput v13, v12, Lgnu/xml/MappingInfo;->tagHash:I

    .line 207
    move-object v12, v9

    move-object v13, v1

    iput-object v13, v12, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 208
    move-object v12, v9

    move-object v13, v10

    iput-object v13, v12, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 209
    move-object v12, v9

    move-object v13, v10

    iput-object v13, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 210
    move-object v12, v10

    const-string/jumbo v13, ""

    if-ne v12, v13, :cond_0

    .line 211
    const/4 v12, 0x0

    move-object v10, v12

    .line 212
    :cond_0
    new-instance v12, Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    move-object v15, v10

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v11, v12

    .line 214
    .local v11, "namespaces":Lgnu/xml/NamespaceBinding;
    move-object v12, v9

    move-object v13, v11

    iput-object v13, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 215
    move-object v12, v9

    move-object v0, v12

    .line 225
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "namespaces":Lgnu/xml/NamespaceBinding;
    :goto_2
    return-object v0

    .line 186
    .end local v7    # "hash":I
    .end local v8    # "bucket":I
    .end local v9    # "info":Lgnu/xml/MappingInfo;
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    move v13, v5

    xor-int/2addr v12, v13

    goto :goto_0

    .line 218
    .restart local v7    # "hash":I
    .restart local v8    # "bucket":I
    .restart local v9    # "info":Lgnu/xml/MappingInfo;
    :cond_2
    move-object v12, v9

    iget v12, v12, Lgnu/xml/MappingInfo;->tagHash:I

    move v13, v7

    if-ne v12, v13, :cond_3

    move-object v12, v9

    iget-object v12, v12, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v13, v1

    if-ne v12, v13, :cond_3

    move-object v12, v9

    iget-object v12, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v10, v13

    .local v10, "namespaces":Lgnu/xml/NamespaceBinding;
    if-eqz v12, :cond_3

    move-object v12, v10

    invoke-virtual {v12}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v12, v13, :cond_3

    move-object v12, v10

    invoke-virtual {v12}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    if-ne v12, v13, :cond_3

    move-object v12, v9

    iget-object v12, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v12, v13, v14, v15}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 225
    move-object v12, v9

    move-object v0, v12

    goto :goto_2

    .line 194
    .end local v10    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_3
    move-object v12, v9

    iget-object v12, v12, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    move-object v9, v12

    goto/16 :goto_1
.end method

.method lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;
    .locals 13

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "qname":Lgnu/mapping/Symbol;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 1317
    .local v2, "local":Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1318
    .local v3, "prefix":Ljava/lang/String;
    move-object v9, v3

    const-string/jumbo v10, ""

    if-ne v9, v10, :cond_0

    .line 1319
    const/4 v9, 0x0

    move-object v3, v9

    .line 1320
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1321
    .local v4, "uri":Ljava/lang/String;
    move-object v9, v3

    move-object v10, v2

    invoke-static {v9, v10}, Lgnu/xml/MappingInfo;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v5, v9

    .line 1322
    .local v5, "hash":I
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v9, v10

    move v6, v9

    .line 1323
    .local v6, "index":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 1324
    .local v7, "first":Lgnu/xml/MappingInfo;
    move-object v9, v7

    move-object v8, v9

    .line 1327
    .local v8, "info":Lgnu/xml/MappingInfo;
    :goto_0
    move-object v9, v8

    if-nez v9, :cond_1

    .line 1330
    new-instance v9, Lgnu/xml/MappingInfo;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v8, v9

    .line 1331
    move-object v9, v8

    move-object v10, v1

    iput-object v10, v9, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1332
    move-object v9, v8

    move-object v10, v3

    iput-object v10, v9, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1333
    move-object v9, v8

    move-object v10, v4

    iput-object v10, v9, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1334
    move-object v9, v8

    move-object v10, v2

    iput-object v10, v9, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1335
    move-object v9, v8

    move v10, v5

    iput v10, v9, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1336
    move-object v9, v8

    move-object v10, v7

    iput-object v10, v9, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1337
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v10, v6

    move-object v11, v7

    aput-object v11, v9, v10

    .line 1338
    move-object v9, v8

    move-object v0, v9

    .line 1348
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_1
    return-object v0

    .line 1340
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_1
    move-object v9, v1

    move-object v10, v8

    iget-object v10, v10, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-ne v9, v10, :cond_2

    .line 1341
    move-object v9, v8

    move-object v0, v9

    goto :goto_1

    .line 1342
    :cond_2
    move-object v9, v2

    move-object v10, v8

    iget-object v10, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v9, v10, :cond_4

    move-object v9, v8

    iget-object v9, v9, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v9, :cond_4

    move-object v9, v4

    move-object v10, v8

    iget-object v10, v10, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v9, v10, :cond_3

    move-object v9, v8

    iget-object v9, v9, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v9, :cond_4

    :cond_3
    move-object v9, v3

    move-object v10, v8

    iget-object v10, v10, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v9, v10, :cond_4

    .line 1346
    move-object v9, v8

    move-object v10, v4

    iput-object v10, v9, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1347
    move-object v9, v8

    move-object v10, v1

    iput-object v10, v9, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1348
    move-object v9, v8

    move-object v0, v9

    goto :goto_1

    .line 1350
    :cond_4
    move-object v9, v8

    iget-object v9, v9, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    move-object v8, v9

    goto :goto_0
.end method

.method lookupTag([CII)Lgnu/xml/MappingInfo;
    .locals 19

    .prologue
    .line 1365
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object/from16 v1, p1

    .local v1, "data":[C
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "length":I
    const/4 v11, 0x0

    move v4, v11

    .line 1366
    .local v4, "hash":I
    const/4 v11, 0x0

    move v5, v11

    .line 1367
    .local v5, "prefixHash":I
    const/4 v11, -0x1

    move v6, v11

    .line 1368
    .local v6, "colon":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_1

    .line 1370
    move-object v11, v1

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    aget-char v11, v11, v12

    move v8, v11

    .line 1371
    .local v8, "ch":C
    move v11, v8

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_0

    move v11, v6

    if-gez v11, :cond_0

    .line 1373
    move v11, v7

    move v6, v11

    .line 1374
    move v11, v4

    move v5, v11

    .line 1375
    const/4 v11, 0x0

    move v4, v11

    .line 1368
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1378
    :cond_0
    const/16 v11, 0x1f

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v8

    add-int/2addr v11, v12

    move v4, v11

    goto :goto_1

    .line 1380
    .end local v8    # "ch":C
    :cond_1
    move v11, v5

    move v12, v4

    xor-int/2addr v11, v12

    move v4, v11

    .line 1381
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v11, v12

    move v7, v11

    .line 1382
    .local v7, "index":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 1383
    .local v8, "first":Lgnu/xml/MappingInfo;
    move-object v11, v8

    move-object v9, v11

    .line 1386
    .local v9, "info":Lgnu/xml/MappingInfo;
    :goto_2
    move-object v11, v9

    if-nez v11, :cond_3

    .line 1389
    new-instance v11, Lgnu/xml/MappingInfo;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v9, v11

    .line 1390
    move-object v11, v9

    move v12, v4

    iput v12, v11, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1391
    move v11, v6

    if-ltz v11, :cond_2

    .line 1393
    move-object v11, v9

    new-instance v12, Ljava/lang/String;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    move v15, v2

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1394
    add-int/lit8 v6, v6, 0x1

    .line 1395
    move v11, v2

    move v12, v6

    add-int/2addr v11, v12

    move v10, v11

    .line 1396
    .local v10, "lstart":I
    move-object v11, v9

    new-instance v12, Ljava/lang/String;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    move v15, v10

    move/from16 v16, v3

    move/from16 v17, v6

    sub-int v16, v16, v17

    invoke-direct/range {v13 .. v16}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1397
    .line 1403
    .end local v10    # "lstart":I
    :goto_3
    move-object v11, v9

    move-object v12, v8

    iput-object v12, v11, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1404
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move v12, v7

    move-object v13, v8

    aput-object v13, v11, v12

    .line 1405
    move-object v11, v9

    move-object v0, v11

    .line 1409
    .end local v0    # "this":Lgnu/xml/XMLFilter;
    :goto_4
    return-object v0

    .line 1400
    .restart local v0    # "this":Lgnu/xml/XMLFilter;
    :cond_2
    move-object v11, v9

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1401
    move-object v11, v9

    new-instance v12, Ljava/lang/String;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v13 .. v16}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    goto :goto_3

    .line 1407
    :cond_3
    move v11, v4

    move-object v12, v9

    iget v12, v12, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v11, v12, :cond_4

    move-object v11, v9

    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/xml/MappingInfo;->match([CII)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1409
    move-object v11, v9

    move-object v0, v11

    goto :goto_4

    .line 1410
    :cond_4
    move-object v11, v9

    iget-object v11, v11, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    move-object v9, v11

    goto/16 :goto_2
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1546
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v3, v4

    .line 1547
    .local v3, "chars":[C
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1548
    return-void
.end method

.method processingInstructionCommon(Ljava/lang/String;[CII)V
    .locals 10

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v5, :cond_1

    .line 1200
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1201
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v5, v5, Lgnu/lists/XConsumer;

    if-eqz v5, :cond_0

    .line 1202
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v5, Lgnu/lists/XConsumer;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v5, :cond_0

    .line 1206
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-interface {v5, v6, v7, v8}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 13

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "tstart":I
    move/from16 v3, p3

    .local v3, "tlength":I
    move/from16 v4, p4

    .local v4, "dstart":I
    move/from16 v5, p5

    .local v5, "dlength":I
    move v7, v3

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    move v8, v2

    aget-char v7, v7, v8

    const/16 v8, 0x78

    if-ne v7, v8, :cond_0

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-char v7, v7, v8

    const/16 v8, 0x6d

    if-ne v7, v8, :cond_0

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_0

    .line 1219
    .line 1222
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v7, Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v7

    .line 1221
    .local v6, "target":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v1

    move v10, v4

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1222
    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 4

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "locator":Lorg/xml/sax/Locator;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/SourceLocator;

    if-eqz v2, :cond_0

    .line 1482
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/SourceLocator;

    iput-object v3, v2, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    .line 1485
    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "in":Lgnu/text/LineBufferedReader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    move-object v2, v0

    move-object v3, v0

    iput-object v3, v2, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "locator":Lgnu/text/SourceLocator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1565
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lgnu/xml/XMLFilter;->previous:I

    .line 941
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_1

    .line 943
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v2, v5

    .line 944
    .local v2, "sym":Lgnu/mapping/Symbol;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 945
    .local v3, "local":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 946
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 947
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 948
    .local v4, "uri":Ljava/lang/String;
    move-object v5, v4

    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    if-eq v5, v6, :cond_0

    move-object v5, v4

    const-string/jumbo v6, ""

    if-ne v5, v6, :cond_1

    move-object v5, v3

    const-string/jumbo v6, "xmlns"

    if-ne v5, v6, :cond_1

    .line 950
    :cond_0
    move-object v5, v0

    const/16 v6, 0x65

    const-string/jumbo v7, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    invoke-virtual {v5, v6, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 952
    .end local v2    # "sym":Lgnu/mapping/Symbol;
    .end local v3    # "local":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_2

    .line 953
    move-object v5, v0

    const/16 v6, 0x65

    const-string/jumbo v7, "attribute not allowed at document level"

    invoke-virtual {v5, v6, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 954
    :cond_2
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v5, :cond_3

    .line 955
    move-object v5, v0

    const/16 v6, 0x65

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "attribute \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' follows non-attribute content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 956
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v5

    if-nez v5, :cond_4

    .line 957
    .line 963
    :goto_0
    return-void

    .line 958
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    move-object v7, v0

    iget v7, v7, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v1

    aput-object v7, v5, v6

    .line 959
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v5, :cond_5

    .line 960
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v6, v1

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 963
    :goto_1
    goto :goto_0

    .line 962
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->startAttribute(I)V

    goto :goto_1
.end method

.method public startDocument()V
    .locals 5

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1227
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v1, :cond_0

    .line 1228
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1244
    :goto_0
    return-void

    .line 1232
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v1, :cond_1

    .line 1233
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->startDocument()V

    .line 1236
    :goto_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 1237
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v3, v1, v2

    .line 1241
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1242
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/xml/XMLFilter;->nesting:I

    goto :goto_0

    .line 1235
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 850
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v5, :cond_0

    .line 852
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v5, v6}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 853
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v1

    aput-object v7, v5, v6

    .line 854
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v5, :cond_1

    .line 855
    move-object v5, v0

    sget-object v6, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 858
    :cond_2
    move-object v5, v0

    move-object v6, v1

    instance-of v6, v6, Lgnu/xml/XName;

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Lgnu/xml/XName;

    invoke-virtual {v6}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    :goto_1
    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_3
    sget-object v6, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    .line 865
    :cond_4
    const/4 v5, 0x2

    move v3, v5

    .line 867
    .local v3, "i":I
    :goto_2
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v5, v6, :cond_5

    .line 869
    const/4 v5, 0x0

    move-object v2, v5

    .line 878
    .local v2, "inherited":Lgnu/xml/NamespaceBinding;
    :goto_3
    move-object v5, v2

    if-nez v5, :cond_8

    .line 881
    move-object v5, v0

    move-object v6, v1

    instance-of v6, v6, Lgnu/xml/XName;

    if-eqz v6, :cond_7

    move-object v6, v1

    check-cast v6, Lgnu/xml/XName;

    invoke-virtual {v6}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    :goto_4
    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 872
    .end local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    .line 874
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    check-cast v5, Lgnu/xml/NamespaceBinding;

    move-object v2, v5

    .line 875
    .restart local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    goto :goto_3

    .line 865
    .end local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 881
    .restart local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    :cond_7
    sget-object v6, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 885
    :cond_8
    move-object v5, v0

    iget v5, v5, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 886
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 887
    :cond_9
    move-object v5, v1

    instance-of v5, v5, Lgnu/xml/XName;

    if-eqz v5, :cond_b

    .line 889
    move-object v5, v1

    check-cast v5, Lgnu/xml/XName;

    invoke-virtual {v5}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v5

    move-object v3, v5

    .line 890
    .local v3, "preserved":Lgnu/xml/NamespaceBinding;
    move-object v5, v2

    move-object v6, v3

    invoke-static {v5, v6}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v5

    move-object v4, v5

    .line 891
    .local v4, "join":Lgnu/xml/NamespaceBinding;
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_a

    .line 892
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 895
    :goto_5
    goto :goto_0

    .line 894
    :cond_a
    move-object v5, v0

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v6

    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    .line 897
    .end local v4    # "join":Lgnu/xml/NamespaceBinding;
    .local v3, "i":I
    :cond_b
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    .prologue
    .line 1490
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "qName":Ljava/lang/String;
    move-object v4, p4

    .local v4, "atts":Lorg/xml/sax/Attributes;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1491
    move-object v7, v4

    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    move v5, v7

    .line 1492
    .local v5, "numAttributes":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 1494
    move-object v7, v0

    move-object v8, v4

    move v9, v6

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    move v10, v6

    invoke-interface {v9, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1495
    move-object v7, v0

    move-object v8, v4

    move v9, v6

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1496
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1492
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 9

    .prologue
    .line 1508
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "atts":Lorg/xml/sax/AttributeList;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1509
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1510
    move-object v7, v2

    invoke-interface {v7}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v7

    move v3, v7

    .line 1511
    .local v3, "attrLength":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 1513
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1514
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1515
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1516
    .local v5, "type":Ljava/lang/String;
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1517
    .local v6, "value":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1518
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1519
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1511
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1521
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected startElementCommon()V
    .locals 5

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 818
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v1, :cond_1

    .line 820
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 821
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v3, v1, v2

    .line 822
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->startElement(I)V

    .line 823
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput-object v2, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 824
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->attrCount:I

    .line 834
    :cond_0
    :goto_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/xml/XMLFilter;->nesting:I

    .line 835
    return-void

    .line 828
    :cond_1
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->previous:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v1, :cond_2

    .line 829
    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/xml/XMLFilter;->write(I)V

    .line 830
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 831
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v1, :cond_0

    .line 832
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    iput v2, v1, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1552
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iput-object v4, v3, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1555
    return-void
.end method

.method public textFromParser([CII)V
    .locals 9

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v5

    if-nez v5, :cond_3

    .line 773
    const/4 v5, 0x0

    move v4, v5

    .line 775
    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 776
    .line 791
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 777
    .restart local v4    # "i":I
    :cond_0
    move-object v5, v1

    move v6, v2

    move v7, v4

    add-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 779
    move-object v5, v0

    const/16 v6, 0x65

    const-string/jumbo v7, "text at document level"

    invoke-virtual {v5, v6, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 780
    .line 773
    .line 791
    .end local v4    # "i":I
    :cond_1
    :goto_2
    goto :goto_1

    .line 773
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 784
    .end local v4    # "i":I
    :cond_3
    move v5, v3

    if-lez v5, :cond_1

    .line 786
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v5

    if-nez v5, :cond_4

    .line 787
    goto :goto_1

    .line 789
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_2
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 613
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 8

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move v4, v3

    if-nez v4, :cond_1

    .line 748
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 739
    return-void
.end method

.method public write([CII)V
    .locals 8

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move v4, v3

    if-nez v4, :cond_1

    .line 731
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 619
    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 8

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 808
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v4, v4, Lgnu/lists/XConsumer;

    if-eqz v4, :cond_1

    .line 809
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v4, Lgnu/lists/XConsumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write([CII)V

    goto :goto_0
.end method

.method public writeComment([CII)V
    .locals 8

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1149
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 1150
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v2, v2, Lgnu/lists/TreeList;

    if-eqz v2, :cond_0

    .line 648
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v2, Lgnu/lists/TreeList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 649
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 631
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 625
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 637
    :cond_0
    return-void
.end method

.method protected writeJoiner()V
    .locals 3

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 796
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v1, :cond_0

    .line 797
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/lists/TreeList;

    invoke-virtual {v1}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 798
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 643
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v6, :cond_0

    .line 675
    .line 713
    :goto_0
    return-void

    .line 676
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/SeqPosition;

    if-eqz v6, :cond_1

    .line 678
    move-object v6, v1

    check-cast v6, Lgnu/lists/SeqPosition;

    move-object v2, v6

    .line 679
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v6, v0

    move-object v7, v2

    iget-object v7, v7, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 680
    .line 713
    .end local v2    # "pos":Lgnu/lists/SeqPosition;
    :goto_1
    goto :goto_0

    .line 681
    :cond_1
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/TreeList;

    if-eqz v6, :cond_2

    .line 682
    move-object v6, v1

    check-cast v6, Lgnu/lists/TreeList;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 683
    :cond_2
    move-object v6, v1

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_4

    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/CharSeq;

    if-nez v6, :cond_4

    .line 685
    move-object v6, v1

    check-cast v6, Ljava/util/List;

    move-object v2, v6

    .line 686
    .local v2, "seq":Ljava/util/List;
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 687
    .local v3, "it":Ljava/util/Iterator;
    const/4 v6, 0x0

    move v4, v6

    .line 688
    .local v4, "wasAtomic":Z
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_2
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 689
    move-object v6, v0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 690
    :cond_3
    goto :goto_1

    .line 691
    .end local v2    # "seq":Ljava/util/List;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "wasAtomic":Z
    .end local v5    # "i":I
    :cond_4
    move-object v6, v1

    instance-of v6, v6, Lgnu/expr/Keyword;

    if-eqz v6, :cond_5

    .line 693
    move-object v6, v1

    check-cast v6, Lgnu/expr/Keyword;

    move-object v2, v6

    .line 694
    .local v2, "k":Lgnu/expr/Keyword;
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 695
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lgnu/xml/XMLFilter;->previous:I

    .line 696
    goto :goto_1

    .line 699
    .end local v2    # "k":Lgnu/expr/Keyword;
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 700
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/UnescapedData;

    if-eqz v6, :cond_6

    .line 702
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    move-object v7, v1

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 703
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_1

    .line 707
    :cond_6
    move-object v6, v0

    iget v6, v6, Lgnu/xml/XMLFilter;->previous:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 708
    move-object v6, v0

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lgnu/xml/XMLFilter;->write(I)V

    .line 709
    :cond_7
    move-object v6, v1

    move-object v7, v0

    invoke-static {v6, v7}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 710
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_1
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v3, :cond_0

    .line 659
    .line 669
    :goto_0
    return-void

    .line 660
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->previous:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 662
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v3, :cond_1

    .line 663
    move-object v3, v0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgnu/xml/XMLFilter;->write(I)V

    .line 664
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/xml/XMLFilter;->previous:I

    .line 666
    :cond_2
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 667
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v3, :cond_3

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v3, :cond_3

    .line 668
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLFilter;->previous:I

    .line 669
    :cond_3
    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 13

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLFilter;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move/from16 v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object v7, v1

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1171
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    move v5, v7

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v7, v5

    move v8, v3

    if-lt v7, v8, :cond_2

    .line 1173
    move-object v7, v2

    move v8, v5

    aget-char v7, v7, v8

    move v6, v7

    .line 1174
    .local v6, "ch":C
    :cond_0
    move v7, v6

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_1

    add-int/lit8 v5, v5, -0x1

    move v7, v5

    move v8, v3

    if-lt v7, v8, :cond_1

    .line 1176
    move-object v7, v2

    move v8, v5

    aget-char v7, v7, v8

    move v6, v7

    .line 1177
    move v7, v6

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_0

    .line 1179
    move-object v7, v0

    const/16 v8, 0x65

    const-string/jumbo v9, "\'?>\' is not allowed in a processing-instruction"

    invoke-virtual {v7, v8, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1180
    .line 1183
    :cond_1
    goto :goto_0

    .line 1185
    .end local v6    # "ch":C
    :cond_2
    const-string/jumbo v7, "xml"

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1186
    move-object v7, v0

    const/16 v8, 0x65

    const-string/jumbo v9, "processing-instruction target may not be \'xml\' (ignoring case)"

    invoke-virtual {v7, v8, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1188
    :cond_3
    move-object v7, v1

    invoke-static {v7}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1189
    move-object v7, v0

    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processing-instruction target \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' is not a valid Name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1192
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1193
    return-void
.end method
