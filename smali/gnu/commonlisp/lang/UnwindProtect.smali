.class public Lgnu/commonlisp/lang/UnwindProtect;
.super Lkawa/lang/Syntax;
.source "UnwindProtect.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/UnwindProtect;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/UnwindProtect;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/Pair;

    if-nez v4, :cond_0

    .line 12
    move-object v4, v2

    const-string/jumbo v5, "invalid syntax for unwind-protect"

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .line 14
    .end local v0    # "this":Lgnu/commonlisp/lang/UnwindProtect;
    :goto_0
    return-object v0

    .line 13
    .restart local v0    # "this":Lgnu/commonlisp/lang/UnwindProtect;
    :cond_0
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 14
    .local v3, "pair":Lgnu/lists/Pair;
    new-instance v4, Lgnu/expr/TryExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v4

    goto :goto_0
.end method
