.class public Lgnu/kawa/slib/srfi13$frame75;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringFilter$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame75"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn172:Lgnu/expr/ModuleMethod;

.field final lambda$Fn173:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


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

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame75;->lambda$Fn172:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x97

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame75;->lambda$Fn173:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x96

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame75;->lambda172()Ljava/lang/Object;

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

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x97

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame75;->lambda173(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method lambda172()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame75;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnfilter:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame75;->s:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame75;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame75;
    return-object v0
.end method

.method lambda173(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame75;
    move-object/from16 v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end":Ljava/lang/Object;
    new-instance v7, Lgnu/kawa/slib/srfi13$frame76;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lgnu/kawa/slib/srfi13$frame76;-><init>()V

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iput-object v9, v8, Lgnu/kawa/slib/srfi13$frame76;->staticLink:Lgnu/kawa/slib/srfi13$frame75;

    move-object v3, v7

    .line 1113
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    invoke-static {v7}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1114
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 1115
    .local v4, "slen":Ljava/lang/Object;
    move-object v7, v4

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    :try_start_0
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    invoke-static {v7}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v3

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    iput-object v8, v7, Lgnu/kawa/slib/srfi13$frame76;->temp:Ljava/lang/CharSequence;

    .line 1114
    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->lambda$Fn174:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame75;->s:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 1122
    .local v5, "ans$Mnlen":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_0

    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->temp:Ljava/lang/CharSequence;

    .line 1138
    .end local v4    # "slen":Ljava/lang/Object;
    .end local v5    # "ans$Mnlen":Ljava/lang/Object;
    :goto_0
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame75;
    return-object v0

    .line 1122
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame75;
    .restart local v4    # "slen":Ljava/lang/Object;
    .restart local v5    # "ans$Mnlen":Ljava/lang/Object;
    :cond_0
    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->temp:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v6, v10

    :try_start_1
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    invoke-static {v7, v8, v9}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 1124
    .end local v4    # "slen":Ljava/lang/Object;
    .end local v5    # "ans$Mnlen":Ljava/lang/Object;
    :cond_1
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    .line 1126
    :goto_1
    move-object v8, v3

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    iput-object v8, v7, Lgnu/kawa/slib/srfi13$frame76;->cset:Ljava/lang/Object;

    .line 1124
    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->lambda$Fn175:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame75;->s:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .local v4, "len":Ljava/lang/Object;
    move-object v7, v4

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    :try_start_3
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    invoke-static {v7}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v3

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    iput-object v8, v7, Lgnu/kawa/slib/srfi13$frame76;->ans:Ljava/lang/CharSequence;

    .line 1133
    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->lambda$Fn176:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame75;->s:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1138
    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame76;->ans:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1124
    .end local v4    # "len":Ljava/lang/Object;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    invoke-static {v7}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1125
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1126
    :cond_3
    const-string/jumbo v7, "string-delete criterion not predicate, char or char-set"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame75;->criterion:Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_1

    .line 1115
    .local v4, "slen":Ljava/lang/Object;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "make-string"

    const/4 v11, 0x1

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 1122
    .restart local v5    # "ans$Mnlen":Ljava/lang/Object;
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "substring"

    const/4 v11, 0x3

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .end local v4    # "slen":Ljava/lang/Object;
    .end local v5    # "ans$Mnlen":Ljava/lang/Object;
    :catch_2
    move-exception v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v10, 0x464

    const/16 v11, 0x16

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v7

    :catch_3
    move-exception v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v10, 0x465

    const/16 v11, 0x1a

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v7

    .line 1132
    .local v4, "len":Ljava/lang/Object;
    :catch_4
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "make-string"

    const/4 v11, 0x1

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x96

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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x97

    if-ne v5, v6, :cond_0

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method
