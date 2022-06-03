.class public Lgnu/commonlisp/lang/prog1;
.super Lkawa/lang/Syntax;
.source "prog1.java"


# static fields
.field public static final prog1:Lgnu/commonlisp/lang/prog1;

.field public static final prog2:Lgnu/commonlisp/lang/prog1;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "prog1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    .line 12
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "prog2"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/prog1;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Lkawa/lang/Syntax;-><init>()V

    .line 16
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/commonlisp/lang/prog1;->index:I

    .line 17
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/commonlisp/lang/prog1;->setName(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 22
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/prog1;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v9, v1

    invoke-static {v9}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v9

    move v3, v9

    .line 23
    .local v3, "nexps":I
    move v9, v3

    move-object v10, v0

    iget v10, v10, Lgnu/commonlisp/lang/prog1;->index:I

    if-ge v9, v10, :cond_0

    .line 24
    move-object v9, v2

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "too few expressions in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/commonlisp/lang/prog1;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    .line 49
    .end local v0    # "this":Lgnu/commonlisp/lang/prog1;
    :goto_0
    return-object v0

    .line 25
    .restart local v0    # "this":Lgnu/commonlisp/lang/prog1;
    :cond_0
    move-object v9, v0

    iget v9, v9, Lgnu/commonlisp/lang/prog1;->index:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 27
    move-object v9, v1

    check-cast v9, Lgnu/lists/Pair;

    move-object v4, v9

    .line 28
    .local v4, "pair":Lgnu/lists/Pair;
    new-instance v9, Lgnu/expr/BeginExp;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    move-object v12, v4

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    sget-object v12, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    move-object v13, v4

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/commonlisp/lang/prog1;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v9

    goto :goto_0

    .line 33
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v4, v9

    .line 34
    .local v4, "inits":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/LetExp;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v5, v9

    .line 35
    .local v5, "let":Lgnu/expr/LetExp;
    move v9, v3

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v6, v9

    .line 36
    .local v6, "body":[Lgnu/expr/Expression;
    move-object v9, v1

    check-cast v9, Lgnu/lists/Pair;

    move-object v7, v9

    .line 37
    .local v7, "pair":Lgnu/lists/Pair;
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    aput-object v11, v9, v10

    .line 38
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 39
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_2

    .line 41
    move-object v9, v1

    check-cast v9, Lgnu/lists/Pair;

    move-object v7, v9

    .line 42
    move-object v9, v6

    move v10, v8

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    aput-object v11, v9, v10

    .line 43
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 39
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 45
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 46
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v9, v6

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v8

    invoke-direct {v12, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v11, v9, v10

    .line 47
    move-object v9, v5

    move-object v10, v6

    invoke-static {v10}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 48
    move-object v9, v2

    invoke-virtual {v9}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 49
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0
.end method
