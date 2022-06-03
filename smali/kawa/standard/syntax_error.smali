.class public Lkawa/standard/syntax_error;
.super Lkawa/lang/Syntax;
.source "syntax_error.java"


# static fields
.field public static final syntax_error:Lkawa/standard/syntax_error;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/syntax_error;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/syntax_error;-><init>()V

    sput-object v0, Lkawa/standard/syntax_error;->syntax_error:Lkawa/standard/syntax_error;

    .line 14
    sget-object v0, Lkawa/standard/syntax_error;->syntax_error:Lkawa/standard/syntax_error;

    const-string/jumbo v1, "%syntax-error"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_error;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_error;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "message":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v8

    .line 41
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move-object v8, v1

    array-length v8, v8

    move v3, v8

    .line 42
    .local v3, "len":I
    move-object v8, v1

    if-eqz v8, :cond_0

    move v8, v3

    if-nez v8, :cond_2

    .line 43
    :cond_0
    move-object v8, v2

    const-string/jumbo v9, "invalid syntax"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 49
    :cond_1
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v8

    check-cast v8, Lkawa/lang/Translator;

    move-object v4, v8

    .line 50
    .local v4, "tr":Lkawa/lang/Translator;
    move-object v8, v4

    if-nez v8, :cond_3

    .line 51
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 46
    .end local v4    # "tr":Lkawa/lang/Translator;
    :cond_2
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 47
    move-object v8, v2

    move-object v9, v1

    move v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    .local v4, "tr":Lkawa/lang/Translator;
    :cond_3
    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 55
    .local v5, "savePos":Ljava/lang/Object;
    move-object v8, v4

    move-object v9, v2

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v6, v8

    .line 59
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v0, v8

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "form":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v8, v7

    throw v8
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_error;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v6

    .line 19
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    move v4, v6

    .line 20
    .local v4, "words":I
    :goto_0
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 22
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 23
    .local v5, "pair":Lgnu/lists/Pair;
    move v6, v4

    if-lez v6, :cond_0

    .line 24
    move-object v6, v3

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 25
    :cond_0
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 26
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    .end local v5    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v6, v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v6, v7, :cond_3

    .line 31
    move v6, v4

    if-lez v6, :cond_2

    .line 32
    move-object v6, v3

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 33
    :cond_2
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 35
    :cond_3
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lkawa/standard/syntax_error;
    return-object v0
.end method
