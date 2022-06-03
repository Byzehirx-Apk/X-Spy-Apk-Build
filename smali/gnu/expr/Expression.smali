.class public abstract Lgnu/expr/Expression;
.super Lgnu/mapping/Procedure0;
.source "Expression.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Lgnu/text/SourceLocator;


# static fields
.field protected static final NEXT_AVAIL_FLAG:I = 0x2

.field public static final VALIDATED:I = 0x1

.field public static final noExpressions:[Lgnu/expr/Expression;


# instance fields
.field filename:Ljava/lang/String;

.field protected flags:I

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/expr/Expression;

    sput-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 9

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v6, v0

    instance-of v6, v6, Lgnu/expr/BeginExp;

    if-eqz v6, :cond_1

    .line 186
    move-object v6, v0

    check-cast v6, Lgnu/expr/BeginExp;

    move-object v2, v6

    .line 187
    .local v2, "bexp":Lgnu/expr/BeginExp;
    move-object v6, v2

    iget v6, v6, Lgnu/expr/BeginExp;->length:I

    move v3, v6

    .line 188
    .local v3, "n":I
    move v6, v3

    if-nez v6, :cond_0

    .line 189
    .line 195
    .end local v2    # "bexp":Lgnu/expr/BeginExp;
    .end local v3    # "n":I
    :goto_0
    return-void

    .line 190
    .restart local v2    # "bexp":Lgnu/expr/BeginExp;
    .restart local v3    # "n":I
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v4, v6

    .line 191
    .local v4, "exps":[Lgnu/expr/Expression;
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-static {v6, v7}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 192
    const/4 v6, 0x1

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 193
    move-object v6, v4

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v1

    sget-object v8, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    .end local v2    # "bexp":Lgnu/expr/BeginExp;
    .end local v3    # "n":I
    .end local v4    # "exps":[Lgnu/expr/Expression;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0
.end method

.method protected static deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, v0

    new-instance v2, Lgnu/kawa/util/IdentityHashTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    invoke-static {v1, v2}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "exp":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 206
    const/4 v4, 0x0

    move-object v0, v4

    .line 211
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 207
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 208
    .local v2, "tr":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lgnu/expr/Expression;

    move-object v0, v4

    goto :goto_0

    .line 209
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 210
    .local v3, "copy":Lgnu/expr/Expression;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 211
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "exps":[Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 218
    const/4 v7, 0x0

    move-object v0, v7

    .line 229
    .end local v0    # "exps":[Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 219
    .restart local v0    # "exps":[Lgnu/expr/Expression;
    :cond_0
    move-object v7, v0

    array-length v7, v7

    move v2, v7

    .line 220
    .local v2, "nargs":I
    move v7, v2

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v3, v7

    .line 221
    .local v3, "a":[Lgnu/expr/Expression;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 223
    move-object v7, v0

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 224
    .local v5, "ei":Lgnu/expr/Expression;
    move-object v7, v5

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v6, v7

    .line 225
    .local v6, "ai":Lgnu/expr/Expression;
    move-object v7, v6

    if-nez v7, :cond_1

    move-object v7, v5

    if-eqz v7, :cond_1

    .line 226
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 227
    :cond_1
    move-object v7, v3

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    .end local v5    # "ei":Lgnu/expr/Expression;
    .end local v6    # "ai":Lgnu/expr/Expression;
    :cond_2
    move-object v7, v3

    move-object v0, v7

    goto :goto_0
.end method

.method public static makeWhile(Ljava/lang/Object;Ljava/lang/Object;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 18

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "cond":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "body":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "parser":Lgnu/expr/Compilation;
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v3, v9

    .line 274
    .local v3, "inits":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/LetExp;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v3

    invoke-direct {v10, v11}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v4, v9

    .line 275
    .local v4, "let":Lgnu/expr/LetExp;
    const-string/jumbo v9, "%do%loop"

    move-object v5, v9

    .line 276
    .local v5, "fname":Ljava/lang/String;
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v6, v9

    .line 277
    .local v6, "fdecl":Lgnu/expr/Declaration;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v12, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v7, v9

    .line 278
    .local v7, "recurse":Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/LambdaExp;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v8, v9

    .line 279
    .local v8, "lexp":Lgnu/expr/LambdaExp;
    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 280
    move-object v9, v8

    new-instance v10, Lgnu/expr/IfExp;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v2

    move-object v13, v0

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->parse(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v12

    new-instance v13, Lgnu/expr/BeginExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v2

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Compilation;->parse(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-direct/range {v14 .. v16}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v14, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v11, v12, v13, v14}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v10, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 283
    move-object v9, v8

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 284
    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 285
    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v8

    aput-object v11, v9, v10

    .line 286
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 287
    move-object v9, v4

    new-instance v10, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    new-instance v12, Lgnu/expr/ReferenceExp;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    invoke-direct {v13, v14}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v13, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v9, v10}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 288
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "cond":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "internal error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".eval called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final apply0()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v2

    move-object v1, v2

    .line 61
    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->check0(Lgnu/mapping/CallContext;)V

    .line 62
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public final compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 167
    return-void
.end method

.method public final compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "lhs":Lgnu/expr/Declaration;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 177
    return-void
.end method

.method public abstract compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
.end method

.method public final compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V
    .locals 11

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, p3

    .local v3, "position":Lgnu/expr/Expression;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 153
    .local v4, "saveFilename":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v7

    move v5, v7

    .line 154
    .local v5, "saveLine":I
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v7

    move v6, v7

    .line 155
    .local v6, "saveColumn":I
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 156
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 160
    move-object v7, v1

    move-object v8, v4

    move v9, v5

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 161
    return-void
.end method

.method public final compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v4

    move v3, v4

    .line 124
    .local v3, "line":I
    move v4, v3

    if-lez v4, :cond_0

    .line 126
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 127
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method public final compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V
    .locals 9

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, p3

    .local v3, "position":Lgnu/expr/Expression;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v5

    move v4, v5

    .line 139
    .local v4, "line":I
    move v5, v4

    if-lez v5, :cond_0

    .line 141
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v6

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 142
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public final eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v4

    move v2, v4

    .line 25
    .local v2, "start":I
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->match0(Lgnu/mapping/CallContext;)I

    move-result v4

    .line 26
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0

    .line 28
    .restart local v0    # "this":Lgnu/expr/Expression;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 30
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 31
    move-object v4, v3

    throw v4
.end method

.method public final eval(Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v2, v6

    .line 38
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    invoke-static {v6}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v6

    move-object v3, v6

    .line 41
    .local v3, "saveEnv":Lgnu/mapping/Environment;
    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 45
    move-object v6, v3

    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Expression;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v6, v5

    throw v6
.end method

.method public final getColumnNumber()I
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/Expression;->position:I

    const/16 v3, 0xfff

    and-int/lit16 v2, v2, 0xfff

    move v1, v2

    .line 360
    .local v1, "column":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0

    .restart local v0    # "this":Lgnu/expr/Expression;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public getFlag(I)Z
    .locals 4

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "flag":I
    move-object v2, v0

    iget v2, v2, Lgnu/expr/Expression;->flags:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0

    .restart local v0    # "this":Lgnu/expr/Expression;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Expression;->flags:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0
.end method

.method public final getLineNumber()I
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/Expression;->position:I

    const/16 v3, 0xc

    shr-int/lit8 v2, v2, 0xc

    move v1, v2

    .line 354
    .local v1, "line":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0

    .restart local v0    # "this":Lgnu/expr/Expression;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public isSingleValue()Z
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0
.end method

.method public final match0(Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 54
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lgnu/mapping/CallContext;->pc:I

    .line 55
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0
.end method

.method protected abstract mustCompile()Z
.end method

.method public final print(Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/OutPort;

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/mapping/OutPort;

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/io/PrintWriter;

    if-eqz v3, :cond_1

    .line 82
    new-instance v3, Lgnu/mapping/OutPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Ljava/io/PrintWriter;

    invoke-direct {v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 83
    .local v2, "port":Lgnu/mapping/OutPort;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 84
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->close()V

    .line 85
    goto :goto_0

    .line 88
    .end local v2    # "port":Lgnu/mapping/OutPort;
    :cond_1
    new-instance v3, Lgnu/mapping/CharArrayOutPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v2, v3

    .line 89
    .local v2, "port":Lgnu/mapping/CharArrayOutPort;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 90
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 91
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/CharArrayOutPort;->writeTo(Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public abstract print(Lgnu/mapping/OutPort;)V
.end method

.method public printLineColumn(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v4

    move v2, v4

    .line 104
    .local v2, "line":I
    move v4, v2

    if-lez v4, :cond_1

    .line 106
    move-object v4, v1

    const-string/jumbo v5, "line:"

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 107
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(I)V

    .line 108
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v4

    move v3, v4

    .line 109
    .local v3, "column":I
    move v4, v3

    if-lez v4, :cond_0

    .line 111
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 112
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(I)V

    .line 114
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 116
    .end local v3    # "column":I
    :cond_1
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setFlag(I)V
    .locals 6

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "flag":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/Expression;->flags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Lgnu/expr/Expression;->flags:I

    .line 395
    return-void
.end method

.method public setFlag(ZI)V
    .locals 8

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "setting":Z
    move v2, p2

    .local v2, "flag":I
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/expr/Expression;->flags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/Expression;->flags:I

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/expr/Expression;->flags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/Expression;->flags:I

    goto :goto_0
.end method

.method public final setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "old":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 301
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public final setLine(I)V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "lineno":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Expression;->setLine(II)V

    .line 321
    return-void
.end method

.method public final setLine(II)V
    .locals 6

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "lineno":I
    move v2, p2

    .local v2, "colno":I
    move v3, v1

    if-gez v3, :cond_0

    .line 312
    const/4 v3, 0x0

    move v1, v3

    .line 313
    :cond_0
    move v3, v2

    if-gez v3, :cond_1

    .line 314
    const/4 v3, 0x0

    move v2, v3

    .line 315
    :cond_1
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xc

    shl-int/lit8 v4, v4, 0xc

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/Expression;->position:I

    .line 316
    return-void
.end method

.method public setLine(Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    move v2, v3

    .line 332
    .local v2, "line":I
    move v3, v2

    if-lez v3, :cond_0

    .line 334
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 335
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Expression;->setLine(II)V

    .line 337
    :cond_0
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 5

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "location":Lgnu/text/SourceLocator;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    .line 295
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Expression;->setLine(II)V

    .line 296
    return-void
.end method

.method public side_effects()Z
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 413
    .local v1, "tname":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "gnu.expr."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    move-object v2, v1

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 415
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v3, p3

    .local v3, "required":Lgnu/bytecode/Type;
    move-object v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 262
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method public valueIfConstant()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Expression;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    return-void
.end method
