.class public Lkawa/lang/SyntaxTemplate;
.super Ljava/lang/Object;
.source "SyntaxTemplate.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BUILD_CONS:I = 0x1

.field static final BUILD_DOTS:I = 0x5

.field static final BUILD_LIST1:I = 0x8

.field static final BUILD_LITERAL:I = 0x4

.field static final BUILD_MISC:I = 0x0

.field static final BUILD_NIL:I = 0x10

.field static final BUILD_SYNTAX:I = 0x18

.field static final BUILD_VAR:I = 0x2

.field static final BUILD_VAR_CAR:I = 0x3

.field static final BUILD_VECTOR:I = 0x28

.field static final BUILD_WIDE:I = 0x7

.field static final dots3:Ljava/lang/String; = "..."


# instance fields
.field literal_values:[Ljava/lang/Object;

.field max_nesting:I

.field patternNesting:Ljava/lang/String;

.field template_program:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 17

    .prologue
    .line 163
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object/from16 v1, p1

    .local v1, "template":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 164
    move-object v7, v0

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    iget-object v8, v8, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v8, :cond_1

    :cond_0
    const-string/jumbo v8, ""

    :goto_0
    iput-object v8, v7, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 166
    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v7

    .line 167
    .local v4, "program":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/util/Vector;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object v5, v7

    .line 169
    .local v5, "literals_vector":Ljava/util/Vector;
    new-instance v7, Ljava/util/IdentityHashMap;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v6, v7

    .line 173
    .local v6, "seen":Ljava/util/IdentityHashMap;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v3

    invoke-virtual/range {v7 .. v15}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v7

    .line 175
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 176
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Object;

    iput-object v8, v7, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 177
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 195
    return-void

    .line 164
    .end local v4    # "program":Ljava/lang/StringBuffer;
    .end local v5    # "literals_vector":Ljava/util/Vector;
    .end local v6    # "seen":Ljava/util/IdentityHashMap;
    :cond_1
    move-object v8, v3

    iget-object v8, v8, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v8, v8, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "patternNesting":Ljava/lang/String;
    move-object v2, p2

    .local v2, "template_program":Ljava/lang/String;
    move-object v3, p3

    .local v3, "literal_values":[Ljava/lang/Object;
    move v4, p4

    .local v4, "max_nesting":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 157
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 158
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 159
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 160
    return-void
.end method

.method private get_count(Ljava/lang/Object;I[I)I
    .locals 8

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "var":Ljava/lang/Object;
    move v2, p2

    .local v2, "nesting":I
    move-object v3, p3

    .local v3, "indexes":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "level":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 377
    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v6, v3

    move v7, v4

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object v1, v5

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    :cond_0
    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 379
    .local v4, "var_array":[Ljava/lang/Object;
    move-object v5, v4

    array-length v5, v5

    move v0, v5

    .end local v0    # "this":Lkawa/lang/SyntaxTemplate;
    return v0
.end method

.method static indexOf(Ljava/util/Vector;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "vec":Ljava/util/Vector;
    move-object v1, p1

    .local v1, "elem":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v4

    .line 365
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 367
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 368
    move v4, v3

    move v0, v4

    .line 370
    .end local v0    # "vec":Ljava/util/Vector;
    :goto_1
    return v0

    .line 365
    .restart local v0    # "vec":Ljava/util/Vector;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I
    .locals 32

    .prologue
    .line 218
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/SyntaxTemplate;
    move-object/from16 v3, p1

    .local v3, "form":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v5, p3

    .local v5, "template_program":Ljava/lang/StringBuffer;
    move/from16 v6, p4

    .local v6, "nesting":I
    move-object/from16 v7, p5

    .local v7, "literals_vector":Ljava/util/Vector;
    move-object/from16 v8, p6

    .local v8, "seen":Ljava/lang/Object;
    move/from16 v9, p7

    .local v9, "isVector":Z
    move-object/from16 v10, p8

    .local v10, "tr":Lkawa/lang/Translator;
    :goto_0
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 220
    move-object/from16 v22, v3

    check-cast v22, Lkawa/lang/SyntaxForm;

    move-object/from16 v4, v22

    .line 221
    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v3, v22

    goto :goto_0

    .line 224
    :cond_0
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/FVector;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 226
    :cond_1
    move-object/from16 v22, v8

    check-cast v22, Ljava/util/IdentityHashMap;

    move-object/from16 v11, v22

    .line 227
    .local v11, "seen_map":Ljava/util/IdentityHashMap;
    move-object/from16 v22, v11

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 230
    move-object/from16 v22, v10

    const-string/jumbo v23, "self-referential (cyclic) syntax template"

    invoke-virtual/range {v22 .. v23}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    .line 231
    const/16 v22, -0x2

    move/from16 v2, v22

    .line 358
    .end local v2    # "this":Lkawa/lang/SyntaxTemplate;
    .end local v3    # "form":Ljava/lang/Object;
    .end local v11    # "seen_map":Ljava/util/IdentityHashMap;
    :goto_1
    return v2

    .line 233
    .restart local v2    # "this":Lkawa/lang/SyntaxTemplate;
    .restart local v3    # "form":Ljava/lang/Object;
    .restart local v11    # "seen_map":Ljava/util/IdentityHashMap;
    :cond_2
    move-object/from16 v22, v11

    move-object/from16 v23, v3

    move-object/from16 v24, v3

    invoke-virtual/range {v22 .. v24}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 238
    .end local v11    # "seen_map":Ljava/util/IdentityHashMap;
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 240
    move-object/from16 v22, v3

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v11, v22

    .line 241
    .local v11, "pair":Lgnu/lists/Pair;
    const/16 v22, -0x2

    move/from16 v12, v22

    .line 242
    .local v12, "ret_cdr":I
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    move/from16 v13, v22

    .line 243
    .local v13, "save_pc":I
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v14, v22

    .line 246
    .local v14, "car":Ljava/lang/Object;
    move-object/from16 v22, v10

    move-object/from16 v23, v14

    const-string/jumbo v24, "..."

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 248
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    .line 249
    .local v15, "cdr":Ljava/lang/Object;
    move-object/from16 v22, v15

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 251
    move-object/from16 v22, v15

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v16, v22

    .line 252
    .local v16, "cdr_pair":Lgnu/lists/Pair;
    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v23, "..."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 254
    const-string/jumbo v22, "..."

    move-object/from16 v3, v22

    .line 347
    .end local v3    # "form":Ljava/lang/Object;
    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v12    # "ret_cdr":I
    .end local v13    # "save_pc":I
    .end local v14    # "car":Ljava/lang/Object;
    .end local v15    # "cdr":Ljava/lang/Object;
    .end local v16    # "cdr_pair":Lgnu/lists/Pair;
    :cond_4
    :goto_2
    move-object/from16 v22, v7

    move-object/from16 v23, v3

    invoke-static/range {v22 .. v23}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v22

    move/from16 v11, v22

    .line 348
    .local v11, "literals_index":I
    move/from16 v22, v11

    if-gez v22, :cond_5

    .line 350
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v11, v22

    .line 351
    move-object/from16 v22, v7

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 354
    move-object/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Translator;->noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 355
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-nez v22, :cond_7

    move-object/from16 v22, v3

    const-string/jumbo v23, "..."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 356
    move-object/from16 v22, v5

    const/16 v23, 0x18

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 357
    :cond_7
    move-object/from16 v22, v5

    const/16 v23, 0x4

    const/16 v24, 0x8

    move/from16 v25, v11

    mul-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 358
    move-object/from16 v22, v3

    const-string/jumbo v23, "..."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1a

    const/16 v22, -0x1

    :goto_3
    move/from16 v2, v22

    goto/16 :goto_1

    .line 260
    .restart local v3    # "form":Ljava/lang/Object;
    .local v11, "pair":Lgnu/lists/Pair;
    .restart local v12    # "ret_cdr":I
    .restart local v13    # "save_pc":I
    .restart local v14    # "car":Ljava/lang/Object;
    :cond_8
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v15, v22

    .line 263
    .local v15, "save_literals":I
    move-object/from16 v22, v5

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 265
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 266
    .local v16, "num_dots3":I
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v17, v22

    .line 267
    .local v17, "rest":Ljava/lang/Object;
    :goto_4
    move-object/from16 v22, v17

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 269
    move-object/from16 v22, v17

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v18, v22

    .line 270
    .local v18, "p":Lgnu/lists/Pair;
    move-object/from16 v22, v10

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    const-string/jumbo v24, "..."

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 271
    .line 276
    .end local v18    # "p":Lgnu/lists/Pair;
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v16

    add-int v26, v26, v27

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const/16 v29, 0x0

    move-object/from16 v30, v10

    invoke-virtual/range {v22 .. v30}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v22

    move/from16 v18, v22

    .line 280
    .local v18, "ret_car":I
    move-object/from16 v22, v17

    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 282
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    move/from16 v23, v13

    sub-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v19, v22

    .line 283
    .local v19, "delta":I
    move-object/from16 v22, v5

    move/from16 v23, v13

    move/from16 v24, v19

    const/16 v25, 0x3

    shl-int/lit8 v24, v24, 0x3

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 285
    move-object/from16 v22, v2

    move-object/from16 v23, v17

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v30, v10

    invoke-virtual/range {v22 .. v30}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v22

    move/from16 v12, v22

    .line 289
    .end local v19    # "delta":I
    :cond_a
    move/from16 v22, v16

    if-lez v22, :cond_e

    .line 291
    move/from16 v22, v18

    if-gez v22, :cond_b

    .line 292
    move-object/from16 v22, v10

    const-string/jumbo v23, "... follows template with no suitably-nested pattern variable"

    invoke-virtual/range {v22 .. v23}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    .line 293
    :cond_b
    move/from16 v22, v16

    move/from16 v19, v22

    .local v19, "i":I
    :goto_5
    add-int/lit8 v19, v19, -0x1

    move/from16 v22, v19

    if-ltz v22, :cond_e

    .line 295
    move/from16 v22, v18

    const/16 v23, 0x3

    shl-int/lit8 v22, v22, 0x3

    const/16 v23, 0x5

    add-int/lit8 v22, v22, 0x5

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    move/from16 v20, v22

    .line 296
    .local v20, "op":C
    move-object/from16 v22, v5

    move/from16 v23, v13

    move/from16 v24, v19

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v20

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 297
    move/from16 v22, v6

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v21, v22

    .line 298
    .local v21, "n":I
    move/from16 v22, v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 299
    move-object/from16 v22, v2

    move/from16 v23, v21

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 300
    :cond_c
    goto :goto_5

    .line 272
    .end local v19    # "i":I
    .end local v20    # "op":C
    .end local v21    # "n":I
    .local v18, "p":Lgnu/lists/Pair;
    :cond_d
    add-int/lit8 v16, v16, 0x1

    .line 273
    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v17, v22

    .line 274
    move-object/from16 v22, v5

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 275
    goto/16 :goto_4

    .line 302
    .local v18, "ret_car":I
    :cond_e
    move/from16 v22, v18

    if-ltz v22, :cond_f

    .line 303
    move/from16 v22, v18

    move/from16 v2, v22

    goto/16 :goto_1

    .line 304
    :cond_f
    move/from16 v22, v12

    if-ltz v22, :cond_10

    .line 305
    move/from16 v22, v12

    move/from16 v2, v22

    goto/16 :goto_1

    .line 306
    :cond_10
    move/from16 v22, v18

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move/from16 v22, v12

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 307
    :cond_11
    const/16 v22, -0x1

    move/from16 v2, v22

    goto/16 :goto_1

    .line 308
    :cond_12
    move/from16 v22, v9

    if-eqz v22, :cond_13

    .line 309
    const/16 v22, -0x2

    move/from16 v2, v22

    goto/16 :goto_1

    .line 313
    :cond_13
    move-object/from16 v22, v7

    move/from16 v23, v15

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 314
    move-object/from16 v22, v5

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 315
    goto/16 :goto_2

    .line 316
    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v12    # "ret_cdr":I
    .end local v13    # "save_pc":I
    .end local v14    # "car":Ljava/lang/Object;
    .end local v15    # "save_literals":I
    .end local v16    # "num_dots3":I
    .end local v17    # "rest":Ljava/lang/Object;
    .end local v18    # "ret_car":I
    :cond_14
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/FVector;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 318
    move-object/from16 v22, v5

    const/16 v23, 0x28

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 319
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    check-cast v23, Lgnu/lists/FVector;

    invoke-static/range {v23 .. v23}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v23

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const/16 v29, 0x1

    move-object/from16 v30, v10

    invoke-virtual/range {v22 .. v30}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v22

    move/from16 v2, v22

    goto/16 :goto_1

    .line 323
    :cond_15
    move-object/from16 v22, v3

    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 325
    move-object/from16 v22, v5

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 326
    const/16 v22, -0x2

    move/from16 v2, v22

    goto/16 :goto_1

    .line 328
    :cond_16
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v22, v10

    if-eqz v22, :cond_4

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 331
    move-object/from16 v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    invoke-static/range {v22 .. v23}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v22

    move/from16 v11, v22

    .line 332
    .local v11, "pattern_var_num":I
    move/from16 v22, v11

    if-ltz v22, :cond_4

    .line 334
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v12, v22

    .line 335
    .local v12, "var_nesting":I
    move/from16 v22, v12

    const/16 v23, 0x1

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_18

    const/16 v22, 0x3

    :goto_6
    move/from16 v13, v22

    .line 336
    .local v13, "op":I
    move/from16 v22, v12

    const/16 v23, 0x1

    shr-int/lit8 v22, v22, 0x1

    move/from16 v12, v22

    .line 340
    move/from16 v22, v12

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_17

    .line 341
    move-object/from16 v22, v10

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "inconsistent ... nesting of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    .line 342
    :cond_17
    move-object/from16 v22, v5

    move/from16 v23, v13

    const/16 v24, 0x8

    move/from16 v25, v11

    mul-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 343
    move/from16 v22, v12

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    move/from16 v22, v11

    :goto_7
    move/from16 v2, v22

    goto/16 :goto_1

    .line 335
    .end local v13    # "op":I
    :cond_18
    const/16 v22, 0x2

    goto :goto_6

    .line 343
    .restart local v13    # "op":I
    :cond_19
    const/16 v22, -0x1

    goto :goto_7

    .line 358
    .end local v3    # "form":Ljava/lang/Object;
    .end local v12    # "var_nesting":I
    .end local v13    # "op":I
    .local v11, "literals_index":I
    :cond_1a
    const/16 v22, -0x2

    goto/16 :goto_3
.end method

.method execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 500
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move/from16 v1, p1

    .local v1, "pc":I
    move-object/from16 v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "nesting":I
    move-object/from16 v4, p4

    .local v4, "indexes":[I
    move-object/from16 v5, p5

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v6, p6

    .local v6, "templateScope":Lkawa/lang/TemplateScope;
    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v7, v11

    .line 508
    .local v7, "ch":I
    :goto_0
    move v11, v7

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    .line 509
    move v11, v7

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    const/16 v12, 0xd

    shl-int/lit8 v11, v11, 0xd

    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    or-int/2addr v11, v12

    move v7, v11

    goto :goto_0

    .line 510
    :cond_0
    move v11, v7

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 512
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v11

    move-object v0, v11

    .line 570
    .end local v0    # "this":Lkawa/lang/SyntaxTemplate;
    :goto_1
    return-object v0

    .line 514
    .restart local v0    # "this":Lkawa/lang/SyntaxTemplate;
    :cond_1
    move v11, v7

    const/16 v12, 0x10

    if-ne v11, v12, :cond_2

    .line 515
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    goto :goto_1

    .line 516
    :cond_2
    move v11, v7

    const/16 v12, 0x18

    if-ne v11, v12, :cond_4

    .line 518
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 519
    .local v8, "v":Ljava/lang/Object;
    move-object v11, v8

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v12, :cond_3

    move-object v11, v8

    :goto_2
    move-object v0, v11

    goto :goto_1

    :cond_3
    move-object v11, v8

    move-object v12, v6

    invoke-static {v11, v12}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    .line 521
    .end local v8    # "v":Ljava/lang/Object;
    :cond_4
    move v11, v7

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 523
    const/4 v11, 0x0

    move-object v8, v11

    .line 524
    .local v8, "p":Lgnu/lists/Pair;
    const/4 v11, 0x0

    move-object v9, v11

    .line 527
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 528
    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v11

    move-object v10, v11

    .line 530
    .local v10, "q":Lgnu/lists/LList;
    move-object v11, v8

    if-nez v11, :cond_5

    .line 531
    move-object v11, v10

    move-object v9, v11

    .line 534
    .end local v10    # "q":Lgnu/lists/LList;
    :goto_4
    move-object v11, v10

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_6

    .line 536
    move-object v11, v10

    check-cast v11, Lgnu/lists/Pair;

    move-object v8, v11

    .line 537
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .local v10, "q":Ljava/lang/Object;
    goto :goto_4

    .line 533
    .local v10, "q":Lgnu/lists/LList;
    :cond_5
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_4

    .line 539
    .end local v10    # "q":Lgnu/lists/LList;
    :cond_6
    move v11, v1

    move v12, v7

    const/4 v13, 0x3

    shr-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    move v1, v11

    .line 540
    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v7, v11

    .line 541
    move v11, v7

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 542
    .line 544
    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 545
    .local v10, "cdr":Ljava/lang/Object;
    move-object v11, v8

    if-nez v11, :cond_8

    .line 546
    move-object v11, v10

    move-object v9, v11

    .line 549
    :goto_5
    move-object v11, v9

    move-object v0, v11

    goto/16 :goto_1

    .line 543
    .end local v10    # "cdr":Ljava/lang/Object;
    :cond_7
    goto :goto_3

    .line 548
    .restart local v10    # "cdr":Ljava/lang/Object;
    :cond_8
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_5

    .line 551
    .end local v8    # "p":Lgnu/lists/Pair;
    .end local v10    # "cdr":Ljava/lang/Object;
    :cond_9
    move v11, v7

    const/16 v12, 0x28

    if-ne v11, v12, :cond_a

    .line 553
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 554
    .local v8, "el":Ljava/lang/Object;
    new-instance v11, Lgnu/lists/FVector;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v8

    check-cast v13, Lgnu/lists/LList;

    invoke-direct {v12, v13}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    move-object v0, v11

    goto/16 :goto_1

    .line 556
    .end local v8    # "el":Ljava/lang/Object;
    :cond_a
    move v11, v7

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_b

    .line 558
    move v11, v7

    const/4 v12, 0x3

    shr-int/lit8 v11, v11, 0x3

    move v8, v11

    .line 563
    .local v8, "lit_no":I
    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    move v12, v8

    aget-object v11, v11, v12

    move-object v0, v11

    goto/16 :goto_1

    .line 565
    .end local v8    # "lit_no":I
    :cond_b
    move v11, v7

    const/4 v12, 0x6

    and-int/lit8 v11, v11, 0x6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 567
    move-object v11, v0

    move v12, v7

    const/4 v13, 0x3

    shr-int/lit8 v12, v12, 0x3

    move-object v13, v2

    move-object v14, v4

    invoke-virtual {v11, v12, v13, v14}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 568
    .local v8, "var":Ljava/lang/Object;
    move v11, v7

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    .line 569
    move-object v11, v8

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 570
    :cond_c
    move-object v11, v8

    move-object v0, v11

    goto/16 :goto_1

    .line 573
    .end local v8    # "var":Ljava/lang/Object;
    :cond_d
    new-instance v11, Ljava/lang/Error;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown template code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "vars":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "templateScope":Lkawa/lang/TemplateScope;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v8, v8, [I

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v9

    check-cast v9, Lkawa/lang/Translator;

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 425
    .local v3, "result":Ljava/lang/Object;
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/SyntaxTemplate;
    return-object v0
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "vars":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, p3

    .local v3, "templateScope":Lkawa/lang/TemplateScope;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v8, v8, [I

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/SyntaxTemplate;
    return-object v0
.end method

.method executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;
    .locals 26

    .prologue
    .line 452
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/SyntaxTemplate;
    move/from16 v3, p1

    .local v3, "pc":I
    move-object/from16 v4, p2

    .local v4, "vars":[Ljava/lang/Object;
    move/from16 v5, p3

    .local v5, "nesting":I
    move-object/from16 v6, p4

    .local v6, "indexes":[I
    move-object/from16 v7, p5

    .local v7, "tr":Lkawa/lang/Translator;
    move-object/from16 v8, p6

    .local v8, "templateScope":Lkawa/lang/TemplateScope;
    move/from16 v18, v3

    move/from16 v9, v18

    .line 453
    .local v9, "pc0":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v10, v18

    .line 454
    .local v10, "ch":I
    :goto_0
    move/from16 v18, v10

    const/16 v19, 0x7

    and-int/lit8 v18, v18, 0x7

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 455
    move/from16 v18, v10

    const/16 v19, 0x7

    add-int/lit8 v18, v18, -0x7

    const/16 v19, 0xd

    shl-int/lit8 v18, v18, 0xd

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v3, v3, 0x1

    move/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    or-int v18, v18, v19

    move/from16 v10, v18

    goto :goto_0

    .line 456
    :cond_0
    move/from16 v18, v10

    const/16 v19, 0x7

    and-int/lit8 v18, v18, 0x7

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 458
    move-object/from16 v18, v2

    move/from16 v19, v10

    const/16 v20, 0x3

    shr-int/lit8 v19, v19, 0x3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v21}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v11, v18

    .line 459
    .local v11, "p":Lgnu/lists/Pair;
    move-object/from16 v18, v11

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v18 .. v20}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v18

    move-object/from16 v2, v18

    .line 489
    .end local v2    # "this":Lkawa/lang/SyntaxTemplate;
    .end local v11    # "p":Lgnu/lists/Pair;
    :goto_1
    return-object v2

    .line 461
    .restart local v2    # "this":Lkawa/lang/SyntaxTemplate;
    :cond_1
    move/from16 v18, v10

    const/16 v19, 0x7

    and-int/lit8 v18, v18, 0x7

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 463
    move/from16 v18, v10

    const/16 v19, 0x3

    shr-int/lit8 v18, v18, 0x3

    move/from16 v11, v18

    .line 464
    .local v11, "var_num":I
    move-object/from16 v18, v4

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v12, v18

    .line 465
    .local v12, "var":Ljava/lang/Object;
    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move/from16 v20, v5

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v21}, Lkawa/lang/SyntaxTemplate;->get_count(Ljava/lang/Object;I[I)I

    move-result v18

    move/from16 v13, v18

    .line 466
    .local v13, "count":I
    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v14, v18

    .line 467
    .local v14, "result":Lgnu/lists/LList;
    const/16 v18, 0x0

    move-object/from16 v15, v18

    .line 468
    .local v15, "last":Lgnu/lists/Pair;
    add-int/lit8 v3, v3, 0x1

    .line 469
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "j":I
    :goto_2
    move/from16 v18, v16

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 471
    move-object/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v16

    aput v20, v18, v19

    .line 472
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-virtual/range {v18 .. v24}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v18

    move-object/from16 v17, v18

    .line 474
    .local v17, "list":Lgnu/lists/LList;
    move-object/from16 v18, v15

    if-nez v18, :cond_2

    .line 475
    move-object/from16 v18, v17

    move-object/from16 v14, v18

    .line 480
    :goto_3
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 482
    move-object/from16 v18, v17

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v15, v18

    .line 483
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/lists/LList;

    move-object/from16 v17, v18

    goto :goto_3

    .line 477
    :cond_2
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_3

    .line 469
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 486
    .end local v17    # "list":Lgnu/lists/LList;
    :cond_4
    move-object/from16 v18, v14

    move-object/from16 v2, v18

    goto/16 :goto_1

    .line 488
    .end local v11    # "var_num":I
    .end local v12    # "var":Ljava/lang/Object;
    .end local v13    # "count":I
    .end local v14    # "result":Lgnu/lists/LList;
    .end local v15    # "last":Lgnu/lists/Pair;
    .end local v16    # "j":I
    :cond_5
    move-object/from16 v18, v2

    move/from16 v19, v9

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-virtual/range {v18 .. v24}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 489
    .local v11, "v":Ljava/lang/Object;
    new-instance v18, Lgnu/lists/Pair;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v11

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v19 .. v21}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v18

    goto/16 :goto_1
.end method

.method get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move v1, p1

    .local v1, "var_num":I
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move-object v3, p3

    .local v3, "indexes":[I
    move-object v7, v2

    move v8, v1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 437
    .local v4, "var":Ljava/lang/Object;
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 439
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 440
    .local v5, "var_nesting":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "level":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 441
    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v8, v3

    move v9, v6

    aget v8, v8, v9

    aget-object v7, v7, v8

    move-object v4, v7

    .line 440
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 443
    .end local v5    # "var_nesting":I
    .end local v6    # "level":I
    :cond_0
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lkawa/lang/SyntaxTemplate;
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
    .line 590
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 591
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 592
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v2, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 593
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 594
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxTemplate;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 585
    return-void
.end method
