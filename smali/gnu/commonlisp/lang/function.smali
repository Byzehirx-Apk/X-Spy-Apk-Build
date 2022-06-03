.class public Lgnu/commonlisp/lang/function;
.super Lkawa/lang/Syntax;
.source "function.java"


# instance fields
.field lambda:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>(Lkawa/lang/Syntax;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/function;
    move-object v1, p1

    .local v1, "lambda":Lkawa/lang/Syntax;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    .line 14
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/function;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 19
    .local v3, "obj":Ljava/lang/Object;
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_5

    .line 21
    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    move-object v4, v7

    .line 22
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v7, v8, :cond_0

    .line 23
    move-object v7, v2

    const-string/jumbo v8, "too many forms after \'function\'"

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 42
    .end local v0    # "this":Lgnu/commonlisp/lang/function;
    .end local v4    # "pair":Lgnu/lists/Pair;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "this":Lgnu/commonlisp/lang/function;
    .restart local v4    # "pair":Lgnu/lists/Pair;
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 25
    .local v5, "name":Ljava/lang/Object;
    move-object v7, v5

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v5

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_2

    .line 27
    :cond_1
    new-instance v7, Lgnu/expr/ReferenceExp;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v6, v7

    .line 28
    .local v6, "rexp":Lgnu/expr/ReferenceExp;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 29
    move-object v7, v6

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 30
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 32
    .end local v6    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_2
    move-object v7, v5

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_5

    .line 34
    move-object v7, v5

    check-cast v7, Lgnu/lists/Pair;

    move-object v4, v7

    .line 35
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 36
    move-object v7, v5

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    const-string/jumbo v7, "lambda"

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 39
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 36
    :cond_4
    move-object v7, v5

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_5

    const-string/jumbo v7, "lambda"

    move-object v8, v5

    check-cast v8, Lgnu/mapping/Symbol;

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 42
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "name":Ljava/lang/Object;
    :cond_5
    move-object v7, v2

    const-string/jumbo v8, "function must be followed by name or lambda expression"

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method
