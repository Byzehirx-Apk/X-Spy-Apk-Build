.class public Lkawa/lang/SyntaxPattern;
.super Lkawa/lang/Pattern;
.source "SyntaxPattern.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final MATCH_ANY:I = 0x3

.field static final MATCH_ANY_CAR:I = 0x7

.field static final MATCH_EQUALS:I = 0x2

.field static final MATCH_IGNORE:I = 0x18

.field static final MATCH_LENGTH:I = 0x6

.field static final MATCH_LREPEAT:I = 0x5

.field static final MATCH_MISC:I = 0x0

.field static final MATCH_NIL:I = 0x8

.field static final MATCH_PAIR:I = 0x4

.field static final MATCH_VECTOR:I = 0x10

.field static final MATCH_WIDE:I = 0x1


# instance fields
.field literals:[Ljava/lang/Object;

.field program:Ljava/lang/String;

.field varCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 11

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "literal_identifiers":[Ljava/lang/Object;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "program":Ljava/lang/String;
    move-object v2, p2

    .local v2, "literals":[Ljava/lang/Object;
    move v3, p3

    .local v3, "varCount":I
    move-object v4, v0

    invoke-direct {v4}, Lkawa/lang/Pattern;-><init>()V

    .line 106
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 107
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 108
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 17

    .prologue
    .line 121
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object/from16 v1, p1

    .local v1, "programbuf":Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, "pattern":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v4, p4

    .local v4, "literal_identifiers":[Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "tr":Lkawa/lang/Translator;
    move-object v7, v0

    invoke-direct {v7}, Lkawa/lang/Pattern;-><init>()V

    .line 122
    new-instance v7, Ljava/util/Vector;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object v6, v7

    .line 123
    .local v6, "literalsbuf":Ljava/util/Vector;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v5

    invoke-virtual/range {v7 .. v15}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 125
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 126
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Object;

    iput-object v8, v7, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 127
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v8, v8, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    iput v8, v7, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 154
    return-void
.end method

.method private static addInt(Ljava/lang/StringBuffer;I)V
    .locals 5

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "val":I
    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_0

    .line 409
    move-object v2, v0

    move v3, v1

    const/16 v4, 0xd

    shl-int/lit8 v3, v3, 0xd

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 410
    :cond_0
    move-object v2, v0

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 411
    return-void
.end method

.method public static allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 632
    move v0, p0

    .local v0, "varCount":I
    move-object v1, p1

    .local v1, "outer":[Ljava/lang/Object;
    move v3, v0

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 633
    .local v2, "vars":[Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 634
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "varCount":I
    return-object v0
.end method

.method public static getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 15

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "list":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .line 671
    .local v3, "savePos":Ljava/lang/Object;
    move-object v10, v0

    invoke-static {v10}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v10

    move v4, v10

    .line 672
    .local v4, "count":I
    move v10, v4

    if-gez v10, :cond_0

    .line 674
    move-object v10, v2

    const/16 v11, 0x65

    const-string/jumbo v12, "missing or malformed literals list"

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 675
    const/4 v10, 0x0

    move v4, v10

    .line 677
    :cond_0
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v5, v10

    .line 678
    .local v5, "literals":[Ljava/lang/Object;
    const/4 v10, 0x1

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v4

    if-gt v10, v11, :cond_4

    .line 680
    :goto_1
    move-object v10, v0

    instance-of v10, v10, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_1

    .line 682
    move-object v10, v0

    check-cast v10, Lkawa/lang/SyntaxForm;

    move-object v1, v10

    .line 683
    move-object v10, v1

    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 685
    :cond_1
    move-object v10, v0

    check-cast v10, Lgnu/lists/Pair;

    move-object v7, v10

    .line 686
    .local v7, "pair":Lgnu/lists/Pair;
    move-object v10, v2

    move-object v11, v7

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 687
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 689
    .local v8, "literal":Ljava/lang/Object;
    move-object v10, v8

    instance-of v10, v10, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_3

    .line 691
    move-object v10, v8

    move-object v9, v10

    .line 692
    .local v9, "wrapped":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lkawa/lang/SyntaxForm;

    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 696
    :goto_2
    move-object v10, v8

    instance-of v10, v10, Lgnu/mapping/Symbol;

    if-nez v10, :cond_2

    .line 697
    move-object v10, v2

    const/16 v11, 0x65

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "non-symbol \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' in literals list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 698
    :cond_2
    move-object v10, v5

    move v11, v6

    move-object v12, v9

    aput-object v12, v10, v11

    .line 699
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 678
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 695
    .end local v9    # "wrapped":Ljava/lang/Object;
    :cond_3
    move-object v10, v8

    move-object v9, v10

    .restart local v9    # "wrapped":Ljava/lang/Object;
    goto :goto_2

    .line 701
    .end local v7    # "pair":Lgnu/lists/Pair;
    .end local v8    # "literal":Ljava/lang/Object;
    .end local v9    # "wrapped":Ljava/lang/Object;
    :cond_4
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 702
    move-object v10, v5

    move-object v0, v10

    .end local v0    # "list":Ljava/lang/Object;
    return-object v0
.end method

.method private static insertInt(ILjava/lang/StringBuffer;I)I
    .locals 8

    .prologue
    .line 415
    move v0, p0

    .local v0, "offset":I
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "val":I
    move v3, v2

    const v4, 0xffff

    if-le v3, v4, :cond_0

    .line 416
    move v3, v0

    move v4, v0

    move-object v5, v1

    move v6, v2

    const/16 v7, 0xd

    shl-int/lit8 v6, v6, 0xd

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    .line 417
    :cond_0
    move-object v3, v1

    move v4, v0

    move v5, v2

    int-to-char v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 418
    move v3, v0

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .end local v0    # "offset":I
    return v0
.end method

.method public static literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z
    .locals 8

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "id1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "sc1":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "id2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "sc2":Lgnu/expr/ScopeExp;
    move-object v6, v0

    move-object v7, v2

    if-eq v6, v7, :cond_1

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 642
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 663
    .end local v0    # "id1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 643
    .restart local v0    # "id1":Ljava/lang/Object;
    :cond_1
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_2

    .line 644
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 645
    :cond_2
    const/4 v6, 0x0

    move-object v4, v6

    .local v4, "d1":Lgnu/expr/Declaration;
    const/4 v6, 0x0

    move-object v5, v6

    .line 649
    .local v5, "d2":Lgnu/expr/Declaration;
    :goto_1
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_3

    .line 651
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 652
    move-object v6, v4

    if-eqz v6, :cond_5

    .line 653
    .line 656
    :cond_3
    :goto_2
    move-object v6, v3

    if-eqz v6, :cond_4

    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_4

    .line 658
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 659
    move-object v6, v5

    if-eqz v6, :cond_6

    .line 660
    .line 663
    :cond_4
    move-object v6, v4

    move-object v7, v5

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    move v0, v6

    goto :goto_0

    .line 654
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v1, v6

    goto :goto_1

    .line 661
    :cond_6
    move-object v6, v3

    iget-object v6, v6, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v3, v6

    goto :goto_2

    .line 663
    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method


# virtual methods
.method public disassemble()V
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, v0

    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 160
    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;)V
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 165
    return-void
.end method

.method disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V
    .locals 17

    .prologue
    .line 169
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object/from16 v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "limit":I
    const/4 v10, 0x0

    move-object v5, v10

    .line 170
    .local v5, "pattern_names":Ljava/util/Vector;
    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v2

    iget-object v10, v10, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v10, :cond_0

    .line 171
    move-object v10, v2

    iget-object v10, v10, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v10, v10, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object v5, v10

    .line 172
    :cond_0
    const/4 v10, 0x0

    move v6, v10

    .line 173
    .local v6, "value":I
    move v10, v3

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v4

    if-ge v10, v11, :cond_8

    .line 175
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 176
    .local v8, "ch":C
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v7, v7, 0x1

    .line 178
    move v10, v8

    const/4 v11, 0x7

    and-int/lit8 v10, v10, 0x7

    move v9, v10

    .line 179
    .local v9, "opcode":I
    move v10, v6

    const/16 v11, 0xd

    shl-int/lit8 v10, v10, 0xd

    move v11, v8

    const/4 v12, 0x3

    shr-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    move v6, v10

    .line 180
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 232
    :cond_1
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    :goto_1
    const/4 v10, 0x0

    move v6, v10

    .line 236
    goto :goto_0

    .line 183
    :pswitch_0
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - WIDE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    goto/16 :goto_0

    .line 186
    :pswitch_1
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - EQUALS["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    if-eqz v10, :cond_2

    move v10, v6

    if-ltz v10, :cond_2

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    array-length v11, v11

    if-ge v10, v11, :cond_2

    .line 188
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    move v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 190
    goto :goto_1

    .line 193
    :pswitch_2
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move v12, v9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    const-string/jumbo v12, " - ANY["

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    move-object v10, v5

    if-eqz v10, :cond_3

    move v10, v6

    if-ltz v10, :cond_3

    move v10, v6

    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 197
    move-object v10, v1

    move-object v11, v5

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 198
    :cond_3
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 199
    goto/16 :goto_1

    .line 193
    :cond_4
    const-string/jumbo v12, " - ANY_CAR["

    goto :goto_2

    .line 201
    :pswitch_3
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - PAIR["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    goto/16 :goto_1

    .line 204
    :pswitch_4
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - LREPEAT["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v7

    move v14, v7

    move v15, v6

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 206
    move v10, v7

    move v11, v6

    add-int/2addr v10, v11

    move v7, v10

    .line 207
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": - repeat first var:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v13, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x3

    shr-int/lit8 v12, v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": - repeast nested vars:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v13, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x3

    shr-int/lit8 v12, v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    goto/16 :goto_1

    .line 211
    :pswitch_5
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " - LENGTH "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " pairs. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    const-string/jumbo v12, "pure list"

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    goto/16 :goto_1

    .line 211
    :cond_5
    const-string/jumbo v12, "impure list"

    goto :goto_3

    .line 215
    :pswitch_6
    move-object v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[misc ch:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " n:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    move v10, v8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    .line 218
    move-object v10, v1

    const-string/jumbo v11, " - NIL"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    goto/16 :goto_1

    .line 221
    :cond_6
    move v10, v8

    const/16 v11, 0x10

    if-ne v10, v11, :cond_7

    .line 223
    move-object v10, v1

    const-string/jumbo v11, " - VECTOR"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    goto/16 :goto_1

    .line 226
    :cond_7
    move v10, v8

    const/16 v11, 0x18

    if-ne v10, v11, :cond_1

    .line 228
    move-object v10, v1

    const-string/jumbo v11, " - IGNORE"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    goto/16 :goto_1

    .line 237
    .end local v8    # "ch":C
    .end local v9    # "opcode":I
    :cond_8
    return-void

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 11

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v5

    move v4, v5

    .line 101
    .local v4, "r":Z
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lkawa/lang/SyntaxPattern;
    return v0
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 37

    .prologue
    .line 446
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/SyntaxPattern;
    move-object/from16 v3, p1

    .local v3, "obj":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "vars":[Ljava/lang/Object;
    move/from16 v5, p3

    .local v5, "start_vars":I
    move/from16 v6, p4

    .local v6, "pc":I
    move-object/from16 v7, p5

    .local v7, "syntax":Lkawa/lang/SyntaxForm;
    const/16 v30, 0x0

    move/from16 v8, v30

    .line 450
    .local v8, "value":I
    :cond_0
    :goto_0
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 452
    move-object/from16 v30, v3

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v30

    .line 453
    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    goto :goto_0

    .line 455
    :cond_1
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v31, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v10, v30

    .line 456
    .local v10, "ch":C
    move/from16 v30, v10

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    move/from16 v11, v30

    .line 457
    .local v11, "opcode":I
    move/from16 v30, v8

    const/16 v31, 0xd

    shl-int/lit8 v30, v30, 0xd

    move/from16 v31, v10

    const/16 v32, 0x3

    shr-int/lit8 v31, v31, 0x3

    or-int v30, v30, v31

    move/from16 v8, v30

    .line 458
    move/from16 v30, v11

    packed-switch v30, :pswitch_data_0

    .line 608
    :pswitch_0
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lkawa/lang/SyntaxPattern;->disassemble()V

    .line 609
    new-instance v30, Ljava/lang/Error;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v36, v32

    move-object/from16 v32, v36

    move-object/from16 v33, v36

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "unrecognized pattern opcode @pc:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move/from16 v33, v6

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v30

    .line 461
    :pswitch_1
    goto :goto_0

    .line 463
    :pswitch_2
    move/from16 v30, v10

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 464
    move-object/from16 v30, v3

    sget-object v31, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v30, 0x1

    :goto_1
    move/from16 v2, v30

    .line 605
    .end local v2    # "this":Lkawa/lang/SyntaxPattern;
    :goto_2
    return v2

    .line 464
    .restart local v2    # "this":Lkawa/lang/SyntaxPattern;
    :cond_2
    const/16 v30, 0x0

    goto :goto_1

    .line 465
    :cond_3
    move/from16 v30, v10

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 467
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/FVector;

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 468
    const/16 v30, 0x0

    move/from16 v2, v30

    goto :goto_2

    .line 469
    :cond_4
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    check-cast v31, Lgnu/lists/FVector;

    invoke-static/range {v31 .. v31}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v31

    move-object/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    move-object/from16 v35, v7

    invoke-virtual/range {v30 .. v35}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v30

    move/from16 v2, v30

    goto :goto_2

    .line 472
    :cond_5
    move/from16 v30, v10

    const/16 v31, 0x18

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 473
    const/16 v30, 0x1

    move/from16 v2, v30

    goto :goto_2

    .line 475
    :cond_6
    new-instance v30, Ljava/lang/Error;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    const-string/jumbo v32, "unknwon pattern opcode"

    invoke-direct/range {v31 .. v32}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v30

    .line 477
    :pswitch_3
    move-object/from16 v30, v3

    sget-object v31, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_7

    const/16 v30, 0x1

    :goto_3
    move/from16 v2, v30

    goto :goto_2

    :cond_7
    const/16 v30, 0x0

    goto :goto_3

    .line 479
    :pswitch_4
    move/from16 v30, v8

    const/16 v31, 0x1

    shr-int/lit8 v30, v30, 0x1

    move/from16 v12, v30

    .line 480
    .local v12, "npairs":I
    move-object/from16 v30, v3

    move-object/from16 v13, v30

    .line 481
    .local v13, "o":Ljava/lang/Object;
    const/16 v30, 0x0

    move/from16 v14, v30

    .line 483
    .local v14, "i":I
    :goto_4
    move-object/from16 v30, v13

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 484
    move-object/from16 v30, v13

    check-cast v30, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v13, v30

    goto :goto_4

    .line 485
    :cond_8
    move/from16 v30, v14

    move/from16 v31, v12

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 487
    move/from16 v30, v8

    const/16 v31, 0x1

    and-int/lit8 v30, v30, 0x1

    if-nez v30, :cond_a

    move-object/from16 v30, v13

    sget-object v31, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_b

    .line 488
    :cond_9
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 487
    :cond_a
    move-object/from16 v30, v13

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-nez v30, :cond_9

    .line 496
    :cond_b
    const/16 v30, 0x0

    move/from16 v8, v30

    .line 497
    goto/16 :goto_0

    .line 491
    :cond_c
    move-object/from16 v30, v13

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-eqz v30, :cond_d

    .line 492
    move-object/from16 v30, v13

    check-cast v30, Lgnu/lists/Pair;

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v13, v30

    .line 481
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 494
    :cond_d
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 499
    .end local v12    # "npairs":I
    .end local v13    # "o":Ljava/lang/Object;
    .end local v14    # "i":I
    :pswitch_5
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-nez v30, :cond_e

    .line 500
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 501
    :cond_e
    move-object/from16 v30, v3

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v9, v30

    .line 502
    .local v9, "p":Lgnu/lists/Pair;
    move-object/from16 v30, v2

    move-object/from16 v31, v9

    move-object/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    move-object/from16 v35, v7

    invoke-virtual/range {v30 .. v35}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v30

    if-nez v30, :cond_f

    .line 503
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 504
    :cond_f
    move/from16 v30, v6

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v6, v30

    .line 505
    const/16 v30, 0x0

    move/from16 v8, v30

    .line 506
    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    .line 507
    goto/16 :goto_0

    .line 509
    .end local v9    # "p":Lgnu/lists/Pair;
    :pswitch_6
    move/from16 v30, v6

    move/from16 v14, v30

    .line 510
    .local v14, "repeat_pc":I
    move/from16 v30, v6

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v6, v30

    .line 511
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v31, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v36, v30

    move/from16 v30, v36

    move/from16 v31, v36

    move/from16 v10, v31

    const/16 v31, 0x3

    shr-int/lit8 v30, v30, 0x3

    move/from16 v15, v30

    .line 512
    .local v15, "subvar0":I
    :goto_5
    move/from16 v30, v10

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 513
    move/from16 v30, v15

    const/16 v31, 0xd

    shl-int/lit8 v30, v30, 0xd

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v32, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v36, v31

    move/from16 v31, v36

    move/from16 v32, v36

    move/from16 v10, v32

    const/16 v32, 0x3

    shr-int/lit8 v31, v31, 0x3

    or-int v30, v30, v31

    move/from16 v15, v30

    goto :goto_5

    .line 514
    :cond_10
    move/from16 v30, v15

    move/from16 v31, v5

    add-int v30, v30, v31

    move/from16 v15, v30

    .line 515
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v31, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    const/16 v31, 0x3

    shr-int/lit8 v30, v30, 0x3

    move/from16 v16, v30

    .line 516
    .local v16, "subvarN":I
    :goto_6
    move/from16 v30, v10

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 517
    move/from16 v30, v16

    const/16 v31, 0xd

    shl-int/lit8 v30, v30, 0xd

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v32, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v36, v31

    move/from16 v31, v36

    move/from16 v32, v36

    move/from16 v10, v32

    const/16 v32, 0x3

    shr-int/lit8 v31, v31, 0x3

    or-int v30, v30, v31

    move/from16 v16, v30

    goto :goto_6

    .line 519
    :cond_11
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v31, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v10, v30

    .line 520
    const/16 v30, 0x1

    move/from16 v17, v30

    .line 522
    .local v17, "listRequired":Z
    move/from16 v30, v10

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 524
    const/16 v30, 0x0

    move/from16 v18, v30

    .line 535
    .local v18, "pairsRequired":I
    :goto_7
    move-object/from16 v30, v3

    invoke-static/range {v30 .. v30}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v30

    move/from16 v19, v30

    .line 538
    .local v19, "pairsValue":I
    move/from16 v30, v19

    if-ltz v30, :cond_16

    .line 539
    const/16 v30, 0x1

    move/from16 v20, v30

    .line 545
    .local v20, "listValue":Z
    :goto_8
    move/from16 v30, v19

    move/from16 v31, v18

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_12

    move/from16 v30, v17

    if-eqz v30, :cond_17

    move/from16 v30, v20

    if-nez v30, :cond_17

    .line 546
    :cond_12
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 528
    .end local v18    # "pairsRequired":I
    .end local v19    # "pairsValue":I
    .end local v20    # "listValue":Z
    :cond_13
    move/from16 v30, v10

    const/16 v31, 0x3

    shr-int/lit8 v30, v30, 0x3

    move/from16 v8, v30

    .line 529
    :goto_9
    move/from16 v30, v10

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 530
    move/from16 v30, v8

    const/16 v31, 0xd

    shl-int/lit8 v30, v30, 0xd

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v32, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v36, v31

    move/from16 v31, v36

    move/from16 v32, v36

    move/from16 v10, v32

    const/16 v32, 0x3

    shr-int/lit8 v31, v31, 0x3

    or-int v30, v30, v31

    move/from16 v8, v30

    goto :goto_9

    .line 531
    :cond_14
    move/from16 v30, v8

    const/16 v31, 0x1

    and-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_15

    .line 532
    const/16 v30, 0x0

    move/from16 v17, v30

    .line 533
    :cond_15
    move/from16 v30, v8

    const/16 v31, 0x1

    shr-int/lit8 v30, v30, 0x1

    move/from16 v18, v30

    .restart local v18    # "pairsRequired":I
    goto :goto_7

    .line 542
    .restart local v19    # "pairsValue":I
    :cond_16
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 543
    .restart local v20    # "listValue":Z
    const/16 v30, -0x1

    move/from16 v31, v19

    rsub-int/lit8 v30, v31, -0x1

    move/from16 v19, v30

    goto :goto_8

    .line 547
    :cond_17
    move/from16 v30, v19

    move/from16 v31, v18

    sub-int v30, v30, v31

    move/from16 v21, v30

    .line 548
    .local v21, "repeat_count":I
    move/from16 v30, v16

    move/from16 v0, v30

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v22, v30

    .line 550
    .local v22, "arrays":[[Ljava/lang/Object;
    const/16 v30, 0x0

    move/from16 v23, v30

    .local v23, "j":I
    :goto_a
    move/from16 v30, v23

    move/from16 v31, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    .line 551
    move-object/from16 v30, v22

    move/from16 v31, v23

    move/from16 v32, v21

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    .line 550
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 552
    :cond_18
    const/16 v30, 0x0

    move/from16 v23, v30

    .local v23, "i":I
    :goto_b
    move/from16 v30, v23

    move/from16 v31, v21

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 554
    :goto_c
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_19

    .line 556
    move-object/from16 v30, v3

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v30

    .line 557
    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    goto :goto_c

    .line 559
    :cond_19
    move-object/from16 v30, v3

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v9, v30

    .line 560
    .restart local v9    # "p":Lgnu/lists/Pair;
    move-object/from16 v30, v2

    move-object/from16 v31, v9

    move-object/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v14

    move-object/from16 v35, v7

    invoke-virtual/range {v30 .. v35}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v30

    if-nez v30, :cond_1a

    .line 561
    const/16 v30, 0x0

    move/from16 v2, v30

    goto/16 :goto_2

    .line 562
    :cond_1a
    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    .line 563
    const/16 v30, 0x0

    move/from16 v24, v30

    .local v24, "j":I
    :goto_d
    move/from16 v30, v24

    move/from16 v31, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1b

    .line 564
    move-object/from16 v30, v22

    move/from16 v31, v24

    aget-object v30, v30, v31

    move/from16 v31, v23

    move-object/from16 v32, v4

    move/from16 v33, v15

    move/from16 v34, v24

    add-int v33, v33, v34

    aget-object v32, v32, v33

    aput-object v32, v30, v31

    .line 563
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 552
    :cond_1b
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 566
    .end local v9    # "p":Lgnu/lists/Pair;
    .end local v24    # "j":I
    :cond_1c
    const/16 v30, 0x0

    move/from16 v23, v30

    .local v23, "j":I
    :goto_e
    move/from16 v30, v23

    move/from16 v31, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1d

    .line 567
    move-object/from16 v30, v4

    move/from16 v31, v15

    move/from16 v32, v23

    add-int v31, v31, v32

    move-object/from16 v32, v22

    move/from16 v33, v23

    aget-object v32, v32, v33

    aput-object v32, v30, v31

    .line 566
    add-int/lit8 v23, v23, 0x1

    goto :goto_e

    .line 568
    :cond_1d
    const/16 v30, 0x0

    move/from16 v8, v30

    .line 569
    move/from16 v30, v18

    if-nez v30, :cond_0

    move/from16 v30, v17

    if-eqz v30, :cond_0

    .line 570
    const/16 v30, 0x1

    move/from16 v2, v30

    goto/16 :goto_2

    .line 573
    .end local v14    # "repeat_pc":I
    .end local v15    # "subvar0":I
    .end local v16    # "subvarN":I
    .end local v17    # "listRequired":Z
    .end local v18    # "pairsRequired":I
    .end local v19    # "pairsValue":I
    .end local v20    # "listValue":Z
    .end local v21    # "repeat_count":I
    .end local v22    # "arrays":[[Ljava/lang/Object;
    .end local v23    # "j":I
    :pswitch_7
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    move-object/from16 v30, v0

    move/from16 v31, v8

    aget-object v30, v30, v31

    move-object/from16 v23, v30

    .line 576
    .local v23, "lit":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v30

    check-cast v30, Lkawa/lang/Translator;

    move-object/from16 v28, v30

    .line 577
    .local v28, "tr":Lkawa/lang/Translator;
    move-object/from16 v30, v23

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 579
    move-object/from16 v30, v23

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v29, v30

    .line 580
    .local v29, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v30, v29

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v24, v30

    .line 581
    .local v24, "id1":Ljava/lang/Object;
    move-object/from16 v30, v29

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v30

    move-object/from16 v26, v30

    .line 589
    .end local v29    # "sf":Lkawa/lang/SyntaxForm;
    .local v26, "sc1":Lgnu/expr/ScopeExp;
    :goto_f
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 591
    move-object/from16 v30, v3

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v29, v30

    .line 592
    .restart local v29    # "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v30, v29

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v25, v30

    .line 593
    .local v25, "id2":Ljava/lang/Object;
    move-object/from16 v30, v29

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v30

    move-object/from16 v27, v30

    .line 600
    .end local v29    # "sf":Lkawa/lang/SyntaxForm;
    .local v27, "sc2":Lgnu/expr/ScopeExp;
    :goto_10
    move-object/from16 v30, v24

    move-object/from16 v31, v26

    move-object/from16 v32, v25

    move-object/from16 v33, v27

    invoke-static/range {v30 .. v33}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v30

    move/from16 v2, v30

    goto/16 :goto_2

    .line 585
    .end local v24    # "id1":Ljava/lang/Object;
    .end local v25    # "id2":Ljava/lang/Object;
    .end local v26    # "sc1":Lgnu/expr/ScopeExp;
    .end local v27    # "sc2":Lgnu/expr/ScopeExp;
    :cond_1e
    move-object/from16 v30, v23

    move-object/from16 v24, v30

    .line 586
    .restart local v24    # "id1":Ljava/lang/Object;
    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v30

    move-object/from16 v29, v30

    .line 587
    .local v29, "curSyntax":Lkawa/lang/Syntax;
    move-object/from16 v30, v29

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/Macro;

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    move-object/from16 v30, v29

    check-cast v30, Lkawa/lang/Macro;

    invoke-virtual/range {v30 .. v30}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v30

    :goto_11
    move-object/from16 v26, v30

    .restart local v26    # "sc1":Lgnu/expr/ScopeExp;
    goto :goto_f

    .end local v26    # "sc1":Lgnu/expr/ScopeExp;
    :cond_1f
    const/16 v30, 0x0

    goto :goto_11

    .line 597
    .end local v29    # "curSyntax":Lkawa/lang/Syntax;
    .restart local v26    # "sc1":Lgnu/expr/ScopeExp;
    :cond_20
    move-object/from16 v30, v3

    move-object/from16 v25, v30

    .line 598
    .restart local v25    # "id2":Ljava/lang/Object;
    move-object/from16 v30, v7

    if-nez v30, :cond_21

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v30

    :goto_12
    move-object/from16 v27, v30

    .restart local v27    # "sc2":Lgnu/expr/ScopeExp;
    goto :goto_10

    .end local v27    # "sc2":Lgnu/expr/ScopeExp;
    :cond_21
    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v30

    goto :goto_12

    .line 602
    .end local v23    # "lit":Ljava/lang/Object;
    .end local v24    # "id1":Ljava/lang/Object;
    .end local v25    # "id2":Ljava/lang/Object;
    .end local v26    # "sc1":Lgnu/expr/ScopeExp;
    .end local v28    # "tr":Lkawa/lang/Translator;
    :pswitch_8
    move-object/from16 v30, v7

    if-eqz v30, :cond_22

    .line 603
    move-object/from16 v30, v3

    move-object/from16 v31, v7

    invoke-static/range {v30 .. v31}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    .line 604
    :cond_22
    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v8

    add-int v31, v31, v32

    move-object/from16 v32, v3

    aput-object v32, v30, v31

    .line 605
    const/16 v30, 0x1

    move/from16 v2, v30

    goto/16 :goto_2

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 16

    .prologue
    .line 428
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object/from16 v1, p1

    .local v1, "p":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "start_vars":I
    move/from16 v4, p4

    .local v4, "pc":I
    move-object/from16 v5, p5

    .local v5, "syntax":Lkawa/lang/SyntaxForm;
    move v9, v4

    move v6, v9

    .line 430
    .local v6, "pc_start":I
    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v10, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v7, v10

    .local v7, "ch":C
    const/4 v10, 0x3

    shr-int/lit8 v9, v9, 0x3

    move v8, v9

    .line 431
    .local v8, "value":I
    :goto_0
    move v9, v7

    const/4 v10, 0x7

    and-int/lit8 v9, v9, 0x7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 432
    move v9, v8

    const/16 v10, 0xd

    shl-int/lit8 v9, v9, 0xd

    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v15, v10

    move v10, v15

    move v11, v15

    move v7, v11

    const/4 v11, 0x3

    shr-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    move v8, v9

    goto :goto_0

    .line 433
    :cond_0
    move v9, v7

    const/4 v10, 0x7

    and-int/lit8 v9, v9, 0x7

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2

    .line 435
    move-object v9, v5

    if-eqz v9, :cond_1

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lkawa/lang/SyntaxForm;

    if-nez v9, :cond_1

    .line 436
    move-object v9, v1

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    invoke-static {v10, v11}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v1, v9

    .line 437
    :cond_1
    move-object v9, v2

    move v10, v3

    move v11, v8

    add-int/2addr v10, v11

    move-object v11, v1

    aput-object v11, v9, v10

    .line 438
    const/4 v9, 0x1

    move v0, v9

    .line 440
    .end local v0    # "this":Lkawa/lang/SyntaxPattern;
    :goto_1
    return v0

    .restart local v0    # "this":Lkawa/lang/SyntaxPattern;
    :cond_2
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v2

    move v12, v3

    move v13, v6

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v9

    move v0, v9

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<syntax-pattern>"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 708
    return-void
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
    .line 624
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v2, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 625
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 626
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 627
    return-void
.end method

.method translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V
    .locals 34

    .prologue
    .line 250
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/SyntaxPattern;
    move-object/from16 v3, p1

    .local v3, "pattern":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "program":Ljava/lang/StringBuffer;
    move-object/from16 v5, p3

    .local v5, "literal_identifiers":[Ljava/lang/Object;
    move/from16 v6, p4

    .local v6, "nesting":I
    move-object/from16 v7, p5

    .local v7, "literals":Ljava/util/Vector;
    move-object/from16 v8, p6

    .local v8, "syntax":Lkawa/lang/SyntaxForm;
    move/from16 v9, p7

    .local v9, "context":C
    move-object/from16 v10, p8

    .local v10, "tr":Lkawa/lang/Translator;
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 251
    .local v11, "patternScope":Lkawa/lang/PatternScope;
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v12, v24

    .line 254
    .end local v3    # "pattern":Ljava/lang/Object;
    .local v12, "patternNames":Ljava/util/Vector;
    :goto_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 256
    move-object/from16 v24, v3

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v24

    .line 257
    move-object/from16 v24, v8

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    .restart local v3    # "pattern":Ljava/lang/Object;
    goto :goto_0

    .line 259
    .end local v3    # "pattern":Ljava/lang/Object;
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 261
    move-object/from16 v24, v10

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v13, v24

    .line 264
    .local v13, "savePos":Ljava/lang/Object;
    move-object/from16 v24, v4

    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    move/from16 v14, v24

    .line 265
    .local v14, "start_pc":I
    move-object/from16 v24, v4

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 266
    move-object/from16 v24, v3

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v15, v24

    .line 267
    .local v15, "pair":Lgnu/lists/Pair;
    move-object/from16 v24, v8

    move-object/from16 v16, v24

    .line 268
    .local v16, "car_syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 269
    .local v17, "next":Ljava/lang/Object;
    :goto_1
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 271
    move-object/from16 v24, v17

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v24

    .line 272
    move-object/from16 v24, v8

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    goto :goto_1

    .line 274
    :cond_1
    const/16 v24, 0x0

    move/from16 v18, v24

    .line 275
    .local v18, "repeat":Z
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v24, v10

    move-object/from16 v25, v17

    check-cast v25, Lgnu/lists/Pair;

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    const-string/jumbo v26, "..."

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 278
    const/16 v24, 0x1

    move/from16 v18, v24

    .line 279
    move-object/from16 v24, v17

    check-cast v24, Lgnu/lists/Pair;

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 280
    :goto_2
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 282
    move-object/from16 v24, v17

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v24

    .line 283
    move-object/from16 v24, v8

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    goto :goto_2

    .line 287
    :cond_2
    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v19, v24

    .line 288
    .local v19, "subvar0":I
    move/from16 v24, v9

    const/16 v25, 0x50

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 289
    const/16 v24, 0x0

    move/from16 v9, v24

    .line 290
    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v18

    if-eqz v28, :cond_5

    move/from16 v28, v6

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    :goto_3
    move-object/from16 v29, v7

    move-object/from16 v30, v16

    move/from16 v31, v9

    const/16 v32, 0x56

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    const/16 v31, 0x0

    :goto_4
    move-object/from16 v32, v10

    invoke-virtual/range {v24 .. v32}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 294
    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v25, v19

    sub-int v24, v24, v25

    move/from16 v20, v24

    .line 295
    .local v20, "subvarN":I
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    move/from16 v25, v14

    sub-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3

    shl-int/lit8 v24, v24, 0x3

    move/from16 v25, v18

    if-eqz v25, :cond_7

    const/16 v25, 0x5

    :goto_5
    or-int v24, v24, v25

    move/from16 v21, v24

    .line 297
    .local v21, "width":I
    move/from16 v24, v21

    const v25, 0xffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 298
    move/from16 v24, v14

    move/from16 v25, v14

    move-object/from16 v26, v4

    move/from16 v27, v21

    const/16 v28, 0xd

    shr-int/lit8 v27, v27, 0xd

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v25 .. v27}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 300
    :cond_4
    move-object/from16 v24, v4

    move/from16 v25, v14

    move/from16 v26, v21

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 302
    move-object/from16 v24, v17

    invoke-static/range {v24 .. v24}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v24

    move/from16 v22, v24

    .line 303
    .local v22, "restLength":I
    move/from16 v24, v22

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 305
    move-object/from16 v24, v10

    const-string/jumbo v25, "cyclic pattern list"

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 332
    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 401
    .end local v13    # "savePos":Ljava/lang/Object;
    .end local v14    # "start_pc":I
    .end local v15    # "pair":Lgnu/lists/Pair;
    .end local v16    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v17    # "next":Ljava/lang/Object;
    .end local v18    # "repeat":Z
    .end local v19    # "subvar0":I
    .end local v20    # "subvarN":I
    .end local v21    # "width":I
    .end local v22    # "restLength":I
    :goto_6
    return-void

    .line 290
    .restart local v13    # "savePos":Ljava/lang/Object;
    .restart local v14    # "start_pc":I
    .restart local v15    # "pair":Lgnu/lists/Pair;
    .restart local v16    # "car_syntax":Lkawa/lang/SyntaxForm;
    .restart local v17    # "next":Ljava/lang/Object;
    .restart local v18    # "repeat":Z
    .restart local v19    # "subvar0":I
    :cond_5
    move/from16 v28, v6

    goto/16 :goto_3

    :cond_6
    const/16 v31, 0x50

    goto/16 :goto_4

    .line 295
    .restart local v20    # "subvarN":I
    :cond_7
    const/16 v25, 0x4

    goto :goto_5

    .line 309
    .restart local v21    # "width":I
    .restart local v22    # "restLength":I
    :cond_8
    move/from16 v24, v18

    if-eqz v24, :cond_a

    .line 311
    move-object/from16 v24, v4

    move/from16 v25, v19

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    :try_start_1
    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 312
    move-object/from16 v24, v4

    move/from16 v25, v20

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 313
    move-object/from16 v24, v17

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 315
    move-object/from16 v24, v4

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v24

    .line 332
    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_6

    .line 321
    :cond_9
    move/from16 v24, v22

    if-ltz v24, :cond_b

    move/from16 v24, v22

    const/16 v25, 0x1

    shl-int/lit8 v24, v24, 0x1

    :goto_7
    move/from16 v22, v24

    .line 323
    move-object/from16 v24, v4

    move/from16 v25, v22

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    const/16 v26, 0x6

    or-int/lit8 v25, v25, 0x6

    :try_start_2
    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    :cond_a
    move-object/from16 v24, v17

    move-object/from16 v3, v24

    .line 332
    .restart local v3    # "pattern":Ljava/lang/Object;
    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    .end local v3    # "pattern":Ljava/lang/Object;
    :cond_b
    move/from16 v24, v22

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    shl-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 332
    .end local v14    # "start_pc":I
    .end local v15    # "pair":Lgnu/lists/Pair;
    .end local v16    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v17    # "next":Ljava/lang/Object;
    .end local v18    # "repeat":Z
    .end local v19    # "subvar0":I
    .end local v20    # "subvarN":I
    .end local v21    # "width":I
    .end local v22    # "restLength":I
    :catchall_0
    move-exception v24

    move-object/from16 v23, v24

    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v24, v23

    throw v24

    .line 335
    .end local v13    # "savePos":Ljava/lang/Object;
    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 337
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v13, v24

    .local v13, "j":I
    :goto_8
    add-int/lit8 v13, v13, -0x1

    move/from16 v24, v13

    if-ltz v24, :cond_12

    .line 339
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v24

    move-object/from16 v14, v24

    .line 340
    .local v14, "current":Lgnu/expr/ScopeExp;
    move-object/from16 v24, v8

    if-nez v24, :cond_e

    move-object/from16 v24, v14

    :goto_9
    move-object/from16 v15, v24

    .line 342
    .local v15, "scope1":Lgnu/expr/ScopeExp;
    move-object/from16 v24, v5

    move/from16 v25, v13

    aget-object v24, v24, v25

    move-object/from16 v17, v24

    .line 343
    .local v17, "literal":Ljava/lang/Object;
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 345
    move-object/from16 v24, v17

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v24

    .line 347
    .local v18, "syntax2":Lkawa/lang/SyntaxForm;
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 348
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v24

    move-object/from16 v16, v24

    .line 354
    .end local v18    # "syntax2":Lkawa/lang/SyntaxForm;
    .local v16, "scope2":Lgnu/expr/ScopeExp;
    :goto_a
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    move-object/from16 v26, v17

    move-object/from16 v27, v16

    invoke-static/range {v24 .. v27}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 357
    move-object/from16 v24, v7

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v24

    move/from16 v18, v24

    .line 358
    .local v18, "i":I
    move/from16 v24, v18

    if-gez v24, :cond_d

    .line 360
    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v18, v24

    .line 361
    move-object/from16 v24, v7

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    :cond_d
    move-object/from16 v24, v4

    move/from16 v25, v18

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    const/16 v26, 0x2

    or-int/lit8 v25, v25, 0x2

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 364
    goto/16 :goto_6

    .line 340
    .end local v15    # "scope1":Lgnu/expr/ScopeExp;
    .end local v16    # "scope2":Lgnu/expr/ScopeExp;
    .end local v17    # "literal":Ljava/lang/Object;
    .end local v18    # "i":I
    :cond_e
    move-object/from16 v24, v8

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v24

    goto :goto_9

    .line 350
    .restart local v15    # "scope1":Lgnu/expr/ScopeExp;
    .restart local v17    # "literal":Ljava/lang/Object;
    :cond_f
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 351
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v24

    move-object/from16 v16, v24

    .restart local v16    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_a

    .line 353
    .end local v16    # "scope2":Lgnu/expr/ScopeExp;
    :cond_10
    move-object/from16 v24, v14

    move-object/from16 v16, v24

    .restart local v16    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_a

    .line 366
    :cond_11
    goto/16 :goto_8

    .line 367
    .end local v14    # "current":Lgnu/expr/ScopeExp;
    .end local v15    # "scope1":Lgnu/expr/ScopeExp;
    .end local v16    # "scope2":Lgnu/expr/ScopeExp;
    .end local v17    # "literal":Ljava/lang/Object;
    :cond_12
    move-object/from16 v24, v12

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 368
    move-object/from16 v24, v10

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "duplicated pattern variable "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    .line 369
    :cond_13
    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v13, v24

    .line 370
    .local v13, "i":I
    move-object/from16 v24, v12

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    move/from16 v24, v9

    const/16 v25, 0x50

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    const/16 v24, 0x1

    :goto_b
    move/from16 v14, v24

    .line 372
    .local v14, "matchCar":Z
    move/from16 v24, v6

    const/16 v25, 0x1

    shl-int/lit8 v24, v24, 0x1

    move/from16 v25, v14

    if-eqz v25, :cond_15

    const/16 v25, 0x1

    :goto_c
    add-int v24, v24, v25

    move/from16 v15, v24

    .line 373
    .local v15, "n":I
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    move/from16 v25, v15

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 374
    move-object/from16 v24, v11

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/PatternScope;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v24

    move-object/from16 v16, v24

    .line 375
    .local v16, "decl":Lgnu/expr/Declaration;
    move-object/from16 v24, v16

    move-object/from16 v25, v10

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 376
    move-object/from16 v24, v10

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 377
    move-object/from16 v24, v4

    move/from16 v25, v13

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    move/from16 v26, v14

    if-eqz v26, :cond_16

    const/16 v26, 0x7

    :goto_d
    or-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 378
    goto/16 :goto_6

    .line 371
    .end local v14    # "matchCar":Z
    .end local v15    # "n":I
    .end local v16    # "decl":Lgnu/expr/Declaration;
    :cond_14
    const/16 v24, 0x0

    goto :goto_b

    .line 372
    .restart local v14    # "matchCar":Z
    :cond_15
    const/16 v25, 0x0

    goto :goto_c

    .line 377
    .restart local v15    # "n":I
    .restart local v16    # "decl":Lgnu/expr/Declaration;
    :cond_16
    const/16 v26, 0x3

    goto :goto_d

    .line 380
    .end local v13    # "i":I
    .end local v14    # "matchCar":Z
    .end local v15    # "n":I
    .end local v16    # "decl":Lgnu/expr/Declaration;
    :cond_17
    move-object/from16 v24, v3

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 382
    move-object/from16 v24, v4

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 383
    goto/16 :goto_6

    .line 385
    :cond_18
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/FVector;

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 387
    move-object/from16 v24, v4

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 388
    move-object/from16 v24, v3

    check-cast v24, Lgnu/lists/FVector;

    invoke-static/range {v24 .. v24}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v24

    move-object/from16 v3, v24

    .line 389
    .local v3, "pattern":Lgnu/lists/LList;
    const/16 v24, 0x56

    move/from16 v9, v24

    .line 390
    goto/16 :goto_0

    .line 394
    .end local v3    # "pattern":Lgnu/lists/LList;
    :cond_19
    move-object/from16 v24, v7

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v24

    move/from16 v13, v24

    .line 395
    .restart local v13    # "i":I
    move/from16 v24, v13

    if-gez v24, :cond_1a

    .line 397
    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v13, v24

    .line 398
    move-object/from16 v24, v7

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_1a
    move-object/from16 v24, v4

    move/from16 v25, v13

    const/16 v26, 0x3

    shl-int/lit8 v25, v25, 0x3

    const/16 v26, 0x2

    or-int/lit8 v25, v25, 0x2

    invoke-static/range {v24 .. v25}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 401
    goto/16 :goto_6
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, v0

    iget v1, v1, Lkawa/lang/SyntaxPattern;->varCount:I

    move v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxPattern;
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxPattern;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/SyntaxPattern;->varCount:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 619
    return-void
.end method
