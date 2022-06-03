.class public Lgnu/ecmascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static final emptyArgs:[Lgnu/expr/Expression;

.field static emptyStatement:Lgnu/expr/Expression;

.field public static eofExpr:Lgnu/expr/Expression;


# instance fields
.field public errors:I

.field lexer:Lgnu/ecmascript/Lexer;

.field port:Lgnu/mapping/InPort;

.field previous_token:Ljava/lang/Object;

.field token:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/expr/Expression;

    sput-object v0, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    .line 351
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    .line 21
    move-object v2, v0

    new-instance v3, Lgnu/ecmascript/Lexer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    iput-object v3, v2, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    .line 22
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    new-instance v7, Lkawa/standard/Scheme;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lkawa/standard/Scheme;-><init>()V

    move-object v1, v7

    .line 506
    .local v1, "language":Lgnu/expr/Language;
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v7

    move-object v2, v7

    .line 507
    .local v2, "inp":Lgnu/mapping/InPort;
    move-object v7, v2

    instance-of v7, v7, Lgnu/mapping/TtyInPort;

    if-eqz v7, :cond_0

    .line 509
    new-instance v7, Lgnu/ecmascript/Prompter;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lgnu/ecmascript/Prompter;-><init>()V

    move-object v3, v7

    .line 510
    .local v3, "prompter":Lgnu/ecmascript/Prompter;
    move-object v7, v2

    check-cast v7, Lgnu/mapping/TtyInPort;

    move-object v8, v3

    check-cast v8, Lgnu/mapping/Procedure;

    invoke-virtual {v7, v8}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 513
    .end local v3    # "prompter":Lgnu/ecmascript/Prompter;
    :cond_0
    new-instance v7, Lgnu/ecmascript/Parser;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lgnu/ecmascript/Parser;-><init>(Lgnu/mapping/InPort;)V

    move-object v3, v7

    .line 514
    .local v3, "parser":Lgnu/ecmascript/Parser;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v7

    move-object v4, v7

    .line 530
    .local v4, "out":Lgnu/mapping/OutPort;
    :goto_0
    move-object v7, v3

    :try_start_0
    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 531
    .local v5, "expr":Lgnu/expr/Expression;
    move-object v7, v5

    sget-object v8, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    if-ne v7, v8, :cond_1

    .line 532
    .line 548
    .end local v5    # "expr":Lgnu/expr/Expression;
    :goto_1
    return-void

    .line 533
    .restart local v5    # "expr":Lgnu/expr/Expression;
    :cond_1
    move-object v7, v4

    const-string/jumbo v8, "[Expression: "

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 534
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 535
    move-object v7, v4

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 536
    move-object v7, v5

    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 537
    .local v6, "result":Ljava/lang/Object;
    move-object v7, v4

    const-string/jumbo v8, "result: "

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 538
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 539
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 541
    .end local v5    # "expr":Lgnu/expr/Expression;
    .end local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 543
    .local v5, "ex":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "caught exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    move-object v7, v5

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 545
    goto :goto_1
.end method


# virtual methods
.method public buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "init":Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "test":Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "incr":Lgnu/expr/Expression;
    move-object/from16 v4, p4

    .local v4, "body":Lgnu/expr/Expression;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 382
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v5, v6

    .line 383
    .local v5, "pair":[Lgnu/expr/Expression;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 384
    move-object v6, v5

    const/4 v7, 0x1

    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    .line 385
    new-instance v6, Lgnu/expr/BeginExp;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v5

    invoke-direct {v7, v8}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v6

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0

    .line 387
    .end local v5    # "pair":[Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    new-instance v6, Ljava/lang/Error;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "not implemented - buildLoop"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 228
    .local v1, "token":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 231
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 230
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "missing identifier"

    invoke-virtual {v2, v3}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 231
    const-string/jumbo v2, "??"

    move-object v0, v2

    goto :goto_0
.end method

.method public getSemicolon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v1, v2, :cond_1

    .line 149
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    move-object v1, v0

    const-string/jumbo v2, "missing \';\' after expression"

    invoke-virtual {v1, v2}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 130
    .local v1, "result":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 131
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 214
    sget-object v3, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    move-object v2, v3

    .line 215
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 216
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "prop":Lgnu/expr/Expression;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public parseArguments()[Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 189
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 190
    .local v1, "token":Ljava/lang/Object;
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v4, v5, :cond_0

    .line 192
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 193
    sget-object v4, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    move-object v0, v4

    .line 208
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 195
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    new-instance v4, Ljava/util/Vector;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    move-object v2, v4

    .line 198
    .local v2, "args":Ljava/util/Vector;
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 199
    .local v3, "arg":Lgnu/expr/Expression;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 201
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v4, v5, :cond_1

    .line 202
    .line 206
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v3, v4

    .line 207
    .local v3, "exps":[Lgnu/expr/Expression;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 208
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 203
    .local v3, "arg":Lgnu/expr/Expression;
    :cond_1
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v4, v5, :cond_2

    .line 204
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid token \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in argument list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 205
    :cond_2
    goto :goto_1
.end method

.method public parseAssignmentExpression()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->parseConditionalExpression()Lgnu/expr/Expression;

    move-result-object v6

    move-object v1, v6

    .line 43
    .local v1, "exp1":Lgnu/expr/Expression;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 44
    .local v2, "token":Ljava/lang/Object;
    move-object v6, v2

    sget-object v7, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    if-ne v6, v7, :cond_1

    .line 46
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 47
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v6

    move-object v3, v6

    .line 48
    .local v3, "exp2":Lgnu/expr/Expression;
    move-object v6, v1

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_0

    .line 50
    new-instance v6, Lgnu/expr/SetExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    check-cast v8, Lgnu/expr/ReferenceExp;

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v4, v6

    .line 51
    .local v4, "sex":Lgnu/expr/SetExp;
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 52
    move-object v6, v4

    move-object v0, v6

    .line 66
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    .end local v3    # "exp2":Lgnu/expr/Expression;
    .end local v4    # "sex":Lgnu/expr/SetExp;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    .restart local v3    # "exp2":Lgnu/expr/Expression;
    :cond_0
    move-object v6, v0

    const-string/jumbo v7, "unmplemented non-symbol ihs in assignment"

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 58
    .end local v3    # "exp2":Lgnu/expr/Expression;
    :cond_1
    move-object v6, v2

    instance-of v6, v6, Lgnu/ecmascript/Reserved;

    if-nez v6, :cond_2

    .line 59
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 60
    :cond_2
    move-object v6, v2

    check-cast v6, Lgnu/ecmascript/Reserved;

    move-object v3, v6

    .line 61
    .local v3, "op":Lgnu/ecmascript/Reserved;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/ecmascript/Reserved;->isAssignmentOp()Z

    move-result v6

    if-nez v6, :cond_3

    .line 62
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 63
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 64
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 65
    .local v4, "exp2":Lgnu/expr/Expression;
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    move-object v5, v6

    .line 66
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    iget-object v10, v10, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public parseBinaryExpression(I)Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move v1, p1

    .local v1, "prio":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->parseUnaryExpression()Lgnu/expr/Expression;

    move-result-object v6

    move-object v2, v6

    .line 338
    .local v2, "exp1":Lgnu/expr/Expression;
    :goto_0
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 339
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    instance-of v6, v6, Lgnu/ecmascript/Reserved;

    if-nez v6, :cond_0

    .line 340
    move-object v6, v2

    move-object v0, v6

    .line 343
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_1
    return-object v0

    .line 341
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    check-cast v6, Lgnu/ecmascript/Reserved;

    move-object v3, v6

    .line 342
    .local v3, "op":Lgnu/ecmascript/Reserved;
    move-object v6, v3

    iget v6, v6, Lgnu/ecmascript/Reserved;->prio:I

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 343
    move-object v6, v2

    move-object v0, v6

    goto :goto_1

    .line 344
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v6

    .line 345
    move-object v6, v0

    move-object v7, v3

    iget v7, v7, Lgnu/ecmascript/Reserved;->prio:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 346
    .local v4, "exp2":Lgnu/expr/Expression;
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    move-object v5, v6

    .line 347
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    iget-object v10, v10, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v2, v6

    .line 348
    goto :goto_0
.end method

.method public parseBlock()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    const/4 v6, 0x0

    move-object v1, v6

    .line 443
    .local v1, "exps":[Lgnu/expr/Expression;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-eq v6, v7, :cond_0

    .line 444
    move-object v6, v0

    const-string/jumbo v7, "extened \'{\'"

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 469
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 445
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 448
    .local v2, "nExps":I
    :goto_1
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 450
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v7, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-ne v6, v7, :cond_3

    .line 452
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 453
    move-object v6, v1

    if-nez v6, :cond_1

    .line 454
    sget-object v6, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    move-object v0, v6

    goto :goto_0

    .line 455
    :cond_1
    const/4 v6, 0x1

    move v3, v6

    .line 459
    .local v3, "last":Z
    :goto_2
    move-object v6, v1

    if-nez v6, :cond_4

    .line 460
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v1, v6

    .line 468
    :cond_2
    :goto_3
    move v6, v3

    if-eqz v6, :cond_7

    .line 469
    new-instance v6, Lgnu/expr/BeginExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0

    .line 458
    .end local v3    # "last":Z
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "last":Z
    goto :goto_2

    .line 461
    :cond_4
    move v6, v3

    if-eqz v6, :cond_5

    move-object v6, v1

    array-length v6, v6

    move v7, v2

    if-eq v6, v7, :cond_2

    .line 463
    :goto_4
    move v6, v3

    if-eqz v6, :cond_6

    move v6, v2

    :goto_5
    move v4, v6

    .line 464
    .local v4, "newsize":I
    move v6, v4

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v5, v6

    .line 465
    .local v5, "new_exps":[Lgnu/expr/Expression;
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    move-object v6, v5

    move-object v1, v6

    goto :goto_3

    .line 461
    .end local v4    # "newsize":I
    .end local v5    # "new_exps":[Lgnu/expr/Expression;
    :cond_5
    move-object v6, v1

    array-length v6, v6

    move v7, v2

    if-gt v6, v7, :cond_2

    goto :goto_4

    .line 463
    :cond_6
    const/4 v6, 0x2

    move-object v7, v1

    array-length v7, v7

    mul-int/2addr v6, v7

    goto :goto_5

    .line 470
    :cond_7
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    .line 471
    goto :goto_1
.end method

.method public parseConditionalExpression()Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v1, v5

    .line 28
    .local v1, "exp1":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 29
    .local v2, "result":Ljava/lang/Object;
    move-object v5, v2

    sget-object v6, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    if-eq v5, v6, :cond_0

    .line 30
    move-object v5, v1

    move-object v0, v5

    .line 36
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 32
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 33
    .local v3, "exp2":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    if-eq v5, v6, :cond_1

    .line 34
    move-object v5, v0

    const-string/jumbo v6, "expected \':\' in conditional expression"

    invoke-virtual {v5, v6}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 35
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 36
    .local v4, "exp3":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public parseExpression()Lgnu/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    const/4 v7, 0x0

    move-object v1, v7

    .line 74
    .local v1, "exps":[Lgnu/expr/Expression;
    const/4 v7, 0x0

    move v2, v7

    .line 77
    .local v2, "nExps":I
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v7

    move-object v3, v7

    .line 78
    .local v3, "exp1":Lgnu/expr/Expression;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 79
    .local v4, "last":Z
    move-object v7, v1

    if-nez v7, :cond_3

    .line 81
    move v7, v4

    if-eqz v7, :cond_1

    .line 82
    move-object v7, v3

    move-object v0, v7

    .line 94
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_2
    return-object v0

    .line 78
    .end local v4    # "last":Z
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 83
    .restart local v4    # "last":Z
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v1, v7

    .line 92
    :cond_2
    :goto_3
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    .line 93
    move v7, v4

    if-eqz v7, :cond_6

    .line 94
    new-instance v7, Lgnu/expr/BeginExp;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v7

    goto :goto_2

    .line 85
    :cond_3
    move v7, v4

    if-eqz v7, :cond_4

    move-object v7, v1

    array-length v7, v7

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-eq v7, v8, :cond_2

    .line 87
    :goto_4
    move v7, v4

    if-eqz v7, :cond_5

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    :goto_5
    move v5, v7

    .line 88
    .local v5, "newsize":I
    move v7, v5

    new-array v7, v7, [Lgnu/expr/Expression;

    move-object v6, v7

    .line 89
    .local v6, "new_exps":[Lgnu/expr/Expression;
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v2

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move-object v7, v6

    move-object v1, v7

    goto :goto_3

    .line 85
    .end local v5    # "newsize":I
    .end local v6    # "new_exps":[Lgnu/expr/Expression;
    :cond_4
    move-object v7, v1

    array-length v7, v7

    move v8, v2

    if-gt v7, v8, :cond_2

    goto :goto_4

    .line 87
    :cond_5
    const/4 v7, 0x2

    move-object v8, v1

    array-length v8, v8

    mul-int/2addr v7, v8

    goto :goto_5

    .line 95
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 96
    goto :goto_0
.end method

.method public parseFunctionDefinition()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 409
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 410
    .local v1, "name":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 411
    .local v2, "token":Ljava/lang/Object;
    move-object v7, v2

    sget-object v8, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v7, v8, :cond_0

    .line 412
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "expected \'(\' - got:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 436
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 413
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    new-instance v7, Ljava/util/Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    move-object v3, v7

    .line 414
    .local v3, "args":Ljava/util/Vector;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v7, v8, :cond_2

    .line 416
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 431
    :goto_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 432
    .local v4, "body":Lgnu/expr/Expression;
    new-instance v7, Lgnu/expr/LambdaExp;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    move-object v5, v7

    .line 433
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 434
    new-instance v7, Lgnu/expr/SetExp;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v6, v7

    .line 435
    .local v6, "sexp":Lgnu/expr/SetExp;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 436
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 427
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    .end local v6    # "sexp":Lgnu/expr/SetExp;
    .local v4, "arg":Ljava/lang/String;
    :cond_1
    move-object v7, v2

    sget-object v8, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v7, v8, :cond_2

    .line 428
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid token \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' in argument list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    .line 429
    .line 422
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 423
    .restart local v4    # "arg":Ljava/lang/String;
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 424
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 425
    move-object v7, v2

    sget-object v8, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v7, v8, :cond_1

    .line 426
    goto :goto_1
.end method

.method public parseIfStatement()Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 357
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 358
    .local v1, "token":Ljava/lang/Object;
    move-object v5, v1

    sget-object v6, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v5, v6, :cond_0

    .line 359
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected \'(\' - got:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 374
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 360
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 361
    .local v2, "test_part":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 362
    move-object v5, v1

    sget-object v6, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v5, v6, :cond_1

    .line 363
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected \')\' - got:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 364
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 365
    .local v3, "then_part":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 367
    move-object v5, v1

    sget-object v6, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    if-ne v5, v6, :cond_2

    .line 369
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 370
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 374
    .local v4, "else_part":Lgnu/expr/Expression;
    :goto_1
    new-instance v5, Lgnu/expr/IfExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v5

    goto :goto_0

    .line 373
    .end local v4    # "else_part":Lgnu/expr/Expression;
    :cond_2
    const/4 v5, 0x0

    move-object v4, v5

    .restart local v4    # "else_part":Lgnu/expr/Expression;
    goto :goto_1
.end method

.method public parseLeftHandSideExpression()Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    const/4 v5, 0x0

    move v1, v5

    .line 238
    .local v1, "newCount":I
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    if-ne v5, v6, :cond_0

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_0

    .line 243
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parsePrimaryExpression()Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 246
    .local v2, "exp":Lgnu/expr/Expression;
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 247
    .local v3, "token":Ljava/lang/Object;
    move-object v5, v3

    sget-object v6, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    if-ne v5, v6, :cond_1

    .line 249
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 250
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 251
    .local v4, "name":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v2

    new-instance v7, Lgnu/expr/QuoteExp;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v4

    invoke-direct {v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 276
    .end local v4    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 253
    :cond_1
    move-object v5, v3

    sget-object v6, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    if-ne v5, v6, :cond_3

    .line 255
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 256
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 257
    .local v4, "prop":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 258
    move-object v5, v3

    sget-object v6, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    if-eq v5, v6, :cond_2

    .line 259
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected \']\' - got:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 281
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    .end local v4    # "prop":Lgnu/expr/Expression;
    :goto_3
    return-object v0

    .line 260
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    .restart local v4    # "prop":Lgnu/expr/Expression;
    :cond_2
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 261
    goto :goto_2

    .line 262
    .end local v4    # "prop":Lgnu/expr/Expression;
    :cond_3
    move-object v5, v3

    sget-object v6, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v5, v6, :cond_5

    .line 264
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/ecmascript/Parser;->parseArguments()[Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 265
    .local v4, "args":[Lgnu/expr/Expression;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "after parseArgs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    move v5, v1

    if-lez v5, :cond_4

    .line 268
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 269
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 272
    :cond_4
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/ecmascript/Parser;->makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    goto/16 :goto_2

    .line 277
    .end local v4    # "args":[Lgnu/expr/Expression;
    :cond_5
    :goto_4
    move v5, v1

    if-lez v5, :cond_6

    .line 279
    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 277
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 281
    :cond_6
    move-object v5, v2

    move-object v0, v5

    goto :goto_3
.end method

.method public parsePostfixExpression()Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->parseLeftHandSideExpression()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 288
    .local v1, "exp":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->peekTokenOrLine()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 289
    .local v2, "op":Ljava/lang/Object;
    move-object v4, v2

    sget-object v5, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    sget-object v5, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    if-eq v4, v5, :cond_0

    .line 290
    move-object v4, v1

    move-object v0, v4

    .line 293
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 291
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 292
    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v3, v4

    .line 293
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    check-cast v8, Lgnu/ecmascript/Reserved;

    iget-object v8, v8, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public parsePrimaryExpression()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 163
    .local v1, "result":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 164
    move-object v4, v1

    check-cast v4, Lgnu/expr/QuoteExp;

    move-object v0, v4

    .line 175
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 165
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 166
    new-instance v4, Lgnu/expr/ReferenceExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0

    .line 167
    :cond_1
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v4, v5, :cond_3

    .line 169
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v4

    move-object v2, v4

    .line 170
    .local v2, "expr":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 171
    .local v3, "token":Ljava/lang/Object;
    move-object v4, v3

    sget-object v5, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v4, v5, :cond_2

    .line 172
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "expected \')\' - got:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 173
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 175
    .end local v2    # "expr":Lgnu/expr/Expression;
    .end local v3    # "token":Ljava/lang/Object;
    :cond_3
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public parseStatement()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 478
    .local v1, "token":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/ecmascript/Reserved;

    if-eqz v3, :cond_0

    .line 480
    move-object v3, v1

    check-cast v3, Lgnu/ecmascript/Reserved;

    iget v3, v3, Lgnu/ecmascript/Reserved;->prio:I

    sparse-switch v3, :sswitch_data_0

    .line 487
    :cond_0
    move-object v3, v1

    sget-object v4, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 488
    sget-object v3, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    move-object v0, v3

    .line 499
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 482
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :sswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->parseIfStatement()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 483
    :sswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->parseWhileStatement()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 484
    :sswitch_2
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->parseFunctionDefinition()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 489
    :cond_1
    move-object v3, v1

    sget-object v4, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v3, v4, :cond_2

    .line 491
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 492
    sget-object v3, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    move-object v0, v3

    goto :goto_0

    .line 494
    :cond_2
    move-object v3, v1

    sget-object v4, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-ne v3, v4, :cond_3

    .line 495
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 497
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v3

    move-object v2, v3

    .line 498
    .local v2, "exp":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Parser;->getSemicolon()V

    .line 499
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
        0x29 -> :sswitch_2
    .end sparse-switch
.end method

.method public parseUnaryExpression()Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/ecmascript/Parser;->parsePostfixExpression()Lgnu/expr/Expression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public parseWhileStatement()Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 394
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 395
    .local v1, "token":Ljava/lang/Object;
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v4, v5, :cond_0

    .line 396
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "expected \'(\' - got:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .line 402
    .end local v0    # "this":Lgnu/ecmascript/Parser;
    :goto_0
    return-object v0

    .line 397
    .restart local v0    # "this":Lgnu/ecmascript/Parser;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v4

    move-object v2, v4

    .line 398
    .local v2, "test_part":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 399
    move-object v4, v1

    sget-object v5, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v4, v5, :cond_1

    .line 400
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "expected \')\' - got:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 401
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 402
    .local v3, "body":Lgnu/expr/Expression;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public peekToken()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 117
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v2}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 118
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 120
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 121
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v2}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public peekTokenOrLine()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 106
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v2}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 107
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method

.method public final skipToken()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, v0

    iget-object v1, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v2, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 138
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Parser;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/ecmascript/Parser;->errors:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/ecmascript/Parser;->errors:I

    .line 311
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v6

    move-object v2, v6

    .line 312
    .local v2, "err":Lgnu/mapping/OutPort;
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 313
    .local v3, "current_filename":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 314
    .local v4, "current_line":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->getColumnNumber()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 315
    .local v5, "current_column":I
    move v6, v4

    if-lez v6, :cond_2

    .line 317
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 318
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 319
    :cond_0
    move-object v6, v2

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(C)V

    .line 320
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(I)V

    .line 321
    move v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 323
    move-object v6, v2

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(C)V

    .line 324
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(I)V

    .line 326
    :cond_1
    move-object v6, v2

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 328
    :cond_2
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 329
    new-instance v6, Lgnu/expr/ErrorExp;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .end local v0    # "this":Lgnu/ecmascript/Parser;
    return-object v0
.end method
