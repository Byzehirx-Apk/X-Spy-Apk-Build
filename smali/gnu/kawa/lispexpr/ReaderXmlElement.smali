.class public Lgnu/kawa/lispexpr/ReaderXmlElement;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderXmlElement.java"


# static fields
.field static final DEFAULT_ELEMENT_NAMESPACE:Ljava/lang/String; = "[default-element-namespace]"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderXmlElement;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 544
    const/16 v3, 0x3f

    move v2, v3

    .line 545
    .local v2, "ch":C
    move-object v3, v1

    const-string/jumbo v4, "lt"

    if-ne v3, v4, :cond_0

    .line 546
    const/16 v3, 0x3c

    move v2, v3

    .line 557
    :goto_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 558
    return-void

    .line 547
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "gt"

    if-ne v3, v4, :cond_1

    .line 548
    const/16 v3, 0x3e

    move v2, v3

    goto :goto_0

    .line 549
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "amp"

    if-ne v3, v4, :cond_2

    .line 550
    const/16 v3, 0x26

    move v2, v3

    goto :goto_0

    .line 551
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "quot"

    if-ne v3, v4, :cond_3

    .line 552
    const/16 v3, 0x22

    move v2, v3

    goto :goto_0

    .line 553
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "apos"

    if-ne v3, v4, :cond_4

    .line 554
    const/16 v3, 0x27

    move v2, v3

    goto :goto_0

    .line 556
    :cond_4
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown enity reference: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static quote(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v3, "quote"

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v1, v2

    .line 25
    .local v1, "q":Lgnu/mapping/Symbol;
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method static readCharRef(Lgnu/kawa/lispexpr/LispReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    move v2, v6

    .line 470
    .local v2, "next":I
    move v6, v2

    const/16 v7, 0x78

    if-ne v6, v7, :cond_1

    .line 472
    const/16 v6, 0x10

    move v1, v6

    .line 473
    .local v1, "base":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    move v2, v6

    .line 477
    :goto_0
    const/4 v6, 0x0

    move v3, v6

    .line 478
    .local v3, "value":I
    :goto_1
    move v6, v2

    if-ltz v6, :cond_0

    .line 480
    move v6, v2

    int-to-char v6, v6

    move v4, v6

    .line 481
    .local v4, "ch":C
    move v6, v4

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    move v5, v6

    .line 482
    .local v5, "digit":I
    move v6, v5

    if-gez v6, :cond_2

    .line 483
    .line 490
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    :cond_0
    :goto_2
    move v6, v2

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_4

    .line 492
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 493
    move-object v6, v0

    const-string/jumbo v7, "invalid character reference"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 504
    :goto_3
    return-void

    .line 476
    .end local v1    # "base":I
    .end local v3    # "value":I
    :cond_1
    const/16 v6, 0xa

    move v1, v6

    .restart local v1    # "base":I
    goto :goto_0

    .line 484
    .restart local v3    # "value":I
    .restart local v4    # "ch":C
    .restart local v5    # "digit":I
    :cond_2
    move v6, v3

    const/high16 v7, 0x8000000

    if-lt v6, v7, :cond_3

    .line 485
    goto :goto_2

    .line 486
    :cond_3
    move v6, v3

    move v7, v1

    mul-int/2addr v6, v7

    move v3, v6

    .line 487
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    .line 488
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    move v2, v6

    .line 489
    goto :goto_1

    .line 496
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    :cond_4
    move v6, v3

    if-lez v6, :cond_5

    move v6, v3

    const v7, 0xd7ff

    if-le v6, v7, :cond_7

    :cond_5
    move v6, v3

    const v7, 0xe000

    if-lt v6, v7, :cond_6

    move v6, v3

    const v7, 0xfffd

    if-le v6, v7, :cond_7

    :cond_6
    move v6, v3

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_8

    move v6, v3

    const v7, 0x10ffff

    if-gt v6, v7, :cond_8

    .line 500
    :cond_7
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_3

    .line 503
    :cond_8
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid character value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 370
    move-object/from16 v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v1, p1

    .local v1, "delimiter":C
    move-object/from16 v2, p2

    .local v2, "resultTail":Lgnu/lists/Pair;
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 371
    const/4 v11, 0x0

    move v3, v11

    .line 374
    .local v3, "prevWasEnclosed":Z
    :goto_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 375
    .local v4, "item":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object v5, v11

    .line 376
    .local v5, "text":Ljava/lang/String;
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v6, v11

    .line 377
    .local v6, "line":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v11

    move v7, v11

    .line 378
    .local v7, "column":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v11

    move v8, v11

    .line 379
    .local v8, "next":I
    move v11, v8

    if-gez v11, :cond_2

    .line 381
    move-object v11, v0

    const-string/jumbo v12, "unexpected end-of-file"

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 382
    sget-object v11, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v4, v11

    .line 436
    .end local v4    # "item":Ljava/lang/Object;
    :goto_1
    move-object v11, v4

    if-eqz v11, :cond_0

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v11, :cond_0

    .line 438
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 439
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 441
    :cond_0
    move-object v11, v5

    if-eqz v11, :cond_1

    .line 445
    sget-object v11, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    move-object v12, v5

    invoke-static {v11, v12}, Lgnu/lists/Pair;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    move-object v9, v11

    .line 446
    .local v9, "tnode":Lgnu/lists/Pair;
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v11

    move-object v10, v11

    .line 448
    .local v10, "pair":Lgnu/lists/Pair;
    move-object v11, v2

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 449
    move-object v11, v10

    move-object v2, v11

    .line 451
    .end local v9    # "tnode":Lgnu/lists/Pair;
    .end local v10    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v11, v4

    sget-object v12, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v11, v12, :cond_12

    .line 452
    .line 461
    move-object v11, v2

    move-object v0, v11

    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    return-object v0

    .line 384
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_2
    move v11, v8

    move v12, v1

    if-ne v11, v12, :cond_7

    .line 386
    move v11, v1

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_5

    .line 388
    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v11, :cond_3

    .line 390
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 391
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 393
    :cond_3
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v11

    move v8, v11

    .line 394
    move v11, v8

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_4

    .line 395
    sget-object v11, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v4, v11

    .line 405
    .end local v4    # "item":Ljava/lang/Object;
    :goto_2
    const/4 v11, 0x0

    move v3, v11

    goto :goto_1

    .line 397
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_4
    move-object v11, v0

    move v12, v8

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    goto :goto_2

    .line 399
    :cond_5
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->checkNext(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 401
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_2

    .line 404
    :cond_6
    sget-object v11, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v4, v11

    goto :goto_2

    .line 407
    :cond_7
    move v11, v8

    const/16 v12, 0x26

    if-ne v11, v12, :cond_e

    .line 409
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v11

    move v8, v11

    .line 410
    move v11, v8

    const/16 v12, 0x23

    if-ne v11, v12, :cond_9

    .line 411
    move-object v11, v0

    invoke-static {v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readCharRef(Lgnu/kawa/lispexpr/LispReader;)V

    .line 425
    .end local v4    # "item":Ljava/lang/Object;
    :cond_8
    :goto_3
    const/4 v11, 0x1

    move v3, v11

    goto/16 :goto_1

    .line 412
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_9
    move v11, v8

    const/16 v12, 0x28

    if-eq v11, v12, :cond_a

    move v11, v8

    const/16 v12, 0x7b

    if-ne v11, v12, :cond_d

    .line 414
    :cond_a
    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-gtz v11, :cond_b

    move v11, v3

    if-eqz v11, :cond_c

    .line 415
    :cond_b
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 416
    :cond_c
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 417
    move-object v11, v0

    move v12, v8

    invoke-static {v11, v12}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    goto :goto_3

    .line 421
    :cond_d
    move-object v11, v0

    move v12, v8

    invoke-static {v11, v12}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 422
    move v11, v3

    if-eqz v11, :cond_8

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-nez v11, :cond_8

    .line 423
    const-string/jumbo v11, ""

    move-object v5, v11

    goto :goto_3

    .line 429
    :cond_e
    move v11, v1

    const/16 v12, 0x3c

    if-eq v11, v12, :cond_10

    move v11, v8

    const/16 v12, 0x9

    if-eq v11, v12, :cond_f

    move v11, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_f

    move v11, v8

    const/16 v12, 0xd

    if-ne v11, v12, :cond_10

    .line 431
    :cond_f
    const/16 v11, 0x20

    move v8, v11

    .line 432
    :cond_10
    move v11, v8

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_11

    .line 433
    move-object v11, v0

    const/16 v12, 0x65

    const-string/jumbo v13, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;)V

    .line 434
    :cond_11
    move-object v11, v0

    move v12, v8

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto/16 :goto_1

    .line 453
    .end local v4    # "item":Ljava/lang/Object;
    :cond_12
    move-object v11, v4

    if-eqz v11, :cond_13

    .line 455
    move-object v11, v4

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v6

    move v15, v7

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v11

    move-object v9, v11

    .line 457
    .local v9, "pair":Lgnu/lists/Pair;
    move-object v11, v2

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 458
    move-object v11, v9

    move-object v2, v11

    .line 460
    .end local v9    # "pair":Lgnu/lists/Pair;
    :cond_13
    goto/16 :goto_0
.end method

.method public static readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 238
    move-object/from16 v2, p0

    .local v2, "reader":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v3, p1

    .local v3, "ch":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v4, v21

    .line 239
    .local v4, "startLine":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v21

    const/16 v22, 0x2

    add-int/lit8 v21, v21, -0x2

    move/from16 v5, v21

    .line 240
    .local v5, "startColumn":I
    move-object/from16 v21, v2

    move/from16 v22, v3

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    .line 244
    .local v6, "tag":Ljava/lang/Object;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v7, v21

    .line 246
    .local v7, "startTag":Ljava/lang/String;
    move-object/from16 v21, v6

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-static/range {v21 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v21

    move-object/from16 v8, v21

    .line 249
    .local v8, "tagPair":Lgnu/lists/Pair;
    move-object/from16 v21, v8

    move-object/from16 v9, v21

    .line 250
    .local v9, "resultTail":Lgnu/lists/Pair;
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v10, v21

    .line 251
    .local v10, "namespaceList":Lgnu/lists/LList;
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 254
    .local v11, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_1
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 255
    .local v12, "sawSpace":Z
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v21

    move/from16 v3, v21

    .line 256
    :goto_2
    move/from16 v21, v3

    if-ltz v21, :cond_1

    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 258
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v21

    move/from16 v3, v21

    .line 259
    const/16 v21, 0x1

    move/from16 v12, v21

    goto :goto_2

    .line 244
    .end local v7    # "startTag":Ljava/lang/String;
    .end local v8    # "tagPair":Lgnu/lists/Pair;
    .end local v9    # "resultTail":Lgnu/lists/Pair;
    .end local v10    # "namespaceList":Lgnu/lists/LList;
    .end local v11    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .end local v12    # "sawSpace":Z
    :cond_0
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v21

    goto :goto_0

    .line 261
    .restart local v7    # "startTag":Ljava/lang/String;
    .restart local v8    # "tagPair":Lgnu/lists/Pair;
    .restart local v9    # "resultTail":Lgnu/lists/Pair;
    .restart local v10    # "namespaceList":Lgnu/lists/LList;
    .restart local v11    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .restart local v12    # "sawSpace":Z
    :cond_1
    move/from16 v21, v3

    if-ltz v21, :cond_2

    move/from16 v21, v3

    const/16 v22, 0x3e

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move/from16 v21, v3

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 262
    .line 314
    :cond_2
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 315
    .local v12, "empty":Z
    move/from16 v21, v3

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 317
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v21

    move/from16 v3, v21

    .line 318
    move/from16 v21, v3

    const/16 v22, 0x3e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 319
    const/16 v21, 0x1

    move/from16 v12, v21

    .line 323
    :cond_3
    :goto_3
    move/from16 v21, v12

    if-nez v21, :cond_10

    .line 325
    move/from16 v21, v3

    const/16 v22, 0x3e

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 327
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'>\' after start element"

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 328
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v2, v21

    .line 357
    .end local v2    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :goto_4
    return-object v2

    .line 263
    .restart local v2    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .local v12, "sawSpace":Z
    :cond_4
    move/from16 v21, v12

    if-nez v21, :cond_5

    .line 264
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing space before attribute"

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 265
    :cond_5
    move-object/from16 v21, v2

    move/from16 v22, v3

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    .line 266
    .local v13, "attrName":Ljava/lang/Object;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v14, v21

    .line 267
    .local v14, "line":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 268
    .local v15, "column":I
    const/16 v21, 0x0

    move-object/from16 v16, v21

    .line 269
    .local v16, "definingNamespace":Ljava/lang/String;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-char v21, v21, v22

    const/16 v22, 0x78

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-char v21, v21, v22

    const/16 v22, 0x6d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-char v21, v21, v22

    const/16 v22, 0x6c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-char v21, v21, v22

    const/16 v22, 0x6e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-char v21, v21, v22

    const/16 v22, 0x73

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 276
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 277
    const-string/jumbo v21, ""

    move-object/from16 v16, v21

    .line 282
    :cond_6
    :goto_5
    move-object/from16 v21, v2

    const/16 v22, 0x20

    invoke-static/range {v21 .. v22}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v21

    move/from16 v3, v21

    .line 283
    move/from16 v21, v3

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 285
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'=\' after attribute"

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 287
    :cond_7
    move-object/from16 v21, v2

    const/16 v22, 0x20

    invoke-static/range {v21 .. v22}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v21

    move/from16 v3, v21

    .line 288
    sget-object v21, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-static/range {v21 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v21

    move-object/from16 v17, v21

    .line 291
    .local v17, "attrList":Lgnu/lists/PairWithPosition;
    move-object/from16 v21, v17

    move-object/from16 v18, v21

    .line 292
    .local v18, "attrTail":Lgnu/lists/Pair;
    move-object/from16 v21, v13

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-static/range {v21 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v21

    move-object/from16 v19, v21

    .line 295
    .local v19, "attrPair":Lgnu/lists/PairWithPosition;
    move-object/from16 v21, v2

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    move-object/from16 v21, v19

    move-object/from16 v18, v21

    .line 297
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v18

    invoke-static/range {v21 .. v23}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    move-result-object v21

    move-object/from16 v18, v21

    .line 298
    move-object/from16 v21, v16

    if-eqz v21, :cond_9

    .line 301
    new-instance v21, Lgnu/lists/PairWithPosition;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v19

    move-object/from16 v24, v16

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v24

    move-object/from16 v25, v10

    invoke-direct/range {v22 .. v25}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v10, v21

    .line 313
    :goto_6
    goto/16 :goto_1

    .line 278
    .end local v17    # "attrList":Lgnu/lists/PairWithPosition;
    .end local v18    # "attrTail":Lgnu/lists/Pair;
    .end local v19    # "attrPair":Lgnu/lists/PairWithPosition;
    :cond_8
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget-char v21, v21, v22

    const/16 v22, 0x3a

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 279
    new-instance v21, Ljava/lang/String;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v25, v0

    const/16 v26, 0x6

    add-int/lit8 v25, v25, -0x6

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v16, v21

    goto/16 :goto_5

    .line 307
    .restart local v17    # "attrList":Lgnu/lists/PairWithPosition;
    .restart local v18    # "attrTail":Lgnu/lists/Pair;
    .restart local v19    # "attrPair":Lgnu/lists/PairWithPosition;
    :cond_9
    move-object/from16 v21, v17

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-static/range {v21 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v21

    move-object/from16 v20, v21

    .line 309
    .local v20, "pair":Lgnu/lists/Pair;
    move-object/from16 v21, v9

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 310
    move-object/from16 v21, v20

    move-object/from16 v9, v21

    goto :goto_6

    .line 321
    .end local v13    # "attrName":Ljava/lang/Object;
    .end local v14    # "line":I
    .end local v15    # "column":I
    .end local v16    # "definingNamespace":Ljava/lang/String;
    .end local v17    # "attrList":Lgnu/lists/PairWithPosition;
    .end local v18    # "attrTail":Lgnu/lists/Pair;
    .end local v19    # "attrPair":Lgnu/lists/PairWithPosition;
    .end local v20    # "pair":Lgnu/lists/Pair;
    .local v12, "empty":Z
    :cond_a
    move-object/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto/16 :goto_3

    .line 330
    :cond_b
    move-object/from16 v21, v2

    const/16 v22, 0x3c

    move-object/from16 v23, v9

    invoke-static/range {v21 .. v23}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    move-result-object v21

    move-object/from16 v9, v21

    .line 331
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v21

    move/from16 v3, v21

    .line 332
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 334
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 337
    :cond_c
    move-object/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 338
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v21

    move/from16 v3, v21

    .line 339
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v21

    if-nez v21, :cond_c

    move/from16 v21, v3

    const/16 v22, 0x3a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 340
    .line 342
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 343
    .local v13, "endTag":Ljava/lang/String;
    move-object/from16 v21, v7

    if-eqz v21, :cond_d

    move-object/from16 v21, v13

    move-object/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 344
    :cond_d
    move-object/from16 v21, v2

    const/16 v22, 0x65

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v24

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v26, v7

    if-nez v26, :cond_11

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v28, v26

    move-object/from16 v26, v28

    move-object/from16 v27, v28

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "computed start tag closed by \'</"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ">\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_7
    invoke-virtual/range {v21 .. v26}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 350
    :cond_e
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 352
    .end local v13    # "endTag":Ljava/lang/String;
    :cond_f
    move-object/from16 v21, v2

    move/from16 v22, v3

    invoke-static/range {v21 .. v22}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v21

    move/from16 v3, v21

    .line 353
    move/from16 v21, v3

    const/16 v22, 0x3e

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 354
    move-object/from16 v21, v2

    const-string/jumbo v22, "missing \'>\' after end element"

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 356
    :cond_10
    move-object/from16 v21, v10

    invoke-static/range {v21 .. v21}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v21

    move-object/from16 v10, v21

    .line 357
    sget-object v21, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    move-object/from16 v22, v10

    move-object/from16 v23, v8

    invoke-static/range {v22 .. v23}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-static/range {v21 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_4

    .line 344
    .restart local v13    # "endTag":Ljava/lang/String;
    :cond_11
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v28, v26

    move-object/from16 v26, v28

    move-object/from16 v27, v28

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "\'<"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v7

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ">\' closed by \'</"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ">\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_7
.end method

.method static readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "next":I
    const-string/jumbo v5, "?"

    move-object v2, v5

    .line 515
    .local v2, "result":Ljava/lang/String;
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v3, v5

    .line 516
    .local v3, "saveLength":I
    :goto_0
    move v5, v1

    if-ltz v5, :cond_0

    .line 518
    move v5, v1

    int-to-char v5, v5

    move v4, v5

    .line 519
    .local v4, "ch":C
    move v5, v4

    invoke-static {v5}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 520
    .line 524
    .end local v4    # "ch":C
    :cond_0
    move v5, v1

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_2

    .line 526
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 527
    move-object v5, v0

    const-string/jumbo v6, "invalid entity reference"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 538
    .end local v2    # "result":Ljava/lang/String;
    :goto_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    return-object v0

    .line 521
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v4    # "ch":C
    :cond_1
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 522
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 523
    goto :goto_0

    .line 531
    .end local v4    # "ch":C
    :cond_2
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v10, v3

    sub-int/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v5

    .line 533
    .local v4, "ref":Ljava/lang/String;
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 534
    move-object v5, v0

    move-object v6, v4

    invoke-static {v5, v6}, Lgnu/kawa/lispexpr/ReaderXmlElement;->namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V

    .line 535
    const/4 v5, 0x0

    move-object v2, v5

    .local v2, "result":Ljava/lang/Object;
    goto :goto_1
.end method

.method static readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 91
    move-object/from16 v2, p0

    .local v2, "reader":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v3, p1

    .local v3, "ch":I
    move/from16 v18, v3

    const/16 v19, 0x28

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 93
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 94
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    .line 137
    .end local v2    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return-object v2

    .line 98
    .restart local v2    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v18

    move-object/from16 v4, v18

    .line 99
    .local v4, "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v18, v2

    const/16 v19, 0x7b

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v18

    move/from16 v5, v18

    .line 100
    .local v5, "saveReadState":C
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v18

    move/from16 v6, v18

    .line 101
    .local v6, "startLine":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v18

    move/from16 v7, v18

    .line 104
    .local v7, "startColumn":I
    :try_start_0
    new-instance v18, Lgnu/expr/PrimProcedure;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    sget-object v20, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v21, "values"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    move-object/from16 v8, v18

    .line 106
    .local v8, "valuesMake":Lgnu/expr/PrimProcedure;
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v18

    move-object/from16 v9, v18

    .line 107
    .local v9, "list":Lgnu/lists/Pair;
    move-object/from16 v18, v9

    move-object/from16 v10, v18

    .line 108
    .local v10, "last":Lgnu/lists/Pair;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v18

    move-object/from16 v11, v18

    .line 111
    .local v11, "readTable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_1
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v18

    move/from16 v12, v18

    .line 112
    .local v12, "line":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v18

    move/from16 v13, v18

    .line 113
    .local v13, "column":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/text/LineBufferedReader;->read()I

    move-result v18

    move/from16 v3, v18

    .line 114
    move/from16 v18, v3

    const/16 v19, 0x7d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 115
    .line 129
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 131
    move-object/from16 v18, v10

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 132
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    move-object/from16 v12, v18

    .line 137
    .end local v12    # "line":I
    move-object/from16 v18, v2

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object/from16 v18, v12

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 116
    .restart local v12    # "line":I
    :cond_1
    move/from16 v18, v3

    if-gez v18, :cond_2

    .line 117
    move-object/from16 v18, v2

    :try_start_1
    const-string/jumbo v19, "unexpected EOF in list starting here"

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v7

    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 119
    :cond_2
    move-object/from16 v18, v11

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v18

    move-object/from16 v14, v18

    .line 120
    .local v14, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v14

    move-object/from16 v21, v11

    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    .line 121
    .local v15, "value":Ljava/lang/Object;
    move-object/from16 v18, v15

    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 122
    goto/16 :goto_1

    .line 123
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-virtual/range {v18 .. v22}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    .line 125
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v18

    move-object/from16 v16, v18

    .line 126
    .local v16, "pair":Lgnu/lists/Pair;
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    move-object/from16 v18, v16

    move-object/from16 v10, v18

    .line 128
    goto/16 :goto_1

    .line 133
    .end local v14    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v15    # "value":Ljava/lang/Object;
    .end local v16    # "pair":Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v18, v9

    move-object/from16 v12, v18

    .line 137
    .end local v12    # "line":I
    move-object/from16 v18, v2

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object/from16 v18, v12

    move-object/from16 v2, v18

    goto/16 :goto_0

    .end local v8    # "valuesMake":Lgnu/expr/PrimProcedure;
    .end local v9    # "list":Lgnu/lists/Pair;
    .end local v10    # "last":Lgnu/lists/Pair;
    .end local v11    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v13    # "column":I
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object/from16 v18, v17

    throw v18
.end method

.method public static readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v1, p1

    .local v1, "ch":I
    move/from16 v2, p2

    .local v2, "forElement":Z
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 39
    .local v3, "file":Ljava/lang/String;
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v4, v11

    .line 40
    .local v4, "line":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v11

    move v5, v11

    .line 41
    .local v5, "column":I
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 42
    move v11, v1

    invoke-static {v11}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 44
    const/4 v11, -0x1

    move v6, v11

    .line 47
    .local v6, "colon":I
    :cond_0
    :goto_0
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 48
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v11

    move v1, v11

    .line 49
    move v11, v1

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_1

    move v11, v6

    if-gez v11, :cond_1

    .line 50
    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v6, v11

    goto :goto_0

    .line 51
    :cond_1
    move v11, v1

    invoke-static {v11}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 53
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 54
    .line 57
    move v11, v6

    if-gez v11, :cond_2

    move v11, v2

    if-eqz v11, :cond_4

    .line 59
    :cond_2
    move-object v11, v0

    iget v11, v11, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v12, v6

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 60
    .local v7, "llen":I
    new-instance v11, Ljava/lang/String;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v7

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 62
    .local v8, "local":Ljava/lang/String;
    move v11, v6

    if-gez v11, :cond_3

    const-string/jumbo v11, "[default-element-namespace]"

    :goto_1
    move-object v9, v11

    .line 64
    .local v9, "prefix":Ljava/lang/String;
    sget-object v11, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v10, v11

    .line 66
    .local v10, "psym":Lgnu/mapping/Symbol;
    new-instance v11, Lgnu/lists/Pair;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    sget-object v13, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    move-object v14, v10

    new-instance v15, Lgnu/lists/Pair;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v8

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v16 .. v18}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-static/range {v14 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v11

    .line 84
    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .end local v6    # "colon":I
    .end local v7    # "llen":I
    .end local v8    # "local":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "psym":Lgnu/mapping/Symbol;
    :goto_2
    return-object v0

    .line 62
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .restart local v6    # "colon":I
    .restart local v7    # "llen":I
    .restart local v8    # "local":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/String;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v14, 0x0

    move v15, v6

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 73
    .end local v7    # "llen":I
    .end local v8    # "local":Ljava/lang/String;
    :cond_4
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v7, v11

    .line 74
    .local v7, "symbol":Lgnu/mapping/Symbol;
    move-object v11, v7

    invoke-static {v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->quote(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    move-object v0, v11

    goto :goto_2

    .line 77
    .end local v6    # "colon":I
    .end local v7    # "symbol":Lgnu/mapping/Symbol;
    :cond_5
    move v11, v1

    const/16 v12, 0x7b

    if-eq v11, v12, :cond_6

    move v11, v1

    const/16 v12, 0x28

    if-ne v11, v12, :cond_7

    .line 79
    :cond_6
    move-object v11, v0

    move v12, v1

    invoke-static {v11, v12}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    goto :goto_2

    .line 83
    :cond_7
    move-object v11, v0

    const-string/jumbo v12, "missing element name"

    invoke-virtual {v11, v12}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 84
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_2
.end method

.method static readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v1, p1

    .local v1, "next":I
    move/from16 v2, p2

    .local v2, "inElementContent":Z
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v4, v10

    .line 151
    .local v4, "startLine":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    move v5, v10

    .line 152
    .local v5, "startColumn":I
    move v10, v1

    const/16 v11, 0x21

    if-ne v10, v11, :cond_5

    .line 154
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move v1, v10

    .line 155
    move v10, v1

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1

    .line 157
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 158
    move-object v10, v0

    const-string/jumbo v11, "-->"

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 159
    move-object v10, v0

    const/16 v11, 0x66

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    move v13, v4

    move v14, v5

    const-string/jumbo v15, "unexpected end-of-file in XML comment starting here - expected \"-->\""

    invoke-virtual/range {v10 .. v15}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 160
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 161
    .local v6, "str":Ljava/lang/String;
    sget-object v10, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    move-object v11, v6

    invoke-static {v10, v11}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    move-object v3, v10

    .line 227
    .end local v6    # "str":Ljava/lang/String;
    :goto_0
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    return-object v0

    .line 163
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    move v10, v1

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x43

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x44

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x41

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x54

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x41

    if-ne v10, v11, :cond_3

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v1, v11

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_3

    .line 171
    move-object v10, v0

    const-string/jumbo v11, "]]>"

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 172
    move-object v10, v0

    const/16 v11, 0x66

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    move v13, v4

    move v14, v5

    const-string/jumbo v15, "unexpected end-of-file in CDATA starting here - expected \"]]>\""

    invoke-virtual/range {v10 .. v15}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 175
    .restart local v6    # "str":Ljava/lang/String;
    sget-object v10, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    move-object v11, v6

    invoke-static {v10, v11}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    move-object v3, v10

    .line 176
    .local v3, "exp":Lgnu/lists/Pair;
    goto/16 :goto_0

    .line 179
    .end local v3    # "exp":Lgnu/lists/Pair;
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    move-object v10, v0

    const/16 v11, 0x66

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    move v13, v4

    move v14, v5

    const-string/jumbo v15, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    invoke-virtual/range {v10 .. v15}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 182
    :goto_1
    move v10, v1

    if-ltz v10, :cond_4

    move v10, v1

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_4

    move v10, v1

    const/16 v11, 0xa

    if-eq v10, v11, :cond_4

    move v10, v1

    const/16 v11, 0xd

    if-eq v10, v11, :cond_4

    .line 184
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move v1, v10

    goto :goto_1

    .line 186
    :cond_4
    const/4 v10, 0x0

    move-object v3, v10

    .local v3, "exp":Ljava/lang/Object;
    goto/16 :goto_0

    .line 189
    .end local v3    # "exp":Ljava/lang/Object;
    :cond_5
    move v10, v1

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_b

    .line 191
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v10

    move v1, v10

    .line 192
    move v10, v1

    if-ltz v10, :cond_6

    move v10, v1

    invoke-static {v10}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 193
    :cond_6
    move-object v10, v0

    const-string/jumbo v11, "missing target after \'<?\'"

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 196
    :cond_7
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 197
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v10

    move v1, v10

    .line 198
    move v10, v1

    invoke-static {v10}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 199
    .line 201
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 202
    .local v6, "target":Ljava/lang/String;
    const/4 v10, 0x0

    move v7, v10

    .line 203
    .local v7, "nspaces":I
    :goto_2
    move v10, v1

    if-ltz v10, :cond_8

    move v10, v1

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 205
    add-int/lit8 v7, v7, 0x1

    .line 206
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    move v1, v10

    goto :goto_2

    .line 208
    :cond_8
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 209
    move-object v10, v0

    const/16 v11, 0x3f

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v10

    move v8, v10

    .line 212
    .local v8, "saveReadState":C
    move-object v10, v0

    :try_start_0
    const-string/jumbo v11, "?>"

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 213
    move-object v10, v0

    const/16 v11, 0x66

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    move v13, v4

    move v14, v5

    const-string/jumbo v15, "unexpected end-of-file looking for \"?>\""

    invoke-virtual/range {v10 .. v15}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_9
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    .line 219
    .line 220
    move v10, v7

    if-nez v10, :cond_a

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v10, :cond_a

    .line 221
    move-object v10, v0

    const-string/jumbo v11, "target must be followed by space or \'?>\'"

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 222
    :cond_a
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 223
    .local v9, "content":Ljava/lang/String;
    sget-object v10, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    move-object v11, v6

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    move-object v3, v10

    .line 224
    .local v3, "exp":Lgnu/lists/Pair;
    goto/16 :goto_0

    .line 218
    .end local v3    # "exp":Lgnu/lists/Pair;
    .end local v9    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object v10, v9

    throw v10

    .line 226
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "nspaces":I
    .end local v8    # "saveReadState":C
    :cond_b
    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .local v3, "exp":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method static skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "ch":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 567
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    return v0

    .line 568
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v2

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderXmlElement;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    move-object v5, v1

    check-cast v5, Lgnu/kawa/lispexpr/LispReader;

    move-object v4, v5

    .line 19
    .local v4, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderXmlElement;
    return-object v0
.end method
