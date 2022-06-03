.class public Lkawa/standard/define_autoload;
.super Lkawa/lang/Syntax;
.source "define_autoload.java"


# static fields
.field public static final define_autoload:Lkawa/standard/define_autoload;

.field public static final define_autoloads_from_file:Lkawa/standard/define_autoload;


# instance fields
.field fromFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/define_autoload;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "define-autoload"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoload:Lkawa/standard/define_autoload;

    .line 16
    new-instance v0, Lkawa/standard/define_autoload;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "define-autoloads-from-file"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoloads_from_file:Lkawa/standard/define_autoload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_autoload;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "fromFile":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 24
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/standard/define_autoload;->fromFile:Z

    .line 25
    return-void
.end method

.method public static findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 143
    move-object/from16 v2, p0

    .local v2, "in":Lgnu/kawa/lispexpr/LispReader;
    move-object/from16 v3, p1

    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 144
    .local v6, "lineStart":Z
    const-string/jumbo v19, ";;;###autoload"

    move-object/from16 v7, v19

    .line 145
    .local v7, "magic":Ljava/lang/String;
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v8, v19

    .line 149
    .local v8, "magicLength":I
    :goto_0
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v19

    move/from16 v9, v19

    .line 150
    .local v9, "ch":I
    move/from16 v19, v9

    if-gez v19, :cond_0

    .line 151
    .line 230
    :goto_1
    return-void

    .line 152
    :cond_0
    move/from16 v19, v9

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v9

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 154
    :cond_1
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v19

    .line 155
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    move/from16 v19, v6

    if-eqz v19, :cond_d

    move/from16 v19, v9

    const/16 v20, 0x3b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 160
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 163
    .local v10, "i":I
    :cond_3
    :goto_2
    move/from16 v19, v10

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 164
    .line 177
    move/from16 v19, v10

    if-lez v19, :cond_d

    .line 179
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 180
    .local v11, "form":Ljava/lang/Object;
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 182
    move-object/from16 v19, v11

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v12, v19

    .line 183
    .local v12, "pair":Lgnu/lists/Pair;
    const/16 v19, 0x0

    move-object/from16 v13, v19

    .line 184
    .local v13, "value":Ljava/lang/Object;
    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 185
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    .line 186
    .local v15, "car":Ljava/lang/Object;
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v16, v19

    .line 190
    .local v16, "command":Ljava/lang/String;
    move-object/from16 v19, v16

    const-string/jumbo v20, "defun"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 192
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/lists/Pair;

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 193
    new-instance v19, Lkawa/lang/AutoloadProcedure;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    invoke-direct/range {v20 .. v23}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    move-object/from16 v13, v19

    .line 199
    .end local v13    # "value":Ljava/lang/Object;
    :goto_4
    move-object/from16 v19, v13

    if-eqz v19, :cond_4

    .line 201
    move-object/from16 v19, v4

    move-object/from16 v20, v14

    const/16 v21, 0x77

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v22}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v17, v19

    .line 202
    .local v17, "decl":Lgnu/expr/Declaration;
    new-instance v19, Lgnu/expr/QuoteExp;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v18, v19

    .line 203
    .local v18, "ex":Lgnu/expr/Expression;
    move-object/from16 v19, v17

    const-wide/16 v20, 0x4000

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 204
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 205
    move-object/from16 v19, v17

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 206
    move-object/from16 v19, v17

    sget-object v20, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 209
    .end local v12    # "pair":Lgnu/lists/Pair;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "car":Ljava/lang/Object;
    .end local v16    # "command":Ljava/lang/String;
    .end local v17    # "decl":Lgnu/expr/Declaration;
    .end local v18    # "ex":Lgnu/expr/Expression;
    :cond_4
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 210
    goto/16 :goto_0

    .line 165
    .end local v11    # "form":Ljava/lang/Object;
    :cond_5
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v19

    move/from16 v9, v19

    .line 166
    move/from16 v19, v9

    if-gez v19, :cond_6

    .line 167
    goto/16 :goto_1

    .line 168
    :cond_6
    move/from16 v19, v9

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    move/from16 v19, v9

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 170
    :cond_7
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_8
    move/from16 v19, v10

    if-ltz v19, :cond_3

    move/from16 v19, v9

    move-object/from16 v20, v7

    move/from16 v21, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 174
    goto/16 :goto_2

    .line 175
    :cond_9
    const/16 v19, -0x1

    move/from16 v10, v19

    goto/16 :goto_2

    .line 186
    .restart local v11    # "form":Ljava/lang/Object;
    .restart local v12    # "pair":Lgnu/lists/Pair;
    .restart local v13    # "value":Ljava/lang/Object;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "car":Ljava/lang/Object;
    :cond_a
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, v15

    check-cast v19, Lgnu/mapping/Symbol;

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 197
    .restart local v16    # "command":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v5

    const/16 v20, 0x77

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unsupported ;;;###autoload followed by: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_4

    .line 213
    .end local v10    # "i":I
    .end local v11    # "form":Ljava/lang/Object;
    .end local v12    # "pair":Lgnu/lists/Pair;
    .end local v13    # "value":Ljava/lang/Object;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "car":Ljava/lang/Object;
    .end local v16    # "command":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 214
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 215
    move/from16 v19, v9

    const/16 v20, 0x23

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 217
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v19

    const/16 v20, 0x7c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 219
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 220
    move-object/from16 v19, v2

    const/16 v20, 0x23

    const/16 v21, 0x7c

    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V

    .line 221
    goto/16 :goto_0

    .line 224
    :cond_e
    move/from16 v19, v9

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 225
    .line 232
    :cond_f
    goto/16 :goto_0

    .line 228
    :cond_10
    move-object/from16 v19, v2

    move/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->readObject(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 229
    .local v10, "skipped":Ljava/lang/Object;
    move-object/from16 v19, v10

    sget-object v20, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 230
    goto/16 :goto_1
.end method

.method public static process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 17

    .prologue
    .line 239
    move-object/from16 v0, p0

    .local v0, "names":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "filename":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v11, v0

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_1

    .line 241
    move-object v11, v0

    check-cast v11, Lgnu/lists/Pair;

    move-object v5, v11

    .line 242
    .local v5, "p":Lgnu/lists/Pair;
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v0, v11

    .line 285
    .end local v0    # "names":Ljava/lang/Object;
    .end local v1    # "filename":Ljava/lang/Object;
    .end local v5    # "p":Lgnu/lists/Pair;
    :goto_1
    return v0

    .line 242
    .restart local v0    # "names":Ljava/lang/Object;
    .restart local v1    # "filename":Ljava/lang/Object;
    .restart local v5    # "p":Lgnu/lists/Pair;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 245
    .end local v5    # "p":Lgnu/lists/Pair;
    :cond_1
    move-object v11, v0

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v12, :cond_2

    .line 246
    const/4 v11, 0x1

    move v0, v11

    goto :goto_1

    .line 270
    :cond_2
    move-object v11, v0

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_3

    move-object v11, v0

    instance-of v11, v11, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_5

    .line 272
    :cond_3
    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 273
    .local v7, "name":Ljava/lang/String;
    move-object v11, v3

    move-object v12, v7

    const/16 v13, 0x77

    move-object v14, v4

    invoke-virtual {v11, v12, v13, v14}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 274
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v11, v1

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v5, v12

    .local v5, "fn":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v16, v11

    move/from16 v11, v16

    move/from16 v12, v16

    move v6, v12

    .local v6, "len":I
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_4

    move-object v11, v5

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3e

    if-ne v11, v12, :cond_4

    .line 277
    move-object v11, v5

    const/4 v12, 0x1

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 278
    .end local v1    # "filename":Ljava/lang/Object;
    .end local v5    # "fn":Ljava/lang/String;
    .end local v6    # "len":I
    :cond_4
    new-instance v11, Lkawa/lang/AutoloadProcedure;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    move-object v9, v11

    .line 280
    .local v9, "value":Lkawa/lang/AutoloadProcedure;
    new-instance v11, Lgnu/expr/QuoteExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v9

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v10, v11

    .line 281
    .local v10, "ex":Lgnu/expr/Expression;
    move-object v11, v8

    const-wide/16 v12, 0x4000

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 282
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 283
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_1

    .line 285
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "value":Lkawa/lang/AutoloadProcedure;
    .end local v10    # "ex":Lgnu/expr/Expression;
    .restart local v1    # "filename":Ljava/lang/Object;
    :cond_5
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_1
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_autoload;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/define_autoload;
    return-object v0
.end method

.method public scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 23

    .prologue
    .line 70
    move-object/from16 v1, p0

    .local v1, "this":Lkawa/standard/define_autoload;
    move-object/from16 v2, p1

    .local v2, "filespec":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p3

    .local v4, "tr":Lkawa/lang/Translator;
    move-object/from16 v17, v2

    const-string/jumbo v18, ".el"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 72
    :cond_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v17

    .line 73
    .local v5, "file":Ljava/io/File;
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isAbsolute()Z

    move-result v17

    if-nez v17, :cond_1

    .line 74
    new-instance v17, Ljava/io/File;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/io/File;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    .line 75
    :cond_1
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    .line 76
    .local v6, "filename":Ljava/lang/String;
    move-object/from16 v17, v6

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    move/from16 v7, v17

    .line 78
    .local v7, "dot":I
    move/from16 v17, v7

    if-ltz v17, :cond_5

    .line 80
    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 81
    .local v9, "extension":Ljava/lang/String;
    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v17

    move-object/from16 v8, v17

    .line 82
    .local v8, "language":Lgnu/expr/Language;
    move-object/from16 v17, v8

    if-nez v17, :cond_2

    .line 84
    move-object/from16 v17, v4

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unknown extension for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    .line 85
    const/16 v17, 0x1

    move/from16 v1, v17

    .line 136
    .end local v1    # "this":Lkawa/standard/define_autoload;
    .end local v8    # "language":Lgnu/expr/Language;
    .end local v9    # "extension":Ljava/lang/String;
    :goto_0
    return v1

    .line 106
    .restart local v1    # "this":Lkawa/standard/define_autoload;
    .restart local v8    # "language":Lgnu/expr/Language;
    .restart local v9    # "extension":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 107
    .local v11, "prefix":Ljava/lang/String;
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v12, v17

    .line 108
    .local v12, "extlen":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v13, v17

    .line 109
    .local v13, "speclen":I
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v19, v13

    move/from16 v20, v12

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 110
    .local v14, "cname":Ljava/lang/String;
    :goto_1
    move-object/from16 v17, v14

    const-string/jumbo v18, "../"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 112
    move-object/from16 v17, v11

    const/16 v18, 0x2e

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, -0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v17

    move/from16 v15, v17

    .line 113
    .local v15, "i":I
    move/from16 v17, v15

    if-gez v17, :cond_3

    .line 115
    move-object/from16 v17, v4

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "cannot use relative filename \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\" with simple prefix \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    .line 117
    const/16 v17, 0x0

    move/from16 v1, v17

    goto/16 :goto_0

    .line 119
    :cond_3
    move-object/from16 v17, v11

    const/16 v18, 0x0

    move/from16 v19, v15

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 120
    move-object/from16 v17, v14

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 121
    goto :goto_1

    .line 122
    .end local v15    # "i":I
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2f

    const/16 v19, 0x2e

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 126
    .local v15, "classname":Ljava/lang/String;
    move-object/from16 v17, v6

    :try_start_0
    invoke-static/range {v17 .. v17}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v17

    move-object/from16 v16, v17

    .line 127
    .local v16, "port":Lgnu/mapping/InPort;
    move-object/from16 v17, v8

    move-object/from16 v18, v16

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v17

    move-object/from16 v10, v17

    .line 128
    .local v10, "lexer":Lgnu/text/Lexer;
    move-object/from16 v17, v10

    check-cast v17, Lgnu/kawa/lispexpr/LispReader;

    move-object/from16 v18, v15

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v17 .. v20}, Lkawa/standard/define_autoload;->findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 136
    .end local v8    # "language":Lgnu/expr/Language;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "lexer":Lgnu/text/Lexer;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v12    # "extlen":I
    .end local v13    # "speclen":I
    .end local v14    # "cname":Ljava/lang/String;
    .end local v15    # "classname":Ljava/lang/String;
    .end local v16    # "port":Lgnu/mapping/InPort;
    :cond_5
    const/16 v17, 0x1

    move/from16 v1, v17

    goto/16 :goto_0

    .line 130
    .restart local v8    # "language":Lgnu/expr/Language;
    .restart local v9    # "extension":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    .restart local v12    # "extlen":I
    .restart local v13    # "speclen":I
    .restart local v14    # "cname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v16, v17

    .line 132
    .local v16, "ex":Ljava/lang/Exception;
    move-object/from16 v17, v4

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "error reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    .line 133
    const/16 v17, 0x1

    move/from16 v1, v17

    goto/16 :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 13

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_autoload;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_0

    .line 31
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-super {v8, v9, v10, v11, v12}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    move v0, v8

    .line 65
    .end local v0    # "this":Lkawa/standard/define_autoload;
    :goto_0
    return v0

    .line 32
    .restart local v0    # "this":Lkawa/standard/define_autoload;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v5, v8

    .line 33
    .local v5, "p":Lgnu/lists/Pair;
    move-object v8, v0

    iget-boolean v8, v8, Lkawa/standard/define_autoload;->fromFile:Z

    if-eqz v8, :cond_5

    .line 38
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    .line 39
    .line 53
    :goto_2
    move-object v8, v4

    const-string/jumbo v9, "invalid syntax for define-autoloads-from-file"

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 54
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 44
    :cond_1
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lkawa/standard/define_autoload;->scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 45
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 46
    :cond_2
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 47
    .local v6, "rest":Ljava/lang/Object;
    move-object v8, v6

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v9, :cond_3

    .line 48
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 49
    :cond_3
    move-object v8, v6

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_4

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v5, v8

    .line 52
    goto :goto_1

    .line 56
    .end local v6    # "rest":Ljava/lang/Object;
    :cond_5
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 57
    .local v6, "names":Ljava/lang/Object;
    const/4 v8, 0x0

    move-object v7, v8

    .line 58
    .local v7, "filename":Ljava/lang/Object;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_6

    .line 60
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v5, v8

    .line 61
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 62
    move-object v8, v6

    move-object v9, v7

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 64
    :cond_6
    move-object v8, v4

    const-string/jumbo v9, "invalid syntax for define-autoload"

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 65
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0
.end method
