.class public Lkawa/lib/kawa/regex$frame;
.super Lgnu/expr/ModuleBody;
.source "regex.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/kawa/regex;->regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field loop:Ljava/lang/Object;

.field matcher:Ljava/util/regex/Matcher;

.field repl:Ljava/lang/Object;

.field sbuf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    sget-object v6, Lkawa/lib/kawa/regex;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lib/kawa/regex$frame;->lambda1loop()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public lambda1loop()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/regex$frame;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v0

    iget-object v1, v1, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    move-object v2, v0

    iget-object v2, v2, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 77
    move-object v4, v0

    iget-object v4, v4, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .line 80
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    move-object v2, v0

    iget-object v2, v2, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lib/kawa/regex$frame;
    return-object v0

    .line 77
    .restart local v0    # "this":Lkawa/lib/kawa/regex$frame;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method
