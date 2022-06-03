.class public Lgnu/kawa/slib/ppfile$frame0;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field port:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/ppfile$frame;


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

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:34"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/ppfile$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 34
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 34
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/ppfile$frame0;
    move-object/from16 v1, p1

    .local v1, "export":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 37
    move-object v2, v7

    .line 38
    .local v2, "c":Ljava/lang/Object;
    :goto_0
    move-object v7, v2

    invoke-static {v7}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    .local v3, "x":Z
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_0

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "x":Z
    :goto_1
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/ppfile$frame0;
    return-object v0

    .line 38
    .restart local v0    # "this":Lgnu/kawa/slib/ppfile$frame0;
    .restart local v2    # "c":Ljava/lang/Object;
    .restart local v3    # "x":Z
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v7, v2

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    :try_start_0
    check-cast v7, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/rnrs/unicode;->isCharWhitespace(Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 40
    sget-object v7, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    goto :goto_0

    :cond_2
    sget-object v7, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    :try_start_1
    check-cast v8, Lgnu/text/Char;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v7, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 43
    move-object v7, v2

    .line 45
    move-object v4, v7

    .line 46
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "x":Z
    .local v4, "c":Ljava/lang/Object;
    :goto_2
    move-object v7, v4

    invoke-static {v7}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    .local v5, "x":Z
    move v7, v5

    if-eqz v7, :cond_4

    move v7, v5

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    :goto_3
    goto :goto_1

    .line 46
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    sget-object v7, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v6, v9

    :try_start_2
    check-cast v8, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v7, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 48
    sget-object v7, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .end local v4    # "c":Ljava/lang/Object;
    .restart local v2    # "c":Ljava/lang/Object;
    goto/16 :goto_0

    .line 51
    .end local v2    # "c":Ljava/lang/Object;
    .restart local v4    # "c":Ljava/lang/Object;
    :cond_5
    sget-object v7, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 44
    .end local v4    # "c":Ljava/lang/Object;
    .end local v5    # "x":Z
    .restart local v2    # "c":Ljava/lang/Object;
    .restart local v3    # "x":Z
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v5, v8

    :try_start_3
    check-cast v7, Lgnu/mapping/InPort;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v7}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 55
    .local v4, "o":Ljava/lang/Object;
    move-object v7, v4

    invoke-static {v7}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    .end local v3    # "x":Z
    .restart local v5    # "x":Z
    move v7, v5

    if-eqz v7, :cond_8

    move v7, v5

    if-eqz v7, :cond_7

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    goto/16 :goto_1

    :cond_7
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 57
    :cond_8
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 59
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 60
    .end local v2    # "c":Ljava/lang/Object;
    .local v6, "c":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v8, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_9

    .line 61
    sget-object v7, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 62
    sget-object v7, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 63
    :cond_9
    move-object v7, v6

    move-object v2, v7

    .end local v6    # "c":Ljava/lang/Object;
    .restart local v2    # "c":Ljava/lang/Object;
    goto/16 :goto_0

    .line 39
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "x":Z
    .restart local v3    # "x":Z
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "char-whitespace?"

    const/4 v11, 0x1

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 42
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "char=?"

    const/4 v11, 0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 47
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "x":Z
    .local v4, "c":Ljava/lang/Object;
    .restart local v5    # "x":Z
    :catch_2
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "char=?"

    const/4 v11, 0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 54
    .end local v4    # "c":Ljava/lang/Object;
    .end local v5    # "x":Z
    .restart local v2    # "c":Ljava/lang/Object;
    .restart local v3    # "x":Z
    :catch_3
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "read"

    const/4 v11, 0x1

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 34
    move-object v4, v3

    move-object v5, v2

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
    .line 34
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method
