.class public Lgnu/kawa/slib/srfi13$frame92;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringReplace$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame92"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn206:Lgnu/expr/ModuleMethod;

.field final lambda$Fn207:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;

.field start1:Ljava/lang/Object;


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

    const/16 v5, 0xb5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn206:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xb6

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn207:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xb5

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame92;->lambda206()Ljava/lang/Object;

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

    const/16 v5, 0xb6

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame92;->lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

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

.method lambda206()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1676
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame92;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnreplace:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame92;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame92;
    return-object v0
.end method

.method lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 16

    .prologue
    .line 1677
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame92;
    move-object/from16 v1, p1

    .local v1, "start2":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end2":Ljava/lang/Object;
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v4, v9

    :try_start_0
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    move v3, v8

    .line 1678
    .local v3, "slen1":I
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 1677
    .local v4, "sublen2":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .local v5, "alen":Ljava/lang/Object;
    move-object v8, v5

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v7, v9

    :try_start_1
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    invoke-static {v8}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v6, v8

    .line 1681
    .local v6, "ans":Ljava/lang/CharSequence;
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v7, v11

    :try_start_2
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v7, v13

    :try_start_3
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v8

    .line 1682
    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v7, v10

    :try_start_4
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v7, v11

    :try_start_5
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v11, v1

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v7, v12

    :try_start_6
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v11

    move-object v12, v2

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v7, v13

    :try_start_7
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v8

    .line 1683
    move-object v8, v6

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v7, v10

    :try_start_8
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v7, v11

    :try_start_9
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v7, v12

    :try_start_a
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v11

    move v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v8

    .line 1684
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame92;
    return-object v0

    .line 1677
    .end local v3    # "slen1":I
    .end local v4    # "sublen2":Ljava/lang/Object;
    .end local v5    # "alen":Ljava/lang/Object;
    .end local v6    # "ans":Ljava/lang/CharSequence;
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame92;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "string-length"

    const/4 v12, 0x1

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1680
    .restart local v3    # "slen1":I
    .restart local v4    # "sublen2":Ljava/lang/Object;
    .restart local v5    # "alen":Ljava/lang/Object;
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "make-string"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1681
    .restart local v6    # "ans":Ljava/lang/CharSequence;
    :catch_2
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x2

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_3
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x4

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1682
    :catch_4
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_5
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x2

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_6
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x3

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_7
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x4

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1683
    :catch_8
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_9
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x2

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_a
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "%string-copy!"

    const/4 v12, 0x3

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xb5

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

    const/16 v6, 0xb6

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
