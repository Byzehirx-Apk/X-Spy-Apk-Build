.class public Lgnu/kawa/lispexpr/LispReader;
.super Lgnu/text/Lexer;
.source "LispReader.java"


# static fields
.field static final SCM_COMPLEX:I = 0x1

.field public static final SCM_NUMBERS:I = 0x1

.field public static final TOKEN_ESCAPE_CHAR:C = '\uffff'


# instance fields
.field protected seenEscapes:Z

.field sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/GeneralHashTable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 26
    return-void
.end method

.method static getReadCase()C
    .locals 5

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    const-string/jumbo v3, "symbol-read-case"

    const-string/jumbo v4, "P"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 75
    .local v1, "read_case_string":Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 76
    .local v0, "read_case":C
    move v2, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    .line 87
    .line 88
    .end local v1    # "read_case_string":Ljava/lang/String;
    :cond_0
    :goto_0
    move v2, v0

    move v0, v2

    .end local v0    # "read_case":C
    return v0

    .line 77
    .restart local v0    # "read_case":C
    .restart local v1    # "read_case_string":Ljava/lang/String;
    :cond_1
    move v2, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_2

    .line 78
    const/16 v2, 0x55

    move v0, v2

    goto :goto_0

    .line 79
    :cond_2
    move v2, v0

    const/16 v3, 0x64

    if-eq v2, v3, :cond_3

    move v2, v0

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_3

    move v2, v0

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_4

    .line 80
    :cond_3
    const/16 v2, 0x44

    move v0, v2

    goto :goto_0

    .line 81
    :cond_4
    move v2, v0

    const/16 v3, 0x69

    if-ne v2, v3, :cond_0

    .line 82
    const/16 v2, 0x49

    move v0, v2

    goto :goto_0

    .line 84
    .end local v0    # "read_case":C
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    .local v1, "ex":Ljava/lang/Exception;
    const/16 v2, 0x50

    move v0, v2

    .restart local v0    # "read_case":C
    goto :goto_0
.end method

.method private isPotentialNumber([CII)Z
    .locals 9

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    const/4 v7, 0x0

    move v4, v7

    .line 437
    .local v4, "sawDigits":I
    move v7, v2

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_7

    .line 439
    move-object v7, v1

    move v8, v5

    aget-char v7, v7, v8

    move v6, v7

    .line 440
    .local v6, "ch":C
    move v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 441
    add-int/lit8 v4, v4, 0x1

    .line 437
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    :cond_1
    move v7, v6

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_3

    .line 444
    :cond_2
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    if-ne v7, v8, :cond_0

    .line 445
    const/4 v7, 0x0

    move v0, v7

    .line 461
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    .end local v6    # "ch":C
    :goto_1
    return v0

    .line 447
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    .restart local v6    # "ch":C
    :cond_3
    move v7, v6

    const/16 v8, 0x23

    if-ne v7, v8, :cond_4

    .line 448
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 449
    :cond_4
    move v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v6

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_5

    move v7, v6

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_5

    move v7, v6

    const/16 v8, 0x5e

    if-ne v7, v8, :cond_6

    .line 455
    :cond_5
    move v7, v5

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 456
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 458
    :cond_6
    move v7, v6

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_0

    .line 459
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 461
    .end local v6    # "ch":C
    :cond_7
    move v7, v4

    if-lez v7, :cond_8

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public static parseNumber(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "radix":I
    move-object v4, v0

    instance-of v4, v4, Lgnu/lists/FString;

    if-eqz v4, :cond_0

    .line 476
    move-object v4, v0

    check-cast v4, Lgnu/lists/FString;

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v2, v4

    .line 479
    .local v2, "buf":[C
    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, v4

    .line 480
    .local v3, "len":I
    move-object v4, v2

    const/4 v5, 0x0

    move v6, v3

    const/4 v7, 0x0

    move v8, v1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0

    .line 478
    .end local v2    # "buf":[C
    .end local v3    # "len":I
    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "buf":[C
    goto :goto_0
.end method

.method public static parseNumber([CIICII)Ljava/lang/Object;
    .locals 40

    .prologue
    .line 498
    move-object/from16 v3, p0

    .local v3, "buffer":[C
    move/from16 v4, p1

    .local v4, "start":I
    move/from16 v5, p2

    .local v5, "count":I
    move/from16 v6, p3

    .local v6, "exactness":C
    move/from16 v7, p4

    .local v7, "radix":I
    move/from16 v8, p5

    .local v8, "flags":I
    move/from16 v32, v4

    move/from16 v33, v5

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 499
    .local v9, "end":I
    move/from16 v32, v4

    move/from16 v10, v32

    .line 500
    .local v10, "pos":I
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    .line 501
    const-string/jumbo v32, "no digits"

    move-object/from16 v3, v32

    .line 887
    .end local v3    # "buffer":[C
    :goto_0
    return-object v3

    .line 502
    .restart local v3    # "buffer":[C
    :cond_0
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 503
    .local v11, "ch":C
    :goto_1
    move/from16 v32, v11

    const/16 v33, 0x23

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 505
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_1

    .line 506
    const-string/jumbo v32, "no digits"

    move-object/from16 v3, v32

    goto :goto_0

    .line 507
    :cond_1
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 508
    move/from16 v32, v11

    sparse-switch v32, :sswitch_data_0

    .line 542
    const/16 v32, 0x0

    move/from16 v12, v32

    .line 545
    .local v12, "value":I
    :goto_2
    move/from16 v32, v11

    const/16 v33, 0xa

    invoke-static/range {v32 .. v33}, Ljava/lang/Character;->digit(CI)I

    move-result v32

    move/from16 v13, v32

    .line 546
    .local v13, "dig":I
    move/from16 v32, v13

    if-gez v32, :cond_9

    .line 547
    .line 553
    move/from16 v32, v11

    const/16 v33, 0x52

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    move/from16 v32, v11

    const/16 v33, 0x72

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 555
    :cond_2
    move/from16 v32, v7

    if-eqz v32, :cond_b

    .line 556
    const-string/jumbo v32, "duplicate radix specifier"

    move-object/from16 v3, v32

    goto :goto_0

    .line 511
    .end local v12    # "value":I
    .end local v13    # "dig":I
    :sswitch_0
    move/from16 v32, v7

    if-eqz v32, :cond_3

    .line 512
    const-string/jumbo v32, "duplicate radix specifier"

    move-object/from16 v3, v32

    goto :goto_0

    .line 513
    :cond_3
    const/16 v32, 0x2

    move/from16 v7, v32

    .line 564
    :goto_3
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    .line 565
    const-string/jumbo v32, "no digits"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 516
    :sswitch_1
    move/from16 v32, v7

    if-eqz v32, :cond_4

    .line 517
    const-string/jumbo v32, "duplicate radix specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 518
    :cond_4
    const/16 v32, 0x8

    move/from16 v7, v32

    .line 519
    goto :goto_3

    .line 521
    :sswitch_2
    move/from16 v32, v7

    if-eqz v32, :cond_5

    .line 522
    const-string/jumbo v32, "duplicate radix specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 523
    :cond_5
    const/16 v32, 0xa

    move/from16 v7, v32

    .line 524
    goto :goto_3

    .line 526
    :sswitch_3
    move/from16 v32, v7

    if-eqz v32, :cond_6

    .line 527
    const-string/jumbo v32, "duplicate radix specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 528
    :cond_6
    const/16 v32, 0x10

    move/from16 v7, v32

    .line 529
    goto :goto_3

    .line 532
    :sswitch_4
    move/from16 v32, v6

    if-eqz v32, :cond_8

    .line 534
    move/from16 v32, v6

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 535
    const-string/jumbo v32, "non-prefix exactness specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 537
    :cond_7
    const-string/jumbo v32, "duplicate exactness specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 539
    :cond_8
    move/from16 v32, v11

    move/from16 v6, v32

    .line 540
    goto :goto_3

    .line 548
    .restart local v12    # "value":I
    .restart local v13    # "dig":I
    :cond_9
    const/16 v32, 0xa

    move/from16 v33, v12

    mul-int v32, v32, v33

    move/from16 v33, v13

    add-int v32, v32, v33

    move/from16 v12, v32

    .line 549
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_a

    .line 550
    const-string/jumbo v32, "missing letter after \'#\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 551
    :cond_a
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 552
    goto/16 :goto_2

    .line 557
    :cond_b
    move/from16 v32, v12

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_c

    move/from16 v32, v12

    const/16 v33, 0x23

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_d

    .line 558
    :cond_c
    const-string/jumbo v32, "invalid radix specifier"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 559
    :cond_d
    move/from16 v32, v12

    move/from16 v7, v32

    .line 560
    goto/16 :goto_3

    .line 562
    :cond_e
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "unknown modifier \'#"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move/from16 v33, v11

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x27

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 566
    .end local v12    # "value":I
    .end local v13    # "dig":I
    :cond_f
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    goto/16 :goto_1

    .line 568
    :cond_10
    move/from16 v32, v6

    if-nez v32, :cond_11

    .line 569
    const/16 v32, 0x20

    move/from16 v6, v32

    .line 570
    :cond_11
    move/from16 v32, v7

    if-nez v32, :cond_13

    .line 572
    move/from16 v32, v5

    move/from16 v12, v32

    .line 574
    .local v12, "i":I
    :cond_12
    add-int/lit8 v12, v12, -0x1

    move/from16 v32, v12

    if-gez v32, :cond_15

    .line 578
    const/16 v32, 0xa

    move/from16 v7, v32

    .line 589
    .end local v12    # "i":I
    :cond_13
    :goto_4
    move/from16 v32, v11

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    const/16 v32, 0x1

    :goto_5
    move/from16 v12, v32

    .line 590
    .local v12, "negative":Z
    move/from16 v32, v12

    move/from16 v13, v32

    .line 591
    .local v13, "numeratorNegative":Z
    move/from16 v32, v11

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    move/from16 v32, v11

    const/16 v33, 0x2b

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    :cond_14
    const/16 v32, 0x1

    :goto_6
    move/from16 v14, v32

    .line 592
    .local v14, "sign_seen":Z
    move/from16 v32, v14

    if-eqz v32, :cond_19

    .line 594
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_18

    .line 595
    const-string/jumbo v32, "no digits following sign"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 581
    .end local v13    # "numeratorNegative":Z
    .end local v14    # "sign_seen":Z
    .local v12, "i":I
    :cond_15
    move-object/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v12

    add-int v33, v33, v34

    aget-char v32, v32, v33

    const/16 v33, 0x2e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 583
    const/16 v32, 0xa

    move/from16 v7, v32

    .line 584
    goto :goto_4

    .line 589
    .end local v12    # "i":I
    :cond_16
    const/16 v32, 0x0

    goto :goto_5

    .line 591
    .local v12, "negative":Z
    .restart local v13    # "numeratorNegative":Z
    :cond_17
    const/16 v32, 0x0

    goto :goto_6

    .line 596
    .restart local v14    # "sign_seen":Z
    :cond_18
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 600
    :cond_19
    move/from16 v32, v11

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1a

    move/from16 v32, v11

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    :cond_1a
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    move/from16 v32, v4

    move/from16 v33, v10

    const/16 v34, 0x2

    add-int/lit8 v33, v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    move/from16 v32, v8

    const/16 v33, 0x1

    and-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_20

    .line 603
    move-object/from16 v32, v3

    move/from16 v33, v4

    aget-char v32, v32, v33

    move/from16 v15, v32

    .line 604
    .local v15, "sign":C
    move/from16 v32, v15

    const/16 v33, 0x2b

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    move/from16 v32, v15

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    .line 605
    const-string/jumbo v32, "no digits"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 606
    :cond_1b
    move/from16 v32, v6

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1c

    move/from16 v32, v6

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 607
    :cond_1c
    new-instance v32, Lgnu/math/DComplex;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const-wide/16 v34, 0x0

    move/from16 v36, v12

    if-eqz v36, :cond_1d

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    :goto_7
    invoke-direct/range {v33 .. v37}, Lgnu/math/DComplex;-><init>(DD)V

    move-object/from16 v3, v32

    goto/16 :goto_0

    :cond_1d
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    .line 608
    :cond_1e
    move/from16 v32, v12

    if-eqz v32, :cond_1f

    invoke-static {}, Lgnu/math/Complex;->imMinusOne()Lgnu/math/CComplex;

    move-result-object v32

    :goto_8
    move-object/from16 v3, v32

    goto/16 :goto_0

    :cond_1f
    invoke-static {}, Lgnu/math/Complex;->imOne()Lgnu/math/CComplex;

    move-result-object v32

    goto :goto_8

    .line 611
    .end local v15    # "sign":C
    :cond_20
    move/from16 v32, v10

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v15, v32

    .line 612
    .local v15, "realStart":I
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 613
    .local v16, "hash_seen":Z
    const/16 v32, -0x1

    move/from16 v17, v32

    .line 614
    .local v17, "exp_seen":I
    const/16 v32, -0x1

    move/from16 v18, v32

    .line 615
    .local v18, "digits_start":I
    const/16 v32, -0x1

    move/from16 v19, v32

    .line 616
    .local v19, "decimal_point":I
    const/16 v32, 0x0

    move/from16 v20, v32

    .line 617
    .local v20, "copy_needed":Z
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 618
    .local v21, "underscore_seen":Z
    const/16 v32, 0x0

    move-object/from16 v22, v32

    .line 619
    .local v22, "numerator":Lgnu/math/IntNum;
    const-wide/16 v32, 0x0

    move-wide/from16 v23, v32

    .line 623
    .local v23, "lvalue":J
    :goto_9
    move/from16 v32, v11

    move/from16 v33, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Character;->digit(CI)I

    move-result v32

    move/from16 v25, v32

    .line 624
    .local v25, "digit":I
    move/from16 v32, v25

    if-ltz v32, :cond_25

    .line 626
    move/from16 v32, v16

    if-eqz v32, :cond_21

    move/from16 v32, v19

    if-gez v32, :cond_21

    .line 627
    const-string/jumbo v32, "digit after \'#\' in number"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 628
    :cond_21
    move/from16 v32, v18

    if-gez v32, :cond_22

    .line 629
    move/from16 v32, v10

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v18, v32

    .line 630
    :cond_22
    move/from16 v32, v7

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v23

    mul-long v32, v32, v34

    move/from16 v34, v25

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v23, v32

    .line 710
    :goto_a
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_36

    .line 711
    .line 715
    :cond_23
    :goto_b
    const/16 v32, 0x0

    move/from16 v25, v32

    .line 717
    .local v25, "infnan":C
    move/from16 v32, v18

    if-gez v32, :cond_39

    .line 719
    move/from16 v32, v14

    if-eqz v32, :cond_24

    move/from16 v32, v10

    const/16 v33, 0x4

    add-int/lit8 v32, v32, 0x4

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x3

    add-int/lit8 v33, v33, 0x3

    aget-char v32, v32, v33

    const/16 v33, 0x2e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x4

    add-int/lit8 v33, v33, 0x4

    aget-char v32, v32, v33

    const/16 v33, 0x30

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 722
    move-object/from16 v32, v3

    move/from16 v33, v10

    aget-char v32, v32, v33

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_37

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    aget-char v32, v32, v33

    const/16 v33, 0x6e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_37

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x2

    add-int/lit8 v33, v33, 0x2

    aget-char v32, v32, v33

    const/16 v33, 0x66

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_37

    .line 726
    const/16 v32, 0x69

    move/from16 v25, v32

    .line 735
    :cond_24
    :goto_c
    move/from16 v32, v25

    if-nez v32, :cond_38

    .line 736
    const-string/jumbo v32, "no digits"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 634
    .local v25, "digit":I
    :cond_25
    move/from16 v32, v11

    sparse-switch v32, :sswitch_data_1

    .line 706
    add-int/lit8 v10, v10, -0x1

    .line 707
    goto/16 :goto_b

    .line 651
    :sswitch_5
    move/from16 v32, v19

    if-ltz v32, :cond_26

    .line 652
    const-string/jumbo v32, "duplicate \'.\' in number"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 653
    :cond_26
    move/from16 v32, v7

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_27

    .line 654
    const-string/jumbo v32, "\'.\' in non-decimal number"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 655
    :cond_27
    move/from16 v32, v10

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v19, v32

    .line 656
    goto/16 :goto_a

    .line 659
    :sswitch_6
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_28

    move/from16 v32, v7

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_29

    .line 661
    :cond_28
    add-int/lit8 v10, v10, -0x1

    .line 662
    goto/16 :goto_b

    .line 664
    :cond_29
    move-object/from16 v32, v3

    move/from16 v33, v10

    aget-char v32, v32, v33

    move/from16 v26, v32

    .line 665
    .local v26, "next":C
    move/from16 v32, v10

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v27, v32

    .line 666
    .local v27, "exp_pos":I
    move/from16 v32, v26

    const/16 v33, 0x2b

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    move/from16 v32, v26

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2c

    .line 668
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2b

    move-object/from16 v32, v3

    move/from16 v33, v10

    aget-char v32, v32, v33

    const/16 v33, 0xa

    invoke-static/range {v32 .. v33}, Ljava/lang/Character;->digit(CI)I

    move-result v32

    if-gez v32, :cond_2d

    .line 670
    :cond_2b
    const-string/jumbo v32, "missing exponent digits"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 672
    :cond_2c
    move/from16 v32, v26

    const/16 v33, 0xa

    invoke-static/range {v32 .. v33}, Ljava/lang/Character;->digit(CI)I

    move-result v32

    if-gez v32, :cond_2d

    .line 674
    add-int/lit8 v10, v10, -0x1

    .line 675
    goto/16 :goto_b

    .line 677
    :cond_2d
    move/from16 v32, v17

    if-ltz v32, :cond_2e

    .line 678
    const-string/jumbo v32, "duplicate exponent"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 679
    :cond_2e
    move/from16 v32, v7

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2f

    .line 680
    const-string/jumbo v32, "exponent in non-decimal number"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 681
    :cond_2f
    move/from16 v32, v18

    if-gez v32, :cond_30

    .line 682
    const-string/jumbo v32, "mantissa with no digits"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 683
    :cond_30
    move/from16 v32, v27

    move/from16 v17, v32

    .line 686
    :cond_31
    add-int/lit8 v10, v10, 0x1

    .line 687
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_23

    move-object/from16 v32, v3

    move/from16 v33, v10

    aget-char v32, v32, v33

    const/16 v33, 0xa

    invoke-static/range {v32 .. v33}, Ljava/lang/Character;->digit(CI)I

    move-result v32

    if-gez v32, :cond_31

    .line 688
    goto/16 :goto_b

    .line 691
    .end local v26    # "next":C
    .end local v27    # "exp_pos":I
    :sswitch_7
    move-object/from16 v32, v22

    if-eqz v32, :cond_32

    .line 692
    const-string/jumbo v32, "multiple fraction symbol \'/\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 693
    :cond_32
    move/from16 v32, v18

    if-gez v32, :cond_33

    .line 694
    const-string/jumbo v32, "no digits before fraction symbol \'/\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 695
    :cond_33
    move/from16 v32, v17

    if-gez v32, :cond_34

    move/from16 v32, v19

    if-ltz v32, :cond_35

    .line 696
    :cond_34
    const-string/jumbo v32, "fraction symbol \'/\' following exponent or \'.\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 697
    :cond_35
    move-object/from16 v32, v3

    move/from16 v33, v18

    move/from16 v34, v10

    move/from16 v35, v18

    sub-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v12

    move-wide/from16 v37, v23

    invoke-static/range {v32 .. v38}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v32

    move-object/from16 v22, v32

    .line 699
    const/16 v32, -0x1

    move/from16 v18, v32

    .line 700
    const-wide/16 v32, 0x0

    move-wide/from16 v23, v32

    .line 701
    const/16 v32, 0x0

    move/from16 v12, v32

    .line 702
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 703
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 704
    goto/16 :goto_a

    .line 712
    :cond_36
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 713
    goto/16 :goto_9

    .line 728
    .local v25, "infnan":C
    :cond_37
    move-object/from16 v32, v3

    move/from16 v33, v10

    aget-char v32, v32, v33

    const/16 v33, 0x6e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    aget-char v32, v32, v33

    const/16 v33, 0x61

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x2

    add-int/lit8 v33, v33, 0x2

    aget-char v32, v32, v33

    const/16 v33, 0x6e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 732
    const/16 v32, 0x6e

    move/from16 v25, v32

    goto/16 :goto_c

    .line 737
    :cond_38
    add-int/lit8 v10, v10, 0x5

    .line 740
    :cond_39
    move/from16 v32, v16

    if-nez v32, :cond_3a

    move/from16 v32, v21

    if-eqz v32, :cond_3a

    .line 745
    :cond_3a
    move/from16 v32, v6

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3b

    move/from16 v32, v6

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3b

    move/from16 v32, v6

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3f

    move/from16 v32, v16

    if-eqz v32, :cond_3f

    :cond_3b
    const/16 v32, 0x1

    :goto_d
    move/from16 v26, v32

    .line 747
    .local v26, "inexact":Z
    const/16 v32, 0x0

    move-object/from16 v27, v32

    .line 748
    .local v27, "number":Lgnu/math/RealNum;
    const/16 v32, 0x0

    move/from16 v28, v32

    .line 749
    .local v28, "exp_char":C
    move/from16 v32, v25

    if-eqz v32, :cond_42

    .line 751
    const/16 v32, 0x1

    move/from16 v26, v32

    .line 752
    move/from16 v32, v25

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_40

    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_e
    move-wide/from16 v29, v32

    .line 753
    .local v29, "d":D
    new-instance v32, Lgnu/math/DFloNum;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move/from16 v34, v12

    if-eqz v34, :cond_41

    move-wide/from16 v34, v29

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v34, v0

    :goto_f
    invoke-direct/range {v33 .. v35}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v27, v32

    .line 807
    .end local v29    # "d":D
    :cond_3c
    :goto_10
    move/from16 v32, v6

    const/16 v33, 0x65

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3d

    move/from16 v32, v6

    const/16 v33, 0x45

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3e

    .line 808
    :cond_3d
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v32

    move-object/from16 v27, v32

    .line 810
    :cond_3e
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_5e

    .line 812
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    .line 814
    move/from16 v32, v11

    const/16 v33, 0x40

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_53

    .line 816
    move-object/from16 v32, v3

    move/from16 v33, v10

    move/from16 v34, v9

    move/from16 v35, v10

    sub-int v34, v34, v35

    move/from16 v35, v6

    const/16 v36, 0xa

    move/from16 v37, v8

    invoke-static/range {v32 .. v37}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v29, v32

    .line 818
    .local v29, "angle":Ljava/lang/Object;
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v32, v0

    if-eqz v32, :cond_50

    .line 819
    move-object/from16 v32, v29

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 745
    .end local v26    # "inexact":Z
    .end local v27    # "number":Lgnu/math/RealNum;
    .end local v28    # "exp_char":C
    .end local v29    # "angle":Ljava/lang/Object;
    :cond_3f
    const/16 v32, 0x0

    goto/16 :goto_d

    .line 752
    .restart local v26    # "inexact":Z
    .restart local v27    # "number":Lgnu/math/RealNum;
    .restart local v28    # "exp_char":C
    :cond_40
    const-wide/high16 v32, 0x7ff8000000000000L    # Double.NaN

    goto :goto_e

    .line 753
    .local v29, "d":D
    :cond_41
    move-wide/from16 v34, v29

    goto :goto_f

    .line 755
    .end local v29    # "d":D
    :cond_42
    move/from16 v32, v17

    if-gez v32, :cond_43

    move/from16 v32, v19

    if-ltz v32, :cond_48

    .line 757
    :cond_43
    move/from16 v32, v18

    move/from16 v33, v19

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_44

    move/from16 v32, v19

    if-ltz v32, :cond_44

    .line 758
    move/from16 v32, v19

    move/from16 v18, v32

    .line 759
    :cond_44
    move-object/from16 v32, v22

    if-eqz v32, :cond_45

    .line 760
    const-string/jumbo v32, "floating-point number after fraction symbol \'/\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 761
    :cond_45
    new-instance v32, Ljava/lang/String;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v3

    move/from16 v35, v18

    move/from16 v36, v10

    move/from16 v37, v18

    sub-int v36, v36, v37

    invoke-direct/range {v33 .. v36}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v29, v32

    .line 762
    .local v29, "str":Ljava/lang/String;
    move/from16 v32, v17

    if-ltz v32, :cond_46

    .line 764
    move-object/from16 v32, v3

    move/from16 v33, v17

    aget-char v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v32

    move/from16 v28, v32

    .line 765
    move/from16 v32, v28

    const/16 v33, 0x65

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_46

    .line 767
    move/from16 v32, v17

    move/from16 v33, v18

    sub-int v32, v32, v33

    move/from16 v30, v32

    .line 768
    .local v30, "prefix":I
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v29

    const/16 v34, 0x0

    move/from16 v35, v30

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x65

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v33, v29

    move/from16 v34, v30

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v29, v32

    .line 771
    .end local v30    # "prefix":I
    :cond_46
    move-object/from16 v32, v29

    invoke-static/range {v32 .. v32}, Lgnu/lists/Convert;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v30, v32

    .line 772
    .local v30, "d":D
    new-instance v32, Lgnu/math/DFloNum;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move/from16 v34, v12

    if-eqz v34, :cond_47

    move-wide/from16 v34, v30

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v34, v0

    :goto_11
    invoke-direct/range {v33 .. v35}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v27, v32

    .line 773
    goto/16 :goto_10

    .line 772
    :cond_47
    move-wide/from16 v34, v30

    goto :goto_11

    .line 776
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "d":D
    :cond_48
    move-object/from16 v32, v3

    move/from16 v33, v18

    move/from16 v34, v10

    move/from16 v35, v18

    sub-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v12

    move-wide/from16 v37, v23

    invoke-static/range {v32 .. v38}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v32

    move-object/from16 v29, v32

    .line 778
    .local v29, "iresult":Lgnu/math/IntNum;
    move-object/from16 v32, v22

    if-nez v32, :cond_49

    .line 779
    move-object/from16 v32, v29

    move-object/from16 v27, v32

    .line 801
    :goto_12
    move/from16 v32, v26

    if-eqz v32, :cond_3c

    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->isExact()Z

    move-result v32

    if-eqz v32, :cond_3c

    .line 803
    new-instance v32, Lgnu/math/DFloNum;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move/from16 v34, v13

    if-eqz v34, :cond_4f

    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Lgnu/math/RealNum;->isZero()Z

    move-result v34

    if-eqz v34, :cond_4f

    const-wide/high16 v34, -0x8000000000000000L

    :goto_13
    invoke-direct/range {v33 .. v35}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v27, v32

    goto/16 :goto_10

    .line 784
    :cond_49
    move-object/from16 v32, v29

    invoke-virtual/range {v32 .. v32}, Lgnu/math/IntNum;->isZero()Z

    move-result v32

    if-eqz v32, :cond_4e

    .line 786
    move-object/from16 v32, v22

    invoke-virtual/range {v32 .. v32}, Lgnu/math/IntNum;->isZero()Z

    move-result v32

    move/from16 v30, v32

    .line 787
    .local v30, "numeratorZero":Z
    move/from16 v32, v26

    if-eqz v32, :cond_4c

    .line 788
    new-instance v32, Lgnu/math/DFloNum;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move/from16 v34, v30

    if-eqz v34, :cond_4a

    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    :goto_14
    invoke-direct/range {v33 .. v35}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v27, v32

    .line 795
    :goto_15
    goto :goto_12

    .line 788
    :cond_4a
    move/from16 v34, v13

    if-eqz v34, :cond_4b

    const-wide/high16 v34, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_14

    :cond_4b
    const-wide/high16 v34, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_14

    .line 791
    :cond_4c
    move/from16 v32, v30

    if-eqz v32, :cond_4d

    .line 792
    const-string/jumbo v32, "0/0 is undefined"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 794
    :cond_4d
    move-object/from16 v32, v22

    move-object/from16 v33, v29

    invoke-static/range {v32 .. v33}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v32

    move-object/from16 v27, v32

    goto :goto_15

    .line 798
    .end local v30    # "numeratorZero":Z
    :cond_4e
    move-object/from16 v32, v22

    move-object/from16 v33, v29

    invoke-static/range {v32 .. v33}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v32

    move-object/from16 v27, v32

    goto :goto_12

    .line 803
    :cond_4f
    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v34

    goto :goto_13

    .line 820
    .local v29, "angle":Ljava/lang/Object;
    :cond_50
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/math/RealNum;

    move/from16 v32, v0

    if-nez v32, :cond_51

    .line 821
    const-string/jumbo v32, "invalid complex polar constant"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 822
    :cond_51
    move-object/from16 v32, v29

    check-cast v32, Lgnu/math/RealNum;

    move-object/from16 v30, v32

    .line 825
    .local v30, "rangle":Lgnu/math/RealNum;
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->isZero()Z

    move-result v32

    if-eqz v32, :cond_52

    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->isExact()Z

    move-result v32

    if-nez v32, :cond_52

    .line 826
    new-instance v32, Lgnu/math/DFloNum;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const-wide/16 v34, 0x0

    invoke-direct/range {v33 .. v35}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 828
    :cond_52
    move-object/from16 v32, v27

    move-object/from16 v33, v30

    invoke-static/range {v32 .. v33}, Lgnu/math/Complex;->polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 831
    .end local v29    # "angle":Ljava/lang/Object;
    .end local v30    # "rangle":Lgnu/math/RealNum;
    :cond_53
    move/from16 v32, v11

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_54

    move/from16 v32, v11

    const/16 v33, 0x2b

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_58

    .line 833
    :cond_54
    add-int/lit8 v10, v10, -0x1

    .line 834
    move-object/from16 v32, v3

    move/from16 v33, v10

    move/from16 v34, v9

    move/from16 v35, v10

    sub-int v34, v34, v35

    move/from16 v35, v6

    const/16 v36, 0xa

    move/from16 v37, v8

    invoke-static/range {v32 .. v37}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v29, v32

    .line 836
    .local v29, "imag":Ljava/lang/Object;
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v32, v0

    if-eqz v32, :cond_55

    .line 837
    move-object/from16 v32, v29

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 838
    :cond_55
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/math/Complex;

    move/from16 v32, v0

    if-nez v32, :cond_56

    .line 839
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "invalid numeric constant ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 840
    :cond_56
    move-object/from16 v32, v29

    check-cast v32, Lgnu/math/Complex;

    move-object/from16 v30, v32

    .line 841
    .local v30, "cimag":Lgnu/math/Complex;
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v32

    move-object/from16 v31, v32

    .line 842
    .local v31, "re":Lgnu/math/RealNum;
    move-object/from16 v32, v31

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->isZero()Z

    move-result v32

    if-nez v32, :cond_57

    .line 843
    const-string/jumbo v32, "invalid numeric constant"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 844
    :cond_57
    move-object/from16 v32, v27

    move-object/from16 v33, v30

    invoke-virtual/range {v33 .. v33}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 847
    .end local v29    # "imag":Ljava/lang/Object;
    .end local v30    # "cimag":Lgnu/math/Complex;
    .end local v31    # "re":Lgnu/math/RealNum;
    :cond_58
    const/16 v32, 0x0

    move/from16 v29, v32

    .line 850
    .local v29, "lcount":I
    :goto_16
    move/from16 v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->isLetter(C)Z

    move-result v32

    if-nez v32, :cond_5a

    .line 852
    add-int/lit8 v10, v10, -0x1

    .line 861
    :goto_17
    move/from16 v32, v29

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5d

    .line 863
    move-object/from16 v32, v3

    move/from16 v33, v10

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    aget-char v32, v32, v33

    move/from16 v30, v32

    .line 864
    .local v30, "prev":C
    move/from16 v32, v30

    const/16 v33, 0x69

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_59

    move/from16 v32, v30

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5d

    .line 866
    :cond_59
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_5c

    .line 867
    const-string/jumbo v32, "junk after imaginary suffix \'i\'"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 855
    .end local v30    # "prev":C
    :cond_5a
    add-int/lit8 v29, v29, 0x1

    .line 856
    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5b

    .line 857
    goto :goto_17

    .line 858
    :cond_5b
    move-object/from16 v32, v3

    move/from16 v33, v10

    add-int/lit8 v10, v10, 0x1

    aget-char v32, v32, v33

    move/from16 v11, v32

    goto :goto_16

    .line 868
    .restart local v30    # "prev":C
    :cond_5c
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v32

    move-object/from16 v33, v27

    invoke-static/range {v32 .. v33}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 871
    .end local v30    # "prev":C
    :cond_5d
    const-string/jumbo v32, "excess junk after number"

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 874
    .end local v29    # "lcount":I
    :cond_5e
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/math/DFloNum;

    move/from16 v32, v0

    if-eqz v32, :cond_5f

    move/from16 v32, v28

    if-lez v32, :cond_5f

    move/from16 v32, v28

    const/16 v33, 0x65

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5f

    .line 876
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v32

    move-wide/from16 v29, v32

    .line 877
    .local v29, "d":D
    move/from16 v32, v28

    sparse-switch v32, :sswitch_data_2

    .line 887
    .end local v29    # "d":D
    :cond_5f
    move-object/from16 v32, v27

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 880
    .restart local v29    # "d":D
    :sswitch_8
    move-wide/from16 v32, v29

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 882
    :sswitch_9
    move-wide/from16 v32, v29

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 884
    :sswitch_a
    move-wide/from16 v32, v29

    invoke-static/range {v32 .. v33}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v3, v32

    goto/16 :goto_0

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_2
        0x45 -> :sswitch_4
        0x49 -> :sswitch_4
        0x4f -> :sswitch_1
        0x58 -> :sswitch_3
        0x62 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x69 -> :sswitch_4
        0x6f -> :sswitch_1
        0x78 -> :sswitch_3
    .end sparse-switch

    .line 634
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_5
        0x2f -> :sswitch_7
        0x44 -> :sswitch_6
        0x45 -> :sswitch_6
        0x46 -> :sswitch_6
        0x4c -> :sswitch_6
        0x53 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x6c -> :sswitch_6
        0x73 -> :sswitch_6
    .end sparse-switch

    .line 877
    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_9
        0x66 -> :sswitch_8
        0x6c -> :sswitch_a
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method public static readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v9

    move v1, v9

    .line 1151
    .local v1, "ch":I
    move v9, v1

    if-gez v9, :cond_0

    .line 1152
    move-object v9, v0

    const-string/jumbo v10, "unexpected EOF in character literal"

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1153
    :cond_0
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v2, v9

    .line 1154
    .local v2, "startPos":I
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1155
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v10

    const/16 v11, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1156
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object v3, v9

    .line 1157
    .local v3, "tokenBuffer":[C
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v10, v2

    sub-int/2addr v9, v10

    move v4, v9

    .line 1158
    .local v4, "length":I
    move v9, v4

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1159
    move-object v9, v3

    move v10, v2

    aget-char v9, v9, v10

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    move-object v0, v9

    .line 1195
    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return-object v0

    .line 1160
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    new-instance v9, Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    move v12, v2

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v9

    .line 1161
    .local v5, "name":Ljava/lang/String;
    move-object v9, v5

    invoke-static {v9}, Lgnu/text/Char;->nameToChar(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    .line 1162
    move v9, v1

    if-ltz v9, :cond_2

    .line 1163
    move v9, v1

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 1164
    :cond_2
    move-object v9, v3

    move v10, v2

    aget-char v9, v9, v10

    move v1, v9

    .line 1165
    move v9, v1

    const/16 v10, 0x78

    if-eq v9, v10, :cond_3

    move v9, v1

    const/16 v10, 0x58

    if-ne v9, v10, :cond_5

    .line 1167
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    .line 1168
    .local v6, "value":I
    const/4 v9, 0x1

    move v7, v9

    .line 1170
    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v4

    if-ne v9, v10, :cond_4

    .line 1171
    move v9, v6

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 1172
    :cond_4
    move-object v9, v3

    move v10, v2

    move v11, v7

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    move v8, v9

    .line 1173
    .local v8, "v":I
    move v9, v8

    if-gez v9, :cond_6

    .line 1174
    .line 1180
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "v":I
    :cond_5
    :goto_2
    move v9, v1

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(II)I

    move-result v9

    move v1, v9

    .line 1181
    move v9, v1

    if-ltz v9, :cond_9

    .line 1183
    move v9, v1

    move v6, v9

    .line 1184
    .restart local v6    # "value":I
    const/4 v9, 0x1

    move v7, v9

    .line 1186
    .restart local v7    # "i":I
    :goto_3
    move v9, v7

    move v10, v4

    if-ne v9, v10, :cond_8

    .line 1187
    move v9, v6

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 1175
    .restart local v8    # "v":I
    :cond_6
    const/16 v9, 0x10

    move v10, v6

    mul-int/2addr v9, v10

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 1176
    move v9, v6

    const v10, 0x10ffff

    if-le v9, v10, :cond_7

    .line 1177
    goto :goto_2

    .line 1168
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1188
    .end local v8    # "v":I
    :cond_8
    move-object v9, v3

    move v10, v2

    move v11, v7

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    move v1, v9

    .line 1189
    move v9, v1

    if-gez v9, :cond_a

    .line 1190
    .line 1194
    .end local v6    # "value":I
    .end local v7    # "i":I
    :cond_9
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unknown character name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1195
    const/16 v9, 0x3f

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 1191
    .restart local v6    # "value":I
    .restart local v7    # "i":I
    :cond_a
    const/16 v9, 0x8

    move v10, v6

    mul-int/2addr v9, v10

    move v10, v1

    add-int/2addr v9, v10

    move v6, v9

    .line 1184
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public static readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1123
    move v0, p0

    .local v0, "previous":I
    move-object v1, p1

    .local v1, "reader":Lgnu/kawa/lispexpr/LispReader;
    move v2, p2

    .local v2, "radix":I
    move-object v6, v1

    iget v6, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v7, v0

    sub-int/2addr v6, v7

    move v3, v6

    .line 1124
    .local v3, "startPos":I
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    const/16 v8, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1125
    move-object v6, v1

    iget v6, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v4, v6

    .line 1126
    .local v4, "endPos":I
    move v6, v3

    move v7, v4

    if-ne v6, v7, :cond_0

    .line 1128
    move-object v6, v1

    const-string/jumbo v7, "missing numeric token"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    .line 1144
    .end local v0    # "previous":I
    :goto_0
    return-object v0

    .line 1131
    .restart local v0    # "previous":I
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move v7, v3

    move v8, v4

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    move v10, v2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1133
    .local v5, "result":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1135
    move-object v6, v1

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1138
    :cond_1
    move-object v6, v5

    if-nez v6, :cond_2

    .line 1140
    move-object v6, v1

    const-string/jumbo v7, "invalid numeric constant"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1144
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1246
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "kind":C
    const/4 v7, 0x0

    move v2, v7

    .line 1250
    .local v2, "size":I
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    move v3, v7

    .line 1251
    .local v3, "ch":I
    move v7, v3

    if-gez v7, :cond_0

    .line 1252
    move-object v7, v0

    const-string/jumbo v8, "unexpected EOF reading uniform vector"

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1253
    :cond_0
    move v7, v3

    int-to-char v7, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v4, v7

    .line 1254
    .local v4, "digit":I
    move v7, v4

    if-gez v7, :cond_4

    .line 1255
    .line 1258
    move v7, v2

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    move v7, v2

    const/16 v8, 0x10

    if-eq v7, v8, :cond_1

    move v7, v2

    const/16 v8, 0x20

    if-eq v7, v8, :cond_1

    move v7, v2

    const/16 v8, 0x40

    if-ne v7, v8, :cond_3

    :cond_1
    move v7, v1

    const/16 v8, 0x46

    if-ne v7, v8, :cond_2

    move v7, v2

    const/16 v8, 0x20

    if-lt v7, v8, :cond_3

    :cond_2
    move v7, v3

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    .line 1262
    :cond_3
    move-object v7, v0

    const-string/jumbo v8, "invalid uniform vector syntax"

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1263
    const/4 v7, 0x0

    move-object v0, v7

    .line 1298
    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .end local v4    # "digit":I
    :goto_1
    return-object v0

    .line 1256
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    .restart local v4    # "digit":I
    :cond_4
    move v7, v2

    const/16 v8, 0xa

    mul-int/lit8 v7, v7, 0xa

    move v8, v4

    add-int/2addr v7, v8

    move v2, v7

    .line 1257
    goto :goto_0

    .line 1265
    :cond_5
    move-object v7, v0

    const/16 v8, 0x28

    const/4 v9, -0x1

    const/16 v10, 0x29

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 1266
    .local v4, "list":Ljava/lang/Object;
    move-object v7, v4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v7

    move v5, v7

    .line 1267
    .local v5, "len":I
    move v7, v5

    if-gez v7, :cond_6

    .line 1269
    move-object v7, v0

    const-string/jumbo v8, "invalid elements in uniform vector syntax"

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1270
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 1272
    :cond_6
    move-object v7, v4

    check-cast v7, Lgnu/lists/Sequence;

    move-object v6, v7

    .line 1273
    .local v6, "q":Lgnu/lists/Sequence;
    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 1298
    :goto_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 1276
    :sswitch_0
    move v7, v2

    sparse-switch v7, :sswitch_data_1

    .line 1282
    :sswitch_1
    move v7, v2

    sparse-switch v7, :sswitch_data_2

    .line 1290
    :sswitch_2
    move v7, v2

    sparse-switch v7, :sswitch_data_3

    goto :goto_2

    .line 1292
    :sswitch_3
    new-instance v7, Lgnu/lists/U8Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/U8Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto :goto_1

    .line 1278
    :sswitch_4
    new-instance v7, Lgnu/lists/F32Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/F32Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto :goto_1

    .line 1279
    :sswitch_5
    new-instance v7, Lgnu/lists/F64Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/F64Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto :goto_1

    .line 1284
    :sswitch_6
    new-instance v7, Lgnu/lists/S8Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/S8Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto :goto_1

    .line 1285
    :sswitch_7
    new-instance v7, Lgnu/lists/S16Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/S16Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto :goto_1

    .line 1286
    :sswitch_8
    new-instance v7, Lgnu/lists/S32Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/S32Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 1287
    :sswitch_9
    new-instance v7, Lgnu/lists/S64Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/S64Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 1293
    :sswitch_a
    new-instance v7, Lgnu/lists/U16Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/U16Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 1294
    :sswitch_b
    new-instance v7, Lgnu/lists/U32Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/U32Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 1295
    :sswitch_c
    new-instance v7, Lgnu/lists/U64Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/lists/U64Vector;-><init>(Lgnu/lists/Sequence;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 1273
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x53 -> :sswitch_1
        0x55 -> :sswitch_2
    .end sparse-switch

    .line 1276
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch

    .line 1282
    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_8
        0x40 -> :sswitch_9
    .end sparse-switch

    .line 1290
    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_a
        0x20 -> :sswitch_b
        0x40 -> :sswitch_c
    .end sparse-switch
.end method

.method public static readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 1202
    .local v1, "ch":I
    move v5, v1

    if-gez v5, :cond_0

    .line 1203
    move-object v5, v0

    const-string/jumbo v6, "unexpected EOF in #! special form"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1206
    :cond_0
    move v5, v1

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1210
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v5

    move-object v6, v0

    const/16 v7, 0x23

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v5

    .line 1211
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    .line 1239
    .end local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return-object v0

    .line 1214
    .restart local v0    # "reader":Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v2, v5

    .line 1215
    .local v2, "startPos":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1216
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    const/16 v7, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1217
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 1218
    .local v3, "length":I
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v5

    .line 1219
    .local v4, "name":Ljava/lang/String;
    move-object v5, v4

    const-string/jumbo v6, "optional"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1220
    sget-object v5, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    move-object v0, v5

    goto :goto_0

    .line 1221
    :cond_2
    move-object v5, v4

    const-string/jumbo v6, "rest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1222
    sget-object v5, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    move-object v0, v5

    goto :goto_0

    .line 1223
    :cond_3
    move-object v5, v4

    const-string/jumbo v6, "key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1224
    sget-object v5, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    move-object v0, v5

    goto :goto_0

    .line 1225
    :cond_4
    move-object v5, v4

    const-string/jumbo v6, "eof"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1226
    sget-object v5, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v0, v5

    goto :goto_0

    .line 1227
    :cond_5
    move-object v5, v4

    const-string/jumbo v6, "void"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1229
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v5

    goto :goto_0

    .line 1230
    :cond_6
    move-object v5, v4

    const-string/jumbo v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1231
    sget-object v5, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v0, v5

    goto :goto_0

    .line 1232
    :cond_7
    move-object v5, v4

    const-string/jumbo v6, "undefined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1233
    sget-object v5, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    move-object v0, v5

    goto/16 :goto_0

    .line 1234
    :cond_8
    move-object v5, v4

    const-string/jumbo v6, "abstract"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1235
    sget-object v5, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    move-object v0, v5

    goto/16 :goto_0

    .line 1236
    :cond_9
    move-object v5, v4

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1237
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0

    .line 1238
    :cond_a
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown named constant #!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1239
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private static valueOf([CIIIZJ)Lgnu/math/IntNum;
    .locals 13

    .prologue
    .line 898
    move-object v1, p0

    .local v1, "buffer":[C
    move v2, p1

    .local v2, "digits_start":I
    move v3, p2

    .local v3, "number_of_digits":I
    move/from16 v4, p3

    .local v4, "radix":I
    move/from16 v5, p4

    .local v5, "negative":Z
    move-wide/from16 v6, p5

    .local v6, "lvalue":J
    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    const/16 v9, 0x1c

    if-gt v8, v9, :cond_1

    .line 899
    move v8, v5

    if-eqz v8, :cond_0

    move-wide v8, v6

    neg-long v8, v8

    :goto_0
    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    .line 901
    .end local v1    # "buffer":[C
    :goto_1
    return-object v1

    .line 899
    .restart local v1    # "buffer":[C
    :cond_0
    move-wide v8, v6

    goto :goto_0

    .line 901
    :cond_1
    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    goto :goto_1
.end method


# virtual methods
.method handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move/from16 v3, p3

    .local v3, "line":I
    move/from16 v4, p4

    .local v4, "column":I
    move-object v8, v1

    sget-object v9, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v8, v9, :cond_0

    .line 410
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v1, v8

    .line 413
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v8

    move v5, v8

    .line 414
    .local v5, "ch":I
    move v8, v5

    if-ltz v8, :cond_1

    move v8, v5

    move-object v9, v2

    iget-char v9, v9, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-eq v8, v9, :cond_2

    .line 415
    .line 431
    :cond_1
    :goto_1
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0

    .line 417
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->read()I

    move-result v8

    .line 418
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v8

    move v6, v8

    .line 419
    .local v6, "ch2":I
    move-object v8, v0

    move v9, v6

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 421
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->unread()V

    .line 422
    goto :goto_1

    .line 424
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->read()I

    move-result v8

    move v5, v8

    .line 425
    move-object v8, v0

    move v9, v5

    move-object v10, v2

    move v11, v5

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 426
    .local v7, "rightOperand":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v2

    const-string/jumbo v10, "quasiquote"

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v7

    invoke-static {v9, v10}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    move-object v1, v8

    .line 428
    .local v1, "value":Lgnu/lists/Pair;
    sget-object v8, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v8

    move-object v1, v8

    .line 430
    .local v1, "value":Lgnu/lists/PairWithPosition;
    goto :goto_0
.end method

.method protected makeNil()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 9

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 12

    .prologue
    .line 1102
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdr":Ljava/lang/Object;
    move v3, p3

    .local v3, "line":I
    move/from16 v4, p4

    .local v4, "column":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1103
    .local v5, "pname":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_0

    move v6, v3

    if-ltz v6, :cond_0

    .line 1104
    move-object v6, v1

    move-object v7, v2

    move-object v8, v5

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v6

    move-object v0, v6

    .line 1107
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method protected readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v3, p1

    .local v3, "ch":I
    move/from16 v4, p2

    .local v4, "startPos":I
    move-object/from16 v5, p3

    .local v5, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object/from16 v19, v2

    move/from16 v20, v3

    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v21

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v22}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 134
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 135
    .local v6, "endPos":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 137
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v4

    sub-int v21, v21, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v19 .. v24}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .line 139
    .local v7, "value":Ljava/lang/Object;
    move-object/from16 v19, v7

    if-eqz v19, :cond_0

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 140
    move-object/from16 v19, v7

    move-object/from16 v2, v19

    .line 256
    .end local v2    # "this":Lgnu/kawa/lispexpr/LispReader;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 151
    .restart local v2    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v19

    move/from16 v7, v19

    .line 152
    .local v7, "readCase":C
    move/from16 v19, v7

    const/16 v20, 0x49

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 154
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 155
    .local v8, "upperCount":I
    const/16 v19, 0x0

    move/from16 v9, v19

    .line 156
    .local v9, "lowerCount":I
    move/from16 v19, v4

    move/from16 v10, v19

    .local v10, "i":I
    :goto_1
    move/from16 v19, v10

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 158
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v10

    aget-char v19, v19, v20

    move/from16 v11, v19

    .line 159
    .local v11, "ci":C
    move/from16 v19, v11

    const v20, 0xffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 160
    add-int/lit8 v10, v10, 0x1

    .line 156
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 161
    :cond_2
    move/from16 v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 163
    :cond_3
    move/from16 v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 166
    .end local v11    # "ci":C
    :cond_4
    move/from16 v19, v9

    if-nez v19, :cond_7

    .line 167
    const/16 v19, 0x44

    move/from16 v7, v19

    .line 174
    .end local v8    # "upperCount":I
    .end local v9    # "lowerCount":I
    .end local v10    # "i":I
    :cond_5
    :goto_3
    move/from16 v19, v6

    move/from16 v20, v4

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    aget-char v19, v19, v20

    const/16 v20, 0x7d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v6

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    aget-char v19, v19, v20

    const v20, 0xffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v19

    const/16 v20, 0x3a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_4
    move/from16 v8, v19

    .line 179
    .local v8, "handleUri":Z
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 180
    .local v9, "packageMarker":I
    const/16 v19, -0x1

    move/from16 v10, v19

    .local v10, "lbrace":I
    const/16 v19, -0x1

    move/from16 v11, v19

    .local v11, "rbrace":I
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 181
    .local v12, "braceNesting":I
    move/from16 v19, v4

    move/from16 v13, v19

    .line 182
    .local v13, "j":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .line 183
    .local v14, "uriBad":Z
    move/from16 v19, v4

    move/from16 v15, v19

    .local v15, "i":I
    :goto_5
    move/from16 v19, v15

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 185
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v15

    aget-char v19, v19, v20

    move/from16 v16, v19

    .line 186
    .local v16, "ci":C
    move/from16 v19, v16

    const v20, 0xffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 188
    add-int/lit8 v15, v15, 0x1

    move/from16 v19, v15

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 189
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v15

    aget-char v21, v21, v22

    aput-char v21, v19, v20

    .line 183
    :cond_6
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 168
    .end local v11    # "rbrace":I
    .end local v12    # "braceNesting":I
    .end local v13    # "j":I
    .end local v14    # "uriBad":Z
    .end local v15    # "i":I
    .end local v16    # "ci":C
    .local v8, "upperCount":I
    .local v9, "lowerCount":I
    .local v10, "i":I
    :cond_7
    move/from16 v19, v8

    if-nez v19, :cond_8

    .line 169
    const/16 v19, 0x55

    move/from16 v7, v19

    goto/16 :goto_3

    .line 171
    :cond_8
    const/16 v19, 0x50

    move/from16 v7, v19

    goto/16 :goto_3

    .line 174
    .end local v8    # "upperCount":I
    .end local v9    # "lowerCount":I
    .end local v10    # "i":I
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 192
    .local v8, "handleUri":Z
    .local v9, "packageMarker":I
    .local v10, "lbrace":I
    .restart local v11    # "rbrace":I
    .restart local v12    # "braceNesting":I
    .restart local v13    # "j":I
    .restart local v14    # "uriBad":Z
    .restart local v15    # "i":I
    .restart local v16    # "ci":C
    :cond_a
    move/from16 v19, v8

    if-eqz v19, :cond_c

    .line 194
    move/from16 v19, v16

    const/16 v20, 0x7b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 196
    move/from16 v19, v10

    if-gez v19, :cond_e

    .line 197
    move/from16 v19, v13

    move/from16 v10, v19

    .line 200
    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 216
    :cond_c
    :goto_8
    move/from16 v19, v12

    if-lez v19, :cond_12

    .line 217
    .line 224
    :cond_d
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v19, v0

    move/from16 v20, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v21, v16

    aput-char v21, v19, v20

    goto :goto_6

    .line 198
    :cond_e
    move/from16 v19, v12

    if-nez v19, :cond_b

    .line 199
    const/16 v19, 0x1

    move/from16 v14, v19

    goto :goto_7

    .line 202
    :cond_f
    move/from16 v19, v16

    const/16 v20, 0x7d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 204
    add-int/lit8 v12, v12, -0x1

    .line 205
    move/from16 v19, v12

    if-gez v19, :cond_10

    .line 206
    const/16 v19, 0x1

    move/from16 v14, v19

    goto :goto_8

    .line 207
    :cond_10
    move/from16 v19, v12

    if-nez v19, :cond_c

    .line 209
    move/from16 v19, v11

    if-gez v19, :cond_11

    .line 210
    move/from16 v19, v13

    move/from16 v11, v19

    goto :goto_8

    .line 212
    :cond_11
    const/16 v19, 0x1

    move/from16 v14, v19

    goto :goto_8

    .line 218
    :cond_12
    move/from16 v19, v16

    const/16 v20, 0x3a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 219
    move/from16 v19, v9

    if-ltz v19, :cond_13

    const/16 v19, -0x1

    :goto_a
    move/from16 v9, v19

    goto :goto_9

    :cond_13
    move/from16 v19, v13

    goto :goto_a

    .line 220
    :cond_14
    move/from16 v19, v7

    const/16 v20, 0x55

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 221
    move/from16 v19, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    move/from16 v16, v19

    goto :goto_9

    .line 222
    :cond_15
    move/from16 v19, v7

    const/16 v20, 0x44

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 223
    move/from16 v19, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v19

    move/from16 v16, v19

    goto :goto_9

    .line 226
    .end local v16    # "ci":C
    :cond_16
    move/from16 v19, v13

    move/from16 v6, v19

    .line 228
    move/from16 v19, v6

    move/from16 v20, v4

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 230
    .local v15, "len":I
    move/from16 v19, v10

    if-ltz v19, :cond_19

    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_19

    .line 232
    move/from16 v19, v10

    if-lez v19, :cond_18

    new-instance v19, Ljava/lang/String;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v10

    move/from16 v24, v4

    sub-int v23, v23, v24

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    :goto_b
    move-object/from16 v16, v19

    .line 233
    .local v16, "prefix":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    .line 234
    new-instance v19, Ljava/lang/String;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v10

    sub-int v23, v23, v24

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v17, v19

    .line 235
    .local v17, "uri":Ljava/lang/String;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v19

    move/from16 v3, v19

    .line 236
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v19

    move/from16 v3, v19

    .line 237
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v21

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v22}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v18, v19

    .line 238
    .local v18, "rightOperand":Ljava/lang/Object;
    move-object/from16 v19, v18

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 239
    move-object/from16 v19, v2

    const-string/jumbo v20, "expected identifier in symbol after \'{URI}:\'"

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 241
    :cond_17
    move-object/from16 v19, v18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v17

    move-object/from16 v21, v16

    invoke-static/range {v19 .. v21}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 232
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v17    # "uri":Ljava/lang/String;
    .end local v18    # "rightOperand":Ljava/lang/Object;
    :cond_18
    const/16 v19, 0x0

    goto :goto_b

    .line 244
    :cond_19
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move/from16 v19, v9

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    move/from16 v19, v15

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 247
    new-instance v19, Ljava/lang/String;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v16, v19

    .line 248
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 250
    .end local v16    # "str":Ljava/lang/String;
    :cond_1a
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    move/from16 v19, v9

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    move/from16 v19, v15

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1b

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 253
    :cond_1b
    new-instance v19, Ljava/lang/String;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v15

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v16, v19

    .line 254
    .restart local v16    # "str":Ljava/lang/String;
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 256
    .end local v16    # "str":Ljava/lang/String;
    :cond_1c
    move-object/from16 v19, v5

    new-instance v20, Ljava/lang/String;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v22, v0

    move/from16 v23, v4

    move/from16 v24, v15

    invoke-direct/range {v21 .. v24}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0
.end method

.method public readCommand()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0
.end method

.method public readEscape()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move v1, v2

    .line 912
    .local v1, "c":I
    move v2, v1

    if-gez v2, :cond_0

    .line 914
    move-object v2, v0

    const-string/jumbo v3, "unexpected EOF in character literal"

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 915
    const/4 v2, -0x1

    move v0, v2

    .line 917
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public final readEscape(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "c":I
    move v5, v1

    int-to-char v5, v5

    sparse-switch v5, :sswitch_data_0

    .line 1047
    :goto_0
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_1
    return v0

    .line 925
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :sswitch_0
    const/4 v5, 0x7

    move v1, v5

    goto :goto_0

    .line 926
    :sswitch_1
    const/16 v5, 0x8

    move v1, v5

    goto :goto_0

    .line 927
    :sswitch_2
    const/16 v5, 0x9

    move v1, v5

    goto :goto_0

    .line 928
    :sswitch_3
    const/16 v5, 0xa

    move v1, v5

    goto :goto_0

    .line 929
    :sswitch_4
    const/16 v5, 0xb

    move v1, v5

    goto :goto_0

    .line 930
    :sswitch_5
    const/16 v5, 0xc

    move v1, v5

    goto :goto_0

    .line 931
    :sswitch_6
    const/16 v5, 0xd

    move v1, v5

    goto :goto_0

    .line 932
    :sswitch_7
    const/16 v5, 0x1b

    move v1, v5

    goto :goto_0

    .line 933
    :sswitch_8
    const/16 v5, 0x22

    move v1, v5

    goto :goto_0

    .line 934
    :sswitch_9
    const/16 v5, 0x5c

    move v1, v5

    goto :goto_0

    .line 960
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 941
    :sswitch_a
    move v5, v1

    if-gez v5, :cond_1

    .line 943
    move-object v5, v0

    const-string/jumbo v6, "unexpected EOF in literal"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 944
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 946
    :cond_1
    move v5, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 947
    .line 962
    :goto_2
    move v5, v1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5

    .line 963
    goto :goto_0

    .line 948
    :cond_2
    move v5, v1

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 950
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 951
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 952
    :cond_3
    const/16 v5, 0xa

    move v1, v5

    .line 953
    goto :goto_2

    .line 955
    :cond_4
    move v5, v1

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    move v5, v1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    .line 957
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 958
    goto :goto_2

    .line 967
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 968
    move v5, v1

    if-gez v5, :cond_6

    .line 970
    move-object v5, v0

    const-string/jumbo v6, "unexpected EOF in literal"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 971
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 973
    :cond_6
    move v5, v1

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5

    move v5, v1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_5

    .line 975
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 976
    const/4 v5, -0x2

    move v0, v5

    goto/16 :goto_1

    .line 980
    :sswitch_b
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 981
    move v5, v1

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_7

    .line 983
    move-object v5, v0

    const-string/jumbo v6, "Invalid escape character syntax"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 984
    const/16 v5, 0x3f

    move v0, v5

    goto/16 :goto_1

    .line 986
    :cond_7
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 987
    move v5, v1

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_8

    .line 988
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v5

    move v1, v5

    .line 989
    :cond_8
    move v5, v1

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    move v0, v5

    goto/16 :goto_1

    .line 991
    :sswitch_c
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 992
    move v5, v1

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_9

    .line 994
    move-object v5, v0

    const-string/jumbo v6, "Invalid escape character syntax"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 995
    const/16 v5, 0x3f

    move v0, v5

    goto/16 :goto_1

    .line 999
    :cond_9
    :sswitch_d
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v1, v5

    .line 1000
    move v5, v1

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_a

    .line 1001
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v5

    move v1, v5

    .line 1002
    :cond_a
    move v5, v1

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_b

    .line 1003
    const/16 v5, 0x7f

    move v0, v5

    goto/16 :goto_1

    .line 1004
    :cond_b
    move v5, v1

    const/16 v6, 0x9f

    and-int/lit16 v5, v5, 0x9f

    move v0, v5

    goto/16 :goto_1

    .line 1014
    :sswitch_e
    move v5, v1

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v1, v5

    .line 1015
    const/4 v5, 0x0

    move v2, v5

    .local v2, "count":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    const/4 v6, 0x3

    if-ge v5, v6, :cond_d

    .line 1017
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v3, v5

    .line 1018
    .local v3, "d":I
    move v5, v3

    int-to-char v5, v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    move v4, v5

    .line 1019
    .local v4, "v":I
    move v5, v4

    if-ltz v5, :cond_c

    .line 1020
    move v5, v1

    const/4 v6, 0x3

    shl-int/lit8 v5, v5, 0x3

    move v6, v4

    add-int/2addr v5, v6

    move v1, v5

    .line 1027
    goto :goto_3

    .line 1023
    :cond_c
    move v5, v3

    if-ltz v5, :cond_d

    .line 1024
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1028
    .end local v3    # "d":I
    .end local v4    # "v":I
    :cond_d
    goto/16 :goto_0

    .line 1030
    .end local v2    # "count":I
    :sswitch_f
    const/4 v5, 0x0

    move v1, v5

    .line 1031
    const/4 v5, 0x4

    move v2, v5

    .local v2, "i":I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    if-ltz v5, :cond_10

    .line 1033
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    move v3, v5

    .line 1034
    .restart local v3    # "d":I
    move v5, v3

    if-gez v5, :cond_e

    .line 1035
    move-object v5, v0

    const-string/jumbo v6, "premature EOF in \\u escape"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1036
    :cond_e
    move v5, v3

    int-to-char v5, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    move v4, v5

    .line 1037
    .restart local v4    # "v":I
    move v5, v4

    if-gez v5, :cond_f

    .line 1038
    move-object v5, v0

    const-string/jumbo v6, "non-hex character following \\u"

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1039
    :cond_f
    const/16 v5, 0x10

    move v6, v1

    mul-int/2addr v5, v6

    move v6, v4

    add-int/2addr v5, v6

    move v1, v5

    .line 1040
    goto :goto_4

    .line 1041
    .end local v3    # "d":I
    .end local v4    # "v":I
    :cond_10
    goto/16 :goto_0

    .line 1044
    .end local v2    # "i":I
    :sswitch_10
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result v5

    move v0, v5

    goto/16 :goto_1

    .line 923
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_a
        0xa -> :sswitch_a
        0xd -> :sswitch_a
        0x20 -> :sswitch_a
        0x22 -> :sswitch_8
        0x30 -> :sswitch_e
        0x31 -> :sswitch_e
        0x32 -> :sswitch_e
        0x33 -> :sswitch_e
        0x34 -> :sswitch_e
        0x35 -> :sswitch_e
        0x36 -> :sswitch_e
        0x37 -> :sswitch_e
        0x43 -> :sswitch_c
        0x4d -> :sswitch_b
        0x58 -> :sswitch_10
        0x5c -> :sswitch_9
        0x5e -> :sswitch_d
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x65 -> :sswitch_7
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_6
        0x74 -> :sswitch_2
        0x75 -> :sswitch_f
        0x76 -> :sswitch_4
        0x78 -> :sswitch_10
    .end sparse-switch
.end method

.method public readHexEscape()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1053
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    const/4 v4, 0x0

    move v1, v4

    .line 1057
    .local v1, "c":I
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v4

    move v2, v4

    .line 1058
    .local v2, "d":I
    move v4, v2

    int-to-char v4, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    move v3, v4

    .line 1059
    .local v3, "v":I
    move v4, v3

    if-ltz v4, :cond_0

    .line 1060
    move v4, v1

    const/4 v5, 0x4

    shl-int/lit8 v4, v4, 0x4

    move v5, v3

    add-int/2addr v4, v5

    move v1, v4

    .line 1071
    goto :goto_0

    .line 1063
    :cond_0
    move v4, v2

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_1

    .line 1066
    move v4, v2

    if-ltz v4, :cond_1

    .line 1067
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1072
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return v0
.end method

.method public final readNestedComment(CC)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "c1":C
    move v2, p2

    .local v2, "c2":C
    const/4 v7, 0x1

    move v3, v7

    .line 37
    .local v3, "commentNesting":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    move v4, v7

    .line 38
    .local v4, "startLine":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v7

    move v5, v7

    .line 41
    .local v5, "startColumn":I
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    move v6, v7

    .line 42
    .local v6, "c":I
    move v7, v6

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_2

    .line 44
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    move v6, v7

    .line 45
    move v7, v6

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 54
    :cond_1
    :goto_0
    move v7, v6

    if-gez v7, :cond_3

    .line 56
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected end-of-file in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " comment starting here"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 59
    .line 62
    :goto_1
    return-void

    .line 48
    :cond_2
    move v7, v6

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 50
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    move v6, v7

    .line 51
    move v7, v6

    move v8, v2

    if-ne v7, v8, :cond_1

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_3
    move v7, v3

    if-gtz v7, :cond_0

    .line 62
    goto :goto_1
.end method

.method public readObject()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v10, Lgnu/mapping/InPort;

    iget-char v10, v10, Lgnu/mapping/InPort;->readState:C

    move v1, v10

    .line 367
    .local v1, "saveReadState":C
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v2, v10

    .line 368
    .local v2, "startPos":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v10, Lgnu/mapping/InPort;

    const/16 v11, 0x20

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    .line 371
    :try_start_0
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v10

    move-object v3, v10

    .line 374
    .local v3, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v10

    move v4, v10

    .line 375
    .local v4, "line":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v10

    move v5, v10

    .line 376
    .local v5, "column":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move v6, v10

    .line 377
    .local v6, "ch":I
    move v10, v6

    if-gez v10, :cond_0

    .line 378
    sget-object v10, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v10

    .line 387
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v1

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    move-object v10, v7

    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_1
    return-object v0

    .line 379
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    move-object v10, v0

    move v11, v6

    move-object v12, v3

    :try_start_1
    invoke-virtual {v10, v11, v12}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 380
    .local v7, "value":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v10, v11, :cond_1

    .line 381
    goto :goto_0

    .line 382
    :cond_1
    move-object v10, v0

    move-object v11, v7

    move-object v12, v3

    move v13, v4

    move v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v8, v10

    .line 387
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v1

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    move-object v10, v8

    move-object v0, v10

    goto :goto_1

    .line 387
    .end local v3    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v4    # "line":I
    .end local v5    # "column":I
    .end local v6    # "ch":I
    .end local v7    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    move v11, v2

    iput v11, v10, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v1

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    move-object v10, v9

    throw v10
.end method

.method public final readObject(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "c":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1079
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0
.end method

.method readToken(ICLgnu/kawa/lispexpr/ReadTable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "ch":I
    move v2, p2

    .local v2, "readCase":C
    move-object v3, p3

    .local v3, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    const/4 v9, 0x0

    move v4, v9

    .line 270
    .local v4, "inEscapes":Z
    const/4 v9, 0x0

    move v5, v9

    .line 273
    .local v5, "braceNesting":I
    :goto_0
    move v9, v1

    if-gez v9, :cond_0

    .line 275
    move v9, v4

    if-eqz v9, :cond_3

    .line 276
    move-object v9, v0

    const-string/jumbo v10, "unexpected EOF between escapes"

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 280
    :cond_0
    move-object v9, v3

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v9

    move-object v6, v9

    .line 281
    .local v6, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v9

    move v7, v9

    .line 282
    .local v7, "kind":I
    move v9, v7

    if-nez v9, :cond_4

    .line 284
    move v9, v4

    if-eqz v9, :cond_1

    .line 286
    move-object v9, v0

    const v10, 0xffff

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 287
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 288
    .line 271
    :goto_1
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v9

    move v1, v9

    goto :goto_0

    .line 290
    :cond_1
    move v9, v1

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_2

    add-int/lit8 v5, v5, -0x1

    move v9, v5

    if-ltz v9, :cond_2

    .line 292
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 293
    goto :goto_1

    .line 295
    :cond_2
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 296
    .line 361
    .end local v6    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v7    # "kind":I
    :cond_3
    :goto_2
    return-void

    .line 298
    .restart local v6    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v7    # "kind":I
    :cond_4
    move v9, v1

    move-object v10, v3

    iget-char v10, v10, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v9, v10, :cond_6

    move v9, v4

    if-nez v9, :cond_6

    .line 300
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v9

    move v8, v9

    .line 301
    .local v8, "next":I
    move v9, v8

    move-object v10, v3

    iget-char v10, v10, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v9, v10, :cond_5

    .line 303
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 304
    goto :goto_2

    .line 306
    :cond_5
    move-object v9, v0

    move v10, v8

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 307
    const/4 v9, 0x5

    move v7, v9

    .line 310
    .end local v8    # "next":I
    :cond_6
    move v9, v7

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 312
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v9

    move v1, v9

    .line 313
    move v9, v1

    if-gez v9, :cond_7

    .line 314
    move-object v9, v0

    const-string/jumbo v10, "unexpected EOF after single escape"

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_7
    move-object v9, v3

    iget-boolean v9, v9, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    if-eqz v9, :cond_9

    move v9, v1

    const/16 v10, 0x78

    if-eq v9, v10, :cond_8

    move v9, v1

    const/16 v10, 0x58

    if-ne v9, v10, :cond_9

    .line 317
    :cond_8
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result v9

    move v1, v9

    .line 318
    :cond_9
    move-object v9, v0

    const v10, 0xffff

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 319
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 320
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 321
    goto :goto_1

    .line 323
    :cond_a
    move v9, v7

    const/4 v10, 0x4

    if-ne v9, v10, :cond_c

    .line 325
    move v9, v4

    if-nez v9, :cond_b

    const/4 v9, 0x1

    :goto_3
    move v4, v9

    .line 326
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 327
    goto/16 :goto_1

    .line 325
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 329
    :cond_c
    move v9, v4

    if-eqz v9, :cond_d

    .line 332
    move-object v9, v0

    const v10, 0xffff

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 333
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto/16 :goto_1

    .line 338
    :cond_d
    move v9, v7

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 356
    :pswitch_1
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 357
    goto/16 :goto_2

    .line 341
    :pswitch_2
    move v9, v1

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_e

    move-object v9, v6

    sget-object v10, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    if-ne v9, v10, :cond_e

    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 345
    :cond_e
    :pswitch_3
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 346
    goto/16 :goto_1

    .line 348
    :pswitch_4
    const/4 v9, 0x1

    move v4, v9

    .line 349
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 350
    goto/16 :goto_1

    .line 352
    :pswitch_5
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 353
    goto/16 :goto_2

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "ch":I
    move-object v2, p2

    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    return-object v0
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "ch":I
    move-object v2, p2

    .local v2, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v3, p3

    .local v3, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v4, v7

    .line 105
    .local v4, "startPos":I
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 106
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v7

    move v5, v7

    .line 107
    .local v5, "kind":I
    move v7, v5

    packed-switch v7, :pswitch_data_0

    .line 127
    :pswitch_0
    move-object v7, v0

    move v8, v1

    move v9, v4

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid character #\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 112
    .local v6, "err":Ljava/lang/String;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/lispexpr/LispReader;->interactive:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/LispReader;->fatal(Ljava/lang/String;)V

    .line 114
    :goto_1
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v7

    goto :goto_0

    .line 113
    :cond_0
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    .end local v6    # "err":Ljava/lang/String;
    :pswitch_2
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v7

    goto :goto_0

    .line 120
    :pswitch_3
    move-object v7, v2

    move-object v8, v0

    move v9, v1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move-object v1, p1

    .local v1, "pair":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdr":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 1113
    return-void
.end method

.method protected validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispReader;
    move v1, p1

    .local v1, "ch":I
    move-object v2, p2

    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_0

    move v4, v1

    move-object v5, v2

    iget-char v5, v5, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v4, v5, :cond_1

    .line 396
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 400
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :goto_0
    return v0

    .line 397
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    move v4, v1

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    .line 398
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 399
    :cond_2
    move-object v4, v2

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v4

    move v3, v4

    .line 400
    .local v3, "kind":I
    move v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
