.class public Lgnu/ecmascript/Lexer;
.super Lgnu/text/Lexer;
.source "Lexer.java"


# static fields
.field public static final colonToken:Lgnu/text/Char;

.field public static final commaToken:Lgnu/text/Char;

.field public static final condToken:Lgnu/text/Char;

.field public static final dotToken:Lgnu/text/Char;

.field public static final elseToken:Lgnu/ecmascript/Reserved;

.field public static final eofToken:Ljava/lang/Object;

.field public static final eolToken:Ljava/lang/Object;

.field public static final equalToken:Lgnu/text/Char;

.field public static final lbraceToken:Lgnu/text/Char;

.field public static final lbracketToken:Lgnu/text/Char;

.field public static final lparenToken:Lgnu/text/Char;

.field public static final newToken:Lgnu/ecmascript/Reserved;

.field public static final notToken:Lgnu/text/Char;

.field public static final rbraceToken:Lgnu/text/Char;

.field public static final rbracketToken:Lgnu/text/Char;

.field static reserved:Ljava/util/Hashtable;

.field public static final rparenToken:Lgnu/text/Char;

.field public static final semicolonToken:Lgnu/text/Char;

.field public static final tildeToken:Lgnu/text/Char;


# instance fields
.field private prevWasCR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    const/16 v0, 0x28

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    .line 21
    const/16 v0, 0x29

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    .line 22
    const/16 v0, 0x7b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    .line 23
    const/16 v0, 0x7d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    .line 24
    const/16 v0, 0x5b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    .line 25
    const/16 v0, 0x5d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    .line 26
    const/16 v0, 0x2e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    .line 27
    const/16 v0, 0x3f

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    .line 28
    const/16 v0, 0x2c

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    .line 29
    const/16 v0, 0x3a

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    .line 30
    const/16 v0, 0x3d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    .line 31
    const/16 v0, 0x7e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    .line 32
    const/16 v0, 0x21

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    .line 33
    const/16 v0, 0x3b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 36
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "else"

    const/16 v3, 0x26

    invoke-direct {v1, v2, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    .line 38
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "new"

    const/16 v3, 0x27

    invoke-direct {v1, v2, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 13
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 18
    return-void
.end method

.method public static checkReserved(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Lgnu/ecmascript/Lexer;->initReserved()V

    .line 71
    :cond_0
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getToken(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "inp":Lgnu/mapping/InPort;
    new-instance v1, Lgnu/ecmascript/Lexer;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v1}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "inp":Lgnu/mapping/InPort;
    return-object v0
.end method

.method static declared-synchronized initReserved()V
    .locals 8

    .prologue
    .line 44
    const-class v6, Lgnu/ecmascript/Lexer;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    .line 47
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "null"

    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "true"

    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "false"

    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "var"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "var"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "if"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "if"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "while"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "while"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "for"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "for"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "continue"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "continue"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "break"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "break"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "return"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "return"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "with"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "with"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "function"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "function"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "this"

    new-instance v2, Lgnu/ecmascript/Reserved;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "this"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "else"

    sget-object v2, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string/jumbo v1, "new"

    sget-object v2, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    :cond_0
    monitor-exit v6

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v5

    move-object v1, v5

    .line 465
    .local v1, "inp":Lgnu/mapping/InPort;
    new-instance v5, Lgnu/ecmascript/Lexer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    move-object v2, v5

    .line 470
    .local v2, "reader":Lgnu/ecmascript/Lexer;
    :goto_0
    move-object v5, v2

    :try_start_0
    invoke-virtual {v5}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 471
    .local v3, "token":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v5

    move-object v4, v5

    .line 472
    .local v4, "out":Lgnu/mapping/OutPort;
    move-object v5, v4

    const-string/jumbo v6, "token:"

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 473
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 474
    move-object v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " [class:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 475
    move-object v5, v3

    sget-object v6, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    .line 476
    .line 484
    .end local v3    # "token":Ljava/lang/Object;
    .end local v4    # "out":Lgnu/mapping/OutPort;
    :goto_1
    return-void

    .line 482
    .restart local v3    # "token":Ljava/lang/Object;
    .restart local v4    # "out":Lgnu/mapping/OutPort;
    :cond_0
    goto :goto_0

    .line 478
    .end local v3    # "token":Ljava/lang/Object;
    .end local v4    # "out":Lgnu/mapping/OutPort;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 480
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "caught exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    goto :goto_1
.end method


# virtual methods
.method public getIdentifier(I)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move v1, p1

    .local v1, "ch":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v7, v7, Lgnu/text/LineBufferedReader;->pos:I

    move v2, v7

    .line 263
    .local v2, "i":I
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 264
    .local v3, "start":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v7, v7, Lgnu/text/LineBufferedReader;->limit:I

    move v4, v7

    .line 265
    .local v4, "limit":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v7, v7, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v7

    .line 266
    .local v5, "buffer":[C
    :goto_0
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v5

    move v8, v2

    aget-char v7, v7, v8

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move v8, v2

    iput v8, v7, Lgnu/text/LineBufferedReader;->pos:I

    .line 269
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 270
    new-instance v7, Ljava/lang/String;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    move v10, v3

    move v11, v2

    move v12, v3

    sub-int/2addr v11, v12

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v7

    .line 286
    .end local v0    # "this":Lgnu/ecmascript/Lexer;
    :goto_1
    return-object v0

    .line 271
    .restart local v0    # "this":Lgnu/ecmascript/Lexer;
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v7

    .line 272
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    move-object v7, v6

    move-object v8, v5

    move v9, v3

    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 275
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    move v1, v7

    .line 276
    move v7, v1

    if-gez v7, :cond_2

    .line 277
    .line 286
    :goto_3
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 278
    :cond_2
    move v7, v1

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 279
    move-object v7, v6

    move v8, v1

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_2

    .line 282
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 283
    goto :goto_3
.end method

.method public getNumericLiteral(I)Ljava/lang/Double;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move/from16 v1, p1

    .local v1, "c":I
    const/16 v12, 0xa

    move v2, v12

    .line 78
    .local v2, "radix":I
    move v12, v1

    const/16 v13, 0x30

    if-ne v12, v13, :cond_1

    .line 80
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/ecmascript/Lexer;->read()I

    move-result v12

    move v1, v12

    .line 81
    move v12, v1

    const/16 v13, 0x78

    if-eq v12, v13, :cond_0

    move v12, v1

    const/16 v13, 0x58

    if-ne v12, v13, :cond_3

    .line 83
    :cond_0
    const/16 v12, 0x10

    move v2, v12

    .line 84
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/ecmascript/Lexer;->read()I

    move-result v12

    move v1, v12

    .line 90
    :cond_1
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v12, v12, Lgnu/text/LineBufferedReader;->pos:I

    move v3, v12

    .line 91
    .local v3, "i":I
    move v12, v1

    if-ltz v12, :cond_2

    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 93
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move v13, v3

    iput v13, v12, Lgnu/text/LineBufferedReader;->pos:I

    .line 94
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move v13, v2

    invoke-static {v12, v13}, Lgnu/ecmascript/Lexer;->readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J

    move-result-wide v12

    move-wide v4, v12

    .line 95
    .local v4, "ival":J
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v12, v12, Lgnu/text/LineBufferedReader;->pos:I

    move v13, v3

    if-le v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 96
    .local v6, "digit_seen":Z
    move v12, v6

    if-eqz v12, :cond_7

    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v12, v12, Lgnu/text/LineBufferedReader;->pos:I

    move-object v13, v0

    iget-object v13, v13, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v13, v13, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v12, v13, :cond_7

    .line 98
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v12, v12, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v13, v0

    iget-object v13, v13, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v13, v13, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v12, v12, v13

    move v1, v12

    .line 99
    move v12, v1

    int-to-char v12, v12

    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v12

    if-nez v12, :cond_7

    move v12, v1

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_7

    .line 102
    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_6

    .line 103
    move-wide v12, v4

    long-to-double v12, v12

    move-wide v7, v12

    .line 107
    .local v7, "dval":D
    :goto_2
    new-instance v12, Ljava/lang/Double;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-wide v14, v7

    invoke-direct {v13, v14, v15}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v12

    .line 163
    .end local v0    # "this":Lgnu/ecmascript/Lexer;
    .end local v7    # "dval":D
    :goto_3
    return-object v0

    .line 86
    .end local v3    # "i":I
    .end local v4    # "ival":J
    .end local v6    # "digit_seen":Z
    .restart local v0    # "this":Lgnu/ecmascript/Lexer;
    :cond_3
    move v12, v1

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_1

    move v12, v1

    const/16 v13, 0x65

    if-eq v12, v13, :cond_1

    move v12, v1

    const/16 v13, 0x45

    if-ne v12, v13, :cond_4

    goto :goto_0

    .line 88
    :cond_4
    const/16 v12, 0x8

    move v2, v12

    goto :goto_0

    .line 95
    .restart local v3    # "i":I
    .restart local v4    # "ival":J
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 105
    .restart local v6    # "digit_seen":Z
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v12, v12, Lgnu/text/LineBufferedReader;->buffer:[C

    move v13, v3

    move-object v14, v0

    iget-object v14, v14, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v14, v14, Lgnu/text/LineBufferedReader;->pos:I

    move v15, v3

    sub-int/2addr v14, v15

    move v15, v2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v12

    invoke-virtual {v12}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v12

    move-wide v7, v12

    .restart local v7    # "dval":D
    goto :goto_2

    .line 110
    .end local v7    # "dval":D
    :cond_7
    move v12, v2

    const/16 v13, 0xa

    if-eq v12, v13, :cond_8

    .line 111
    move-object v12, v0

    const-string/jumbo v13, "invalid character in non-decimal number"

    invoke-virtual {v12, v13}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 112
    :cond_8
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v12

    .line 113
    .local v7, "str":Ljava/lang/StringBuffer;
    move v12, v6

    if-eqz v12, :cond_9

    .line 114
    move-object v12, v7

    move-object v13, v0

    iget-object v13, v13, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v13, v13, Lgnu/text/LineBufferedReader;->buffer:[C

    move v14, v3

    move-object v15, v0

    iget-object v15, v15, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v15, v15, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v16, v3

    sub-int v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 117
    :cond_9
    const/4 v12, -0x1

    move v8, v12

    .line 118
    .local v8, "point_loc":I
    const/4 v12, 0x0

    move v9, v12

    .line 119
    .local v9, "exp":I
    const/4 v12, 0x0

    move v10, v12

    .line 122
    .local v10, "exp_seen":Z
    :goto_4
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v12}, Lgnu/text/LineBufferedReader;->read()I

    move-result v12

    move v1, v12

    .line 123
    move v12, v1

    int-to-char v12, v12

    move v13, v2

    invoke-static {v12, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_a

    .line 125
    const/4 v12, 0x1

    move v6, v12

    .line 126
    move-object v12, v7

    move v13, v1

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 127
    goto :goto_4

    .line 129
    :cond_a
    move v12, v1

    sparse-switch v12, :sswitch_data_0

    .line 152
    .line 155
    :cond_b
    :goto_5
    move v12, v1

    if-ltz v12, :cond_c

    .line 156
    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v12}, Lgnu/text/LineBufferedReader;->unread()V

    .line 158
    :cond_c
    move v12, v9

    if-eqz v12, :cond_d

    .line 160
    move-object v12, v7

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 161
    move-object v12, v7

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 163
    :cond_d
    new-instance v12, Ljava/lang/Double;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    goto/16 :goto_3

    .line 132
    :sswitch_0
    move v12, v8

    if-ltz v12, :cond_e

    .line 133
    move-object v12, v0

    const-string/jumbo v13, "duplicate \'.\' in number"

    invoke-virtual {v12, v13}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 136
    :cond_e
    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move v8, v12

    .line 137
    move-object v12, v7

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 139
    goto :goto_4

    .line 142
    :sswitch_1
    move v12, v2

    const/16 v13, 0xa

    if-ne v12, v13, :cond_b

    move-object v12, v0

    iget-object v12, v12, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v12}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v12

    move/from16 v17, v12

    move/from16 v12, v17

    move/from16 v13, v17

    move v11, v13

    .local v11, "next":I
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_f

    move v12, v11

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_f

    move v12, v11

    int-to-char v12, v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-gez v12, :cond_f

    .line 144
    goto :goto_5

    .line 145
    :cond_f
    move v12, v6

    if-nez v12, :cond_10

    .line 146
    move-object v12, v0

    const-string/jumbo v13, "mantissa with no digits"

    invoke-virtual {v12, v13}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 147
    :cond_10
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/ecmascript/Lexer;->readOptionalExponent()I

    move-result v12

    move v9, v12

    .line 148
    const/4 v12, 0x1

    move v10, v12

    .line 149
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/ecmascript/Lexer;->read()I

    move-result v12

    move v1, v12

    goto/16 :goto_5

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public getStringLiteral(C)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 169
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move/from16 v1, p1

    .local v1, "quote":C
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v11, v11, Lgnu/text/LineBufferedReader;->pos:I

    move v2, v11

    .line 170
    .local v2, "i":I
    move v11, v2

    move v3, v11

    .line 171
    .local v3, "start":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v11, v11, Lgnu/text/LineBufferedReader;->limit:I

    move v4, v11

    .line 172
    .local v4, "limit":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v11, v11, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v11

    .line 174
    .local v5, "buffer":[C
    :goto_0
    move v11, v2

    move v12, v4

    if-ge v11, v12, :cond_1

    .line 176
    move-object v11, v5

    move v12, v2

    aget-char v11, v11, v12

    move v6, v11

    .line 177
    .local v6, "c":C
    move v11, v6

    move v12, v1

    if-ne v11, v12, :cond_0

    .line 179
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lgnu/text/LineBufferedReader;->pos:I

    .line 180
    new-instance v11, Ljava/lang/String;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v5

    move v14, v3

    move v15, v2

    move/from16 v16, v3

    sub-int v15, v15, v16

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v11

    .line 192
    .end local v0    # "this":Lgnu/ecmascript/Lexer;
    .end local v6    # "c":C
    :goto_1
    return-object v0

    .line 182
    .restart local v0    # "this":Lgnu/ecmascript/Lexer;
    .restart local v6    # "c":C
    :cond_0
    move v11, v6

    const/16 v12, 0x5c

    if-eq v11, v12, :cond_1

    move v11, v6

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1

    move v11, v6

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    .line 183
    .line 185
    .end local v6    # "c":C
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move v12, v2

    iput v12, v11, Lgnu/text/LineBufferedReader;->pos:I

    .line 186
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v11

    .line 187
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v11, v7

    move-object v12, v5

    move v13, v3

    move v14, v2

    move v15, v3

    sub-int/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 190
    :goto_2
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->read()I

    move-result v11

    move v8, v11

    .line 191
    .local v8, "ch":I
    move v11, v8

    move v12, v1

    if-ne v11, v12, :cond_3

    .line 192
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_1

    .line 174
    .end local v7    # "sbuf":Ljava/lang/StringBuffer;
    .end local v8    # "ch":I
    .restart local v6    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v6    # "c":C
    .restart local v7    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v8    # "ch":I
    :cond_3
    move v11, v8

    if-gez v11, :cond_4

    .line 194
    move-object v11, v0

    const-string/jumbo v12, "unterminated string literal"

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 195
    :cond_4
    move v11, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_5

    move v11, v8

    const/16 v12, 0xd

    if-ne v11, v12, :cond_6

    .line 196
    :cond_5
    move-object v11, v0

    const-string/jumbo v12, "string literal not terminated before end of line"

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 197
    :cond_6
    move v11, v8

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_7

    .line 199
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->read()I

    move-result v11

    move v8, v11

    .line 201
    move v11, v8

    sparse-switch v11, :sswitch_data_0

    .line 234
    move v11, v8

    const/16 v12, 0x30

    if-lt v11, v12, :cond_7

    move v11, v8

    const/16 v12, 0x37

    if-le v11, v12, :cond_c

    .line 235
    .line 255
    :cond_7
    :goto_3
    move-object v11, v7

    move v12, v8

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 256
    goto :goto_2

    .line 204
    :sswitch_0
    move-object v11, v0

    const-string/jumbo v12, "eof following \'\\\' in string"

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 206
    :sswitch_1
    move-object v11, v0

    const-string/jumbo v12, "line terminator following \'\\\' in string"

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 208
    :sswitch_2
    goto :goto_3

    .line 209
    :sswitch_3
    const/16 v11, 0x8

    move v8, v11

    goto :goto_3

    .line 210
    :sswitch_4
    const/16 v11, 0x9

    move v8, v11

    goto :goto_3

    .line 211
    :sswitch_5
    const/16 v11, 0xa

    move v8, v11

    goto :goto_3

    .line 212
    :sswitch_6
    const/16 v11, 0xc

    move v8, v11

    goto :goto_3

    .line 213
    :sswitch_7
    const/16 v11, 0xd

    move v8, v11

    goto :goto_3

    .line 215
    :sswitch_8
    const/4 v11, 0x0

    move v9, v11

    .line 216
    .local v9, "val":I
    move v11, v8

    const/16 v12, 0x78

    if-ne v11, v12, :cond_a

    const/4 v11, 0x2

    :goto_4
    move v2, v11

    :goto_5
    add-int/lit8 v2, v2, -0x1

    move v11, v2

    if-ltz v11, :cond_9

    .line 218
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->read()I

    move-result v11

    move v10, v11

    .line 219
    .local v10, "d":I
    move v11, v10

    if-gez v11, :cond_8

    .line 220
    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "eof following \'\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v8

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' in string"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 222
    :cond_8
    move v11, v10

    int-to-char v11, v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    move v10, v11

    .line 223
    move v11, v10

    if-gez v11, :cond_b

    .line 225
    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid char following \'\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v8

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' in string"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 227
    const/16 v11, 0x3f

    move v9, v11

    .line 231
    .end local v10    # "d":I
    :cond_9
    move v11, v9

    move v8, v11

    .line 232
    goto/16 :goto_3

    .line 216
    :cond_a
    const/4 v11, 0x4

    goto :goto_4

    .line 229
    .restart local v10    # "d":I
    :cond_b
    const/16 v11, 0x10

    move v12, v9

    mul-int/2addr v11, v12

    move v12, v10

    add-int/2addr v11, v12

    move v9, v11

    .line 230
    goto :goto_5

    .line 236
    .end local v9    # "val":I
    .end local v10    # "d":I
    :cond_c
    const/4 v11, 0x0

    move v9, v11

    .line 237
    .restart local v9    # "val":I
    const/4 v11, 0x3

    move v2, v11

    :goto_6
    add-int/lit8 v2, v2, -0x1

    move v11, v2

    if-ltz v11, :cond_e

    .line 239
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->read()I

    move-result v11

    move v10, v11

    .line 240
    .restart local v10    # "d":I
    move v11, v10

    if-gez v11, :cond_d

    .line 241
    move-object v11, v0

    const-string/jumbo v12, "eof in octal escape in string literal"

    invoke-virtual {v11, v12}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 242
    :cond_d
    move v11, v10

    int-to-char v11, v11

    const/16 v12, 0x8

    invoke-static {v11, v12}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    move v10, v11

    .line 243
    move v11, v10

    if-gez v11, :cond_f

    .line 245
    move-object v11, v0

    iget-object v11, v11, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 246
    .line 250
    .end local v10    # "d":I
    :cond_e
    move v11, v9

    move v8, v11

    goto/16 :goto_3

    .line 248
    .restart local v10    # "d":I
    :cond_f
    const/16 v11, 0x8

    move v12, v9

    mul-int/2addr v11, v12

    move v12, v10

    add-int/2addr v11, v12

    move v9, v11

    .line 249
    goto :goto_6

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x5c -> :sswitch_2
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_7
        0x74 -> :sswitch_4
        0x75 -> :sswitch_8
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public getToken()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Lexer;->read()I

    move-result v4

    move v1, v4

    .line 328
    .local v1, "ch":I
    :goto_0
    move v4, v1

    if-gez v4, :cond_0

    .line 329
    sget-object v4, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    move-object v0, v4

    .line 453
    .end local v0    # "this":Lgnu/ecmascript/Lexer;
    :goto_1
    return-object v0

    .line 330
    .restart local v0    # "this":Lgnu/ecmascript/Lexer;
    :cond_0
    move v4, v1

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    .line 343
    move v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 445
    move v4, v1

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 447
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->getIdentifier(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 448
    .local v2, "word":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v4}, Lgnu/ecmascript/Lexer;->checkReserved(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 449
    .local v3, "token":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_c

    .line 450
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 332
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/Object;
    :cond_1
    move v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 334
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 335
    sget-object v4, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    move-object v0, v4

    goto :goto_1

    .line 337
    :cond_2
    move v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    if-nez v4, :cond_3

    .line 338
    sget-object v4, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    move-object v0, v4

    goto :goto_1

    .line 339
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 340
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/ecmascript/Lexer;->read()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 346
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    move v1, v4

    .line 347
    move v4, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    move v4, v1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_4

    .line 348
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    .line 349
    :cond_4
    sget-object v4, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    move-object v0, v4

    goto :goto_1

    .line 352
    :sswitch_1
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_1

    .line 354
    :sswitch_2
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lgnu/ecmascript/Lexer;->getStringLiteral(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_1

    .line 355
    :sswitch_3
    sget-object v4, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 356
    :sswitch_4
    sget-object v4, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 357
    :sswitch_5
    sget-object v4, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 358
    :sswitch_6
    sget-object v4, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 359
    :sswitch_7
    sget-object v4, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 360
    :sswitch_8
    sget-object v4, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 361
    :sswitch_9
    sget-object v4, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 362
    :sswitch_a
    sget-object v4, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 363
    :sswitch_b
    sget-object v4, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 364
    :sswitch_c
    sget-object v4, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 366
    :sswitch_d
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    .line 368
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 369
    sget-object v4, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 371
    :cond_5
    sget-object v4, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 373
    :sswitch_e
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_6

    .line 375
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 376
    sget-object v4, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 378
    :cond_6
    sget-object v4, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 380
    :sswitch_f
    sget-object v4, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    move-object v0, v4

    goto/16 :goto_1

    .line 381
    :sswitch_10
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 382
    :sswitch_11
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 383
    :sswitch_12
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 384
    :sswitch_13
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 386
    :sswitch_14
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_7

    .line 388
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 389
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 391
    :cond_7
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 393
    :sswitch_15
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_8

    .line 395
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 396
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 398
    :cond_8
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 400
    :sswitch_16
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_9

    .line 402
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 403
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 405
    :cond_9
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 407
    :sswitch_17
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_a

    .line 409
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 410
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 412
    :cond_a
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 414
    :sswitch_18
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    move v1, v4

    .line 415
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 429
    sget-object v4, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 418
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 419
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_b

    .line 421
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 422
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 424
    :cond_b
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 426
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 427
    sget-object v4, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 432
    :sswitch_19
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    move v1, v4

    .line 433
    move v4, v1

    packed-switch v4, :pswitch_data_1

    .line 442
    sget-object v4, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 436
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 437
    move-object v4, v0

    sget-object v5, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    invoke-virtual {v4, v5}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 439
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 440
    sget-object v4, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    move-object v0, v4

    goto/16 :goto_1

    .line 451
    .restart local v2    # "word":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/Object;
    :cond_c
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_1

    .line 453
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/Object;
    :cond_d
    move v4, v1

    int-to-char v4, v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_e
        0x22 -> :sswitch_2
        0x25 -> :sswitch_13
        0x26 -> :sswitch_16
        0x27 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x2a -> :sswitch_10
        0x2b -> :sswitch_14
        0x2c -> :sswitch_c
        0x2d -> :sswitch_15
        0x2e -> :sswitch_0
        0x2f -> :sswitch_11
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_a
        0x3b -> :sswitch_b
        0x3c -> :sswitch_19
        0x3d -> :sswitch_d
        0x3e -> :sswitch_18
        0x3f -> :sswitch_9
        0x5b -> :sswitch_5
        0x5d -> :sswitch_6
        0x5e -> :sswitch_12
        0x7b -> :sswitch_7
        0x7c -> :sswitch_17
        0x7d -> :sswitch_8
        0x7e -> :sswitch_f
    .end sparse-switch

    .line 415
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Lexer;
    move-object v1, p1

    .local v1, "token":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/ecmascript/Lexer;->read()I

    move-result v3

    move v2, v3

    .line 294
    .local v2, "ch":I
    move v3, v2

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    .line 296
    move-object v3, v0

    const-string/jumbo v4, "assignment operation not implemented"

    invoke-virtual {v3, v4}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 299
    :cond_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 300
    move-object v3, v0

    iget-object v3, v3, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 301
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/ecmascript/Lexer;
    return-object v0
.end method
