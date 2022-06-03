.class public Lkawa/lib/kawa/regex;
.super Lgnu/expr/ModuleBody;
.source "regex.scm"


# static fields
.field public static final $instance:Lkawa/lib/kawa/regex;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final regex$Mnmatch:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnquote:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnsplit:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-replace*"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-replace"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-split"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-match-positions"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-match"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-match?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "regex-quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "loop"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lib/kawa/regex;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lkawa/lib/kawa/regex;-><init>()V

    sput-object v1, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnquote:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnmatch:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnsplit:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnreplace:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xe

    sget-object v5, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z
    .locals 14

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "end":I
    move-object v6, v0

    instance-of v6, v6, Ljava/util/regex/Pattern;

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v6

    .line 12
    .local v4, "rex":Ljava/util/regex/Pattern;
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    move-object v5, v6

    .line 13
    .local v5, "matcher":Ljava/util/regex/Matcher;
    move-object v6, v5

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 14
    move-object v6, v5

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    move v0, v6

    .end local v0    # "re":Ljava/lang/Object;
    return v0

    .line 9
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v0    # "re":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    goto :goto_0

    .line 11
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "rex"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 16
    move-object/from16 v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "end":I
    move-object v9, v0

    instance-of v9, v9, Ljava/util/regex/Pattern;

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_0
    check-cast v9, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v9

    .line 19
    .local v4, "rex":Ljava/util/regex/Pattern;
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    move-object v5, v9

    .line 20
    .local v5, "matcher":Ljava/util/regex/Matcher;
    move-object v9, v5

    move v10, v2

    move v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v9

    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 22
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v7, v10

    move v6, v9

    .line 24
    .end local v2    # "start":I
    .local v6, "igroup":I
    :goto_1
    move v9, v6

    if-gez v9, :cond_1

    move-object v9, v7

    .line 29
    .end local v6    # "igroup":I
    :goto_2
    move-object v0, v9

    .end local v0    # "re":Ljava/lang/Object;
    return-object v0

    .line 16
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v0    # "re":Ljava/lang/Object;
    .restart local v2    # "start":I
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    goto :goto_0

    .line 25
    .end local v2    # "start":I
    .restart local v4    # "rex":Ljava/util/regex/Pattern;
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v6    # "igroup":I
    :cond_1
    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    move v8, v9

    .line 28
    .local v8, "start":I
    move v9, v8

    if-gez v9, :cond_2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    :goto_3
    move-object v10, v7

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v7, v9

    .local v7, "r":Lgnu/lists/Pair;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v7    # "r":Lgnu/lists/Pair;
    :cond_2
    move-object v9, v1

    move v10, v8

    move-object v11, v5

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_3

    .end local v6    # "igroup":I
    .end local v8    # "start":I
    .restart local v2    # "start":I
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 18
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "rex"

    const/4 v13, -0x2

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "end":I
    move-object v9, v0

    instance-of v9, v9, Ljava/util/regex/Pattern;

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_0
    check-cast v9, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v9

    .line 36
    .local v4, "rex":Ljava/util/regex/Pattern;
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    move-object v5, v9

    .line 37
    .local v5, "matcher":Ljava/util/regex/Matcher;
    move-object v9, v5

    move v10, v2

    move v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v9

    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 39
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v7, v10

    move v6, v9

    .line 41
    .end local v2    # "start":I
    .local v6, "igroup":I
    :goto_1
    move v9, v6

    if-gez v9, :cond_1

    move-object v9, v7

    .line 46
    .end local v6    # "igroup":I
    :goto_2
    move-object v0, v9

    .end local v0    # "re":Ljava/lang/Object;
    return-object v0

    .line 33
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v0    # "re":Ljava/lang/Object;
    .restart local v2    # "start":I
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    goto :goto_0

    .line 42
    .end local v2    # "start":I
    .restart local v4    # "rex":Ljava/util/regex/Pattern;
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v6    # "igroup":I
    :cond_1
    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    move v8, v9

    .line 45
    .local v8, "start":I
    move v9, v8

    if-gez v9, :cond_2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    :goto_3
    move-object v10, v7

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v7, v9

    .local v7, "r":Lgnu/lists/Pair;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v7    # "r":Lgnu/lists/Pair;
    :cond_2
    move v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    goto :goto_3

    .end local v6    # "igroup":I
    .end local v8    # "start":I
    .restart local v2    # "start":I
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 35
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "rex"

    const/4 v13, -0x2

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0

    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 14

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .local v2, "repl":Ljava/lang/Object;
    move-object v6, v0

    instance-of v6, v6, Ljava/util/regex/Pattern;

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    :try_start_0
    check-cast v6, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v6

    .line 57
    .local v3, "rex":Ljava/util/regex/Pattern;
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    move-object v4, v6

    .line 58
    .local v4, "matcher":Ljava/util/regex/Matcher;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 59
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v6

    .line 60
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v4

    move-object v7, v5

    move-object v8, v2

    invoke-static {v8}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 62
    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    if-nez v9, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    :goto_2
    invoke-virtual {v6, v7, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 64
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 65
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    :goto_3
    move-object v0, v6

    .end local v0    # "re":Ljava/lang/Object;
    return-object v0

    .line 55
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v0    # "re":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    goto :goto_0

    .line 62
    .restart local v3    # "rex":Ljava/util/regex/Pattern;
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "sbuf":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 61
    :cond_2
    move-object v8, v2

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    if-nez v9, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 58
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    :cond_4
    move-object v6, v1

    goto :goto_3

    .line 56
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "rex"

    const/4 v10, -0x2

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 14

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .local v2, "repl":Ljava/lang/Object;
    new-instance v6, Lkawa/lib/kawa/regex$frame;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lkawa/lib/kawa/regex$frame;-><init>()V

    move-object v3, v6

    move-object v6, v3

    move-object v7, v2

    iput-object v7, v6, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    .line 69
    move-object v6, v0

    instance-of v6, v6, Ljava/util/regex/Pattern;

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v6

    .line 70
    .local v4, "rex":Ljava/util/regex/Pattern;
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    move-object v7, v3

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    .line 69
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v3

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    .line 72
    move-object v6, v3

    iget-object v6, v6, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    move-object v6, v3

    iget-object v6, v6, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    move-object v7, v3

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    move-object v6, v3

    invoke-virtual {v6}, Lkawa/lib/kawa/regex$frame;->lambda1loop()Ljava/lang/String;

    move-result-object v6

    .line 82
    :goto_1
    move-object v0, v6

    .end local v0    # "re":Ljava/lang/Object;
    return-object v0

    .line 69
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    .restart local v0    # "re":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    goto :goto_0

    .line 82
    .restart local v4    # "rex":Ljava/util/regex/Pattern;
    :cond_1
    move-object v6, v3

    iget-object v6, v6, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    move-object v7, v3

    iget-object v7, v7, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    if-nez v8, :cond_2

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 69
    .end local v4    # "rex":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "rex"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .locals 12

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "re":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v4, v0

    instance-of v4, v4, Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v3, v5

    :try_start_0
    check-cast v4, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v4

    .line 52
    .local v2, "rex":Ljava/util/regex/Pattern;
    move-object v4, v2

    move-object v5, v1

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 53
    .local v3, "parts":[Ljava/lang/String;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "re":Ljava/lang/Object;
    return-object v0

    .line 50
    .end local v2    # "rex":Ljava/util/regex/Pattern;
    .end local v3    # "parts":[Ljava/lang/String;
    .restart local v0    # "re":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    goto :goto_0

    .line 51
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "rex"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 6
    move-object v3, v2

    :try_start_0
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/kawa/regex;->regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 6
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "regex-quote"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 50
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 9
    :sswitch_0
    move-object v4, v2

    move-object v5, v3

    :try_start_0
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v5}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 16
    :sswitch_1
    move-object v4, v2

    move-object v5, v3

    :try_start_1
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4, v5}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 33
    :sswitch_2
    move-object v4, v2

    move-object v5, v3

    :try_start_2
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v4, v5}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 50
    :sswitch_3
    move-object v4, v2

    move-object v5, v3

    :try_start_3
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4, v5}, Lkawa/lib/kawa/regex;->regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 9
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "regex-match?"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 16
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "regex-match"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 33
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "regex-match-positions"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 50
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "regex-split"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 68
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 9
    :sswitch_0
    move-object v5, v2

    move-object v6, v3

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v4

    :try_start_1
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 16
    :sswitch_1
    move-object v5, v2

    move-object v6, v3

    :try_start_2
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v4

    :try_start_3
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 33
    :sswitch_2
    move-object v5, v2

    move-object v6, v3

    :try_start_4
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v7, v4

    :try_start_5
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 55
    :sswitch_3
    move-object v5, v2

    move-object v6, v3

    :try_start_6
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/kawa/regex;->regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 68
    :sswitch_4
    move-object v5, v2

    move-object v6, v3

    :try_start_7
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/kawa/regex;->regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 9
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match?"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 10
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match?"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 16
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 17
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 33
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match-positions"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 34
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-match-positions"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 55
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-replace"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 68
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "regex-replace*"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v6, :sswitch_data_0

    .line 33
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    .line 9
    :sswitch_0
    move-object v6, v2

    move-object v7, v3

    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v4

    :try_start_1
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    move-object v9, v5

    :try_start_2
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 16
    :sswitch_1
    move-object v6, v2

    move-object v7, v3

    :try_start_3
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v4

    :try_start_4
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    move-object v9, v5

    :try_start_5
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 33
    :sswitch_2
    move-object v6, v2

    move-object v7, v3

    :try_start_6
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v8, v4

    :try_start_7
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v8

    move-object v9, v5

    :try_start_8
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 9
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match?"

    const/4 v10, 0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 10
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match?"

    const/4 v10, 0x3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match?"

    const/4 v10, 0x4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 16
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match"

    const/4 v10, 0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 17
    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match"

    const/4 v10, 0x3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match"

    const/4 v10, 0x4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 33
    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match-positions"

    const/4 v10, 0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 34
    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match-positions"

    const/4 v10, 0x3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "regex-match-positions"

    const/4 v10, 0x4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 6
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 4294967295
    .line 6
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_1
    const v6, -0xbffff

    move v0, v6

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 9
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 50
    :goto_0
    return v0

    :sswitch_0
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_0
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 33
    :sswitch_1
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_1
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 16
    :sswitch_2
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_2
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 9
    :sswitch_3
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_3
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0x9 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v6, :sswitch_data_0

    .line 9
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 68
    :goto_0
    return v0

    :sswitch_0
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_0
    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    .line 55
    :sswitch_1
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_1
    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    .line 33
    :sswitch_2
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_2
    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    .line 16
    :sswitch_3
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_3
    const v8, -0xbfffe

    move v0, v8

    goto/16 :goto_0

    .line 9
    :sswitch_4
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_4
    const v8, -0xbfffe

    move v0, v8

    goto/16 :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 15

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    iget v7, v7, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v7, :sswitch_data_0

    .line 9
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-super/range {v7 .. v13}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    .line 33
    :goto_0
    return v0

    :sswitch_0
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_0

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_0
    const v9, -0xbfffe

    move v0, v9

    goto :goto_0

    .line 16
    :sswitch_1
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_1

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_1
    const v9, -0xbfffe

    move v0, v9

    goto :goto_0

    .line 9
    :sswitch_2
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_2
    const v9, -0xbfffe

    move v0, v9

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/regex;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 6
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
