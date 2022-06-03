.class public Lkawa/standard/constant_fold;
.super Lkawa/lang/Syntax;
.source "constant_fold.java"


# static fields
.field public static final constant_fold:Lkawa/standard/constant_fold;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/constant_fold;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/constant_fold;-><init>()V

    sput-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    .line 11
    sget-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    const-string/jumbo v1, "constant-fold"

    invoke-virtual {v0, v1}, Lkawa/standard/constant_fold;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/constant_fold;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method static checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 15
    move-object v1, p0

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p1

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v5, v1

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_0

    .line 16
    move-object v5, v1

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 26
    .end local v1    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v1

    .line 17
    .restart local v1    # "exp":Lgnu/expr/Expression;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_3

    .line 19
    move-object v5, v1

    check-cast v5, Lgnu/expr/ReferenceExp;

    move-object v3, v5

    .line 20
    .local v3, "rexp":Lgnu/expr/ReferenceExp;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 21
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 22
    :cond_1
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 24
    :cond_2
    move-object v5, v4

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 26
    .end local v3    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :cond_3
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lkawa/standard/constant_fold;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v10, v2

    move-object v11, v1

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v3, v10

    .line 32
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v10, v3

    instance-of v10, v10, Lgnu/expr/ApplyExp;

    if-nez v10, :cond_0

    .line 33
    move-object v10, v3

    move-object v0, v10

    .line 61
    .end local v0    # "this":Lkawa/standard/constant_fold;
    :goto_0
    return-object v0

    .line 34
    .restart local v0    # "this":Lkawa/standard/constant_fold;
    :cond_0
    move-object v10, v3

    check-cast v10, Lgnu/expr/ApplyExp;

    move-object v4, v10

    .line 35
    .local v4, "aexp":Lgnu/expr/ApplyExp;
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    move-object v11, v2

    invoke-static {v10, v11}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    .line 36
    .local v5, "func":Ljava/lang/Object;
    move-object v10, v5

    instance-of v10, v10, Lgnu/mapping/Procedure;

    if-nez v10, :cond_1

    .line 37
    move-object v10, v3

    move-object v0, v10

    goto :goto_0

    .line 43
    :cond_1
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v6, v10

    .line 44
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v10, v6

    array-length v10, v10

    move v7, v10

    .line 45
    .local v7, "i":I
    move v10, v7

    new-array v10, v10, [Ljava/lang/Object;

    move-object v8, v10

    .line 46
    .local v8, "vals":[Ljava/lang/Object;
    :goto_1
    add-int/lit8 v7, v7, -0x1

    move v10, v7

    if-ltz v10, :cond_3

    .line 48
    move-object v10, v6

    move v11, v7

    aget-object v10, v10, v11

    move-object v11, v2

    invoke-static {v10, v11}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 49
    .local v9, "val":Ljava/lang/Object;
    move-object v10, v9

    if-nez v10, :cond_2

    .line 50
    move-object v10, v3

    move-object v0, v10

    goto :goto_0

    .line 51
    :cond_2
    move-object v10, v8

    move v11, v7

    move-object v12, v9

    aput-object v12, v10, v11

    .line 52
    goto :goto_1

    .line 55
    .end local v9    # "val":Ljava/lang/Object;
    :cond_3
    :try_start_0
    new-instance v10, Lgnu/expr/QuoteExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    check-cast v12, Lgnu/mapping/Procedure;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    goto :goto_0

    .line 57
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 59
    .local v9, "ex":Ljava/lang/Throwable;
    move-object v10, v2

    const-string/jumbo v11, "caught exception in constant-fold:"

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v3, v10

    .line 60
    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    .line 61
    move-object v10, v3

    move-object v0, v10

    goto :goto_0
.end method
