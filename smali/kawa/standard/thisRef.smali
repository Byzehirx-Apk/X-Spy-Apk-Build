.class public Lkawa/standard/thisRef;
.super Lkawa/lang/Syntax;
.source "thisRef.java"


# static fields
.field public static final thisSyntax:Lkawa/standard/thisRef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/thisRef;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/thisRef;-><init>()V

    sput-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    .line 10
    sget-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    const-string/jumbo v1, "this"

    invoke-virtual {v0, v1}, Lkawa/standard/thisRef;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/thisRef;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/standard/thisRef;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_6

    .line 16
    move-object v5, v2

    iget-object v5, v5, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object v3, v5

    .line 17
    .local v3, "method":Lgnu/expr/LambdaExp;
    move-object v5, v3

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    move-object v4, v5

    .line 18
    .local v4, "firstParam":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v5

    if-nez v5, :cond_2

    .line 20
    :cond_0
    const/4 v5, 0x0

    move-object v4, v5

    .line 21
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v5, :cond_4

    .line 22
    :cond_1
    move-object v5, v2

    const/16 v6, 0x65

    const-string/jumbo v7, "use of \'this\' not in a named method"

    invoke-virtual {v5, v6, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 32
    :cond_2
    :goto_1
    new-instance v5, Lgnu/expr/ThisExp;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v0, v5

    .line 35
    .end local v0    # "this":Lkawa/standard/thisRef;
    .end local v3    # "method":Lgnu/expr/LambdaExp;
    .end local v4    # "firstParam":Lgnu/expr/Declaration;
    :goto_2
    return-object v0

    .line 17
    .restart local v0    # "this":Lkawa/standard/thisRef;
    .restart local v3    # "method":Lgnu/expr/LambdaExp;
    :cond_3
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    goto :goto_0

    .line 23
    .restart local v4    # "firstParam":Lgnu/expr/Declaration;
    :cond_4
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    move-object v5, v2

    const/16 v6, 0x65

    const-string/jumbo v7, "use of \'this\' in a static method"

    invoke-virtual {v5, v6, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_5
    new-instance v5, Lgnu/expr/Declaration;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v6, v7}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 28
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 29
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v6, 0x1000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_1

    .line 35
    .end local v3    # "method":Lgnu/expr/LambdaExp;
    .end local v4    # "firstParam":Lgnu/expr/Declaration;
    :cond_6
    move-object v5, v2

    const-string/jumbo v6, "this with parameter not implemented"

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_2
.end method
