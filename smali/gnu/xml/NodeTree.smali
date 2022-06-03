.class public Lgnu/xml/NodeTree;
.super Lgnu/lists/TreeList;
.source "NodeTree.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field idCount:I

.field idNames:[Ljava/lang/String;

.field idOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/TreeList;-><init>()V

    return-void
.end method

.method public static make()Lgnu/xml/NodeTree;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lgnu/xml/NodeTree;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "namespace":Ljava/lang/String;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    :goto_0
    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 209
    const/4 v5, 0x0

    move v0, v5

    .line 212
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_1
    return v0

    .line 210
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 211
    .local v4, "attr":I
    move v5, v4

    if-eqz v5, :cond_1

    .line 212
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 213
    :cond_1
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->parentPos(I)I

    move-result v5

    move v1, v5

    .line 214
    goto :goto_0
.end method

.method public baseUriOfPos(IZ)Lgnu/text/Path;
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "resolveRelative":Z
    const/4 v8, 0x0

    move-object v3, v8

    .line 221
    .local v3, "uri":Lgnu/text/Path;
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v8

    move v4, v8

    .line 224
    .local v4, "index":I
    :goto_0
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/NodeTree;->data:[C

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 225
    const/4 v8, 0x0

    move-object v0, v8

    .line 250
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_1
    return-object v0

    .line 226
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/xml/NodeTree;->data:[C

    move v9, v4

    aget-char v8, v8, v9

    move v5, v8

    .line 227
    .local v5, "datum":C
    const/4 v8, 0x0

    move-object v6, v8

    .line 228
    .local v6, "base":Lgnu/text/Path;
    move v8, v5

    const v9, 0xf112

    if-ne v8, v9, :cond_4

    .line 230
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v8

    move v7, v8

    .line 231
    .local v7, "oindex":I
    move v8, v7

    if-ltz v8, :cond_1

    .line 232
    move-object v8, v0

    iget-object v8, v8, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    move v9, v7

    aget-object v8, v8, v9

    invoke-static {v8}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v8

    move-object v6, v8

    .line 233
    .line 242
    .end local v7    # "oindex":I
    :cond_1
    :goto_2
    move-object v8, v6

    if-eqz v8, :cond_8

    .line 244
    move-object v8, v3

    if-eqz v8, :cond_2

    move v8, v2

    if-nez v8, :cond_7

    :cond_2
    move-object v8, v6

    :goto_3
    move-object v3, v8

    .line 245
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v2

    if-nez v8, :cond_8

    .line 246
    :cond_3
    move-object v8, v3

    move-object v0, v8

    goto :goto_1

    .line 234
    :cond_4
    move v8, v5

    const v9, 0xa000

    if-lt v8, v9, :cond_5

    move v8, v5

    const v9, 0xafff

    if-le v8, v9, :cond_6

    :cond_5
    move v8, v5

    const v9, 0xf108

    if-ne v8, v9, :cond_1

    .line 238
    :cond_6
    move-object v8, v0

    move v9, v1

    const-string/jumbo v10, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v11, "base"

    invoke-virtual {v8, v9, v10, v11}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 239
    .local v7, "attr":I
    move v8, v7

    if-eqz v8, :cond_1

    .line 240
    move-object v8, v0

    move v9, v7

    invoke-static {v8, v9}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v8

    move-object v6, v8

    goto :goto_2

    .line 244
    .end local v7    # "attr":I
    :cond_7
    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v8, v9}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v8

    goto :goto_3

    .line 248
    :cond_8
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lgnu/xml/NodeTree;->parentOrEntityI(I)I

    move-result v8

    move v4, v8

    .line 249
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    .line 250
    move-object v8, v3

    move-object v0, v8

    goto/16 :goto_1

    .line 251
    :cond_9
    move v8, v4

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v1, v8

    .line 252
    goto/16 :goto_0
.end method

.method enterID(Ljava/lang/String;I)V
    .locals 16

    .prologue
    .line 302
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "offset":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    move-object v4, v11

    .line 303
    .local v4, "tmpNames":[Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/NodeTree;->idOffsets:[I

    move-object v5, v11

    .line 304
    .local v5, "tmpOffsets":[I
    move-object v11, v4

    if-nez v11, :cond_1

    .line 306
    const/16 v11, 0x40

    move v3, v11

    .line 307
    .local v3, "size":I
    move-object v11, v0

    move v12, v3

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, v11, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 308
    move-object v11, v0

    move v12, v3

    new-array v12, v12, [I

    iput-object v12, v11, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 325
    :cond_0
    :goto_0
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    move v6, v11

    .line 326
    .local v6, "hash":I
    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 327
    .local v7, "mask":I
    move v11, v6

    move v12, v7

    and-int/2addr v11, v12

    move v8, v11

    .line 329
    .local v8, "index":I
    move v11, v6

    const/4 v12, -0x1

    xor-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    or-int/lit8 v11, v11, 0x1

    move v9, v11

    .line 332
    .local v9, "step":I
    :goto_1
    move-object v11, v4

    move v12, v8

    aget-object v11, v11, v12

    move-object v10, v11

    .line 333
    .local v10, "oldName":Ljava/lang/String;
    move-object v11, v10

    if-nez v11, :cond_4

    .line 335
    move-object v11, v4

    move v12, v8

    move-object v13, v1

    aput-object v13, v11, v12

    .line 336
    move-object v11, v5

    move v12, v8

    move v13, v2

    aput v13, v11, v12

    .line 337
    .line 346
    move-object v11, v0

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    iget v12, v12, Lgnu/xml/NodeTree;->idCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lgnu/xml/NodeTree;->idCount:I

    .line 347
    :goto_2
    return-void

    .line 310
    .end local v3    # "size":I
    .end local v6    # "hash":I
    .end local v7    # "mask":I
    .end local v8    # "index":I
    .end local v9    # "step":I
    .end local v10    # "oldName":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x4

    move-object v12, v0

    iget v12, v12, Lgnu/xml/NodeTree;->idCount:I

    mul-int/2addr v11, v12

    const/4 v12, 0x3

    move-object v13, v0

    iget-object v13, v13, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v13, v13

    move v15, v13

    move v13, v15

    move v14, v15

    move v3, v14

    .restart local v3    # "size":I
    mul-int/2addr v12, v13

    if-lt v11, v12, :cond_0

    .line 312
    move-object v11, v0

    const/4 v12, 0x2

    move v13, v3

    mul-int/2addr v12, v13

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, v11, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 313
    move-object v11, v0

    const/4 v12, 0x2

    move v13, v3

    mul-int/2addr v12, v13

    new-array v12, v12, [I

    iput-object v12, v11, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 314
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/xml/NodeTree;->idCount:I

    .line 315
    move v11, v3

    move v6, v11

    .local v6, "i":I
    :goto_3
    add-int/lit8 v6, v6, -0x1

    move v11, v6

    if-ltz v11, :cond_3

    .line 317
    move-object v11, v4

    move v12, v6

    aget-object v11, v11, v12

    move-object v7, v11

    .line 318
    .local v7, "oldName":Ljava/lang/String;
    move-object v11, v7

    if-eqz v11, :cond_2

    .line 319
    move-object v11, v0

    move-object v12, v7

    move-object v13, v5

    move v14, v6

    aget v13, v13, v14

    invoke-virtual {v11, v12, v13}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    .line 320
    :cond_2
    goto :goto_3

    .line 321
    .end local v7    # "oldName":Ljava/lang/String;
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    move-object v4, v11

    .line 322
    move-object v11, v0

    iget-object v11, v11, Lgnu/xml/NodeTree;->idOffsets:[I

    move-object v5, v11

    .line 323
    const/4 v11, 0x2

    move v12, v3

    mul-int/2addr v11, v12

    move v3, v11

    goto/16 :goto_0

    .line 339
    .local v6, "hash":I
    .local v7, "mask":I
    .restart local v8    # "index":I
    .restart local v9    # "step":I
    .restart local v10    # "oldName":Ljava/lang/String;
    :cond_4
    move-object v11, v10

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 342
    goto :goto_2

    .line 344
    :cond_5
    move v11, v8

    move v12, v9

    add-int/2addr v11, v12

    move v12, v7

    and-int/2addr v11, v12

    move v8, v11

    .line 345
    goto :goto_1
.end method

.method public getAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "parent":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/xml/NodeTree;
    return v0

    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public getAttributeI(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "parent":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v5

    move v4, v5

    .line 166
    .local v4, "attr":I
    :goto_0
    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_1

    .line 167
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 170
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_1
    return v0

    .line 168
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    if-ne v5, v6, :cond_4

    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    if-ne v5, v6, :cond_4

    .line 170
    :cond_3
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 171
    :cond_4
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v5

    move v4, v5

    goto :goto_0
.end method

.method public getId()I
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object v1, v0

    iget v1, v1, Lgnu/xml/NodeTree;->id:I

    if-nez v1, :cond_0

    .line 43
    move-object v1, v0

    sget v2, Lgnu/xml/NodeTree;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v4

    move v3, v4

    sput v3, Lgnu/xml/NodeTree;->counter:I

    iput v2, v1, Lgnu/xml/NodeTree;->id:I

    .line 44
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/xml/NodeTree;->id:I

    move v0, v1

    .end local v0    # "this":Lgnu/xml/NodeTree;
    return v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xml/NodeTree;
    return-object v0
.end method

.method public lookupID(Ljava/lang/String;)I
    .locals 12

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    move-object v2, v10

    .line 358
    .local v2, "tmpNames":[Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lgnu/xml/NodeTree;->idOffsets:[I

    move-object v3, v10

    .line 359
    .local v3, "tmpOffsets":[I
    move-object v10, v0

    iget-object v10, v10, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v10, v10

    move v4, v10

    .line 360
    .local v4, "size":I
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    move v5, v10

    .line 361
    .local v5, "hash":I
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    .line 362
    .local v6, "mask":I
    move v10, v5

    move v11, v6

    and-int/2addr v10, v11

    move v7, v10

    .line 364
    .local v7, "index":I
    move v10, v5

    const/4 v11, -0x1

    xor-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    or-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 367
    .local v8, "step":I
    :goto_0
    move-object v10, v2

    move v11, v7

    aget-object v10, v10, v11

    move-object v9, v10

    .line 368
    .local v9, "oldName":Ljava/lang/String;
    move-object v10, v9

    if-nez v10, :cond_0

    .line 369
    const/4 v10, -0x1

    move v0, v10

    .line 372
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_1
    return v0

    .line 370
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 372
    move-object v10, v3

    move v11, v7

    aget v10, v10, v11

    move v0, v10

    goto :goto_1

    .line 374
    :cond_1
    move v10, v7

    move v11, v8

    add-int/2addr v10, v11

    move v11, v6

    and-int/2addr v10, v11

    move v7, v10

    .line 375
    goto :goto_0
.end method

.method public makeIDtableIfNeeded()V
    .locals 10

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 276
    .line 297
    :goto_0
    return-void

    .line 279
    :cond_0
    const/16 v5, 0x40

    move v1, v5

    .line 280
    .local v1, "size":I
    move-object v5, v0

    move v6, v1

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 281
    move-object v5, v0

    move v6, v1

    new-array v6, v6, [I

    iput-object v6, v5, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 282
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/NodeTree;->endPos()I

    move-result v5

    move v2, v5

    .line 283
    .local v2, "limit":I
    const/4 v5, 0x0

    move v3, v5

    .line 286
    .local v3, "ipos":I
    :goto_1
    move-object v5, v0

    move v6, v3

    sget-object v7, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    move v8, v2

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v5

    move v3, v5

    .line 287
    move v5, v3

    if-nez v5, :cond_1

    .line 288
    .line 297
    goto :goto_0

    .line 291
    :cond_1
    move-object v5, v0

    move v6, v3

    const-string/jumbo v7, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v8, "id"

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 292
    .local v4, "attr":I
    move v5, v4

    if-eqz v5, :cond_2

    .line 294
    move-object v5, v0

    move-object v6, v0

    move v7, v4

    invoke-static {v6, v7}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    .line 296
    :cond_2
    goto :goto_1
.end method

.method public nextPos(I)I
    .locals 8

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "position":I
    move v5, v1

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 22
    .local v2, "isAfter":Z
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    move v3, v5

    .line 23
    .local v3, "index":I
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    invoke-virtual {v5, v6, v7}, Lgnu/xml/NodeTree;->nextNodeIndex(II)I

    move-result v5

    move v4, v5

    .line 24
    .local v4, "next":I
    move v5, v4

    move v6, v3

    if-eq v5, v6, :cond_1

    .line 25
    move v5, v4

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v0, v5

    .line 28
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_1
    return v0

    .line 21
    .end local v2    # "isAfter":Z
    .end local v3    # "index":I
    .end local v4    # "next":I
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 26
    .restart local v2    # "isAfter":Z
    .restart local v3    # "index":I
    .restart local v4    # "next":I
    :cond_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/NodeTree;->data:[C

    array-length v6, v6

    if-ne v5, v6, :cond_2

    .line 27
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 28
    :cond_2
    move v5, v3

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v0, v5

    goto :goto_1
.end method

.method public posFirstChild(I)I
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->gotoChildrenStart(I)I

    move-result v4

    move v2, v4

    .line 125
    .local v2, "index":I
    move v4, v2

    if-gez v4, :cond_0

    .line 126
    const/4 v4, -0x1

    move v0, v4

    .line 131
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return v0

    .line 127
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/NodeTree;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    move v3, v4

    .line 128
    .local v3, "datum":C
    move v4, v3

    const v5, 0xf10b

    if-eq v4, v5, :cond_1

    move v4, v3

    const v5, 0xf10c

    if-eq v4, v5, :cond_1

    move v4, v3

    const v5, 0xf111

    if-ne v4, v5, :cond_2

    .line 130
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 131
    :cond_2
    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public posHasAttributes(I)Z
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->gotoAttributesStart(I)I

    move-result v3

    move v2, v3

    .line 137
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    .line 138
    const/4 v3, 0x0

    move v0, v3

    .line 139
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move v3, v2

    if-ltz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NodeTree;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf109

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public posIsDefaultNamespace(ILjava/lang/String;)Z
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "posIsDefaultNamespace not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public posLocalName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 93
    .local v2, "type":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/xml/XName;

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v2

    check-cast v3, Lgnu/xml/XName;

    invoke-virtual {v3}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 97
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return-object v0

    .line 95
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 96
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 97
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v5

    move v3, v5

    .line 108
    .local v3, "kind":I
    move v5, v3

    const/16 v6, 0x21

    if-eq v5, v6, :cond_0

    .line 109
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "argument must be an element"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 111
    .local v4, "type":Ljava/lang/Object;
    move-object v5, v4

    instance-of v5, v5, Lgnu/xml/XName;

    if-eqz v5, :cond_1

    .line 112
    move-object v5, v4

    check-cast v5, Lgnu/xml/XName;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/xml/XName;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 114
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "posLookupPrefix not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public posNamespaceURI(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "type":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/xml/XName;

    if-eqz v3, :cond_0

    .line 75
    move-object v3, v2

    check-cast v3, Lgnu/xml/XName;

    invoke-virtual {v3}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 78
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 77
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 78
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public posPrefix(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 84
    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 85
    const/4 v4, 0x0

    move-object v0, v4

    .line 87
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v4, v2

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v4

    .line 87
    .local v3, "colon":I
    move v4, v3

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public posTarget(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    move v2, v3

    .line 193
    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NodeTree;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf114

    if-eq v3, v4, :cond_0

    .line 194
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "expected process-instruction"

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .end local v0    # "this":Lgnu/xml/NodeTree;
    return-object v0
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move-object v1, p1

    .local v1, "other":Lgnu/lists/AbstractSequence;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 50
    const/4 v5, 0x0

    move v0, v5

    .line 63
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return v0

    .line 56
    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/lists/TreeList;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v5

    move v2, v5

    .line 57
    .local v2, "comp":I
    move v5, v2

    if-nez v5, :cond_1

    move-object v5, v1

    instance-of v5, v5, Lgnu/xml/NodeTree;

    if-eqz v5, :cond_1

    .line 59
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/NodeTree;->getId()I

    move-result v5

    move v3, v5

    .line 60
    .local v3, "id1":I
    move-object v5, v1

    check-cast v5, Lgnu/xml/NodeTree;

    invoke-virtual {v5}, Lgnu/xml/NodeTree;->getId()I

    move-result v5

    move v4, v5

    .line 61
    .local v4, "id2":I
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    const/4 v5, -0x1

    :goto_1
    move v2, v5

    .line 63
    .end local v3    # "id1":I
    .end local v4    # "id2":I
    :cond_1
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 61
    .restart local v3    # "id1":I
    .restart local v4    # "id2":I
    :cond_2
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    new-instance v3, Lgnu/mapping/CharArrayOutPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v1, v3

    .line 258
    .local v1, "wr":Lgnu/mapping/CharArrayOutPort;
    new-instance v3, Lgnu/xml/XMLPrinter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 259
    .local v2, "xp":Lgnu/xml/XMLPrinter;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/xml/NodeTree;->consume(Lgnu/lists/Consumer;)V

    .line 260
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 261
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xml/NodeTree;
    return-object v0
.end method

.method public typedValue(I)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    .line 180
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v5

    .line 181
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 182
    .local v3, "str":Ljava/lang/String;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v5

    move v4, v5

    .line 183
    .local v4, "kind":I
    move v5, v4

    const/16 v6, 0x25

    if-eq v5, v6, :cond_0

    move v5, v4

    const/16 v6, 0x24

    if-ne v5, v6, :cond_1

    .line 185
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .line 186
    .end local v0    # "this":Lgnu/xml/NodeTree;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/xml/NodeTree;
    :cond_1
    new-instance v5, Lgnu/kawa/xml/UntypedAtomic;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0
.end method
