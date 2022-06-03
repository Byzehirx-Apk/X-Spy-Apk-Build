.class public Lgnu/kawa/slib/srfi13$frame81;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringCount$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame81"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn185:Lgnu/expr/ModuleMethod;

.field final lambda$Fn186:Lgnu/expr/ModuleMethod;

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

    const/16 v5, 0xa0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame81;->lambda$Fn185:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xa1

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame81;->lambda$Fn186:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame81;->lambda185()Ljava/lang/Object;

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

    const/16 v5, 0xa1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame81;->lambda186(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method lambda185()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1238
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame81;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mncount:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame81;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame81;
    return-object v0
.end method

.method lambda186(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 1239
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame81;
    move-object/from16 v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1240
    move-object v6, v1

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v4, v7

    move-object v3, v6

    .local v3, "i":Ljava/lang/Object;
    :goto_0
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1244
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_1

    .line 1240
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1241
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v5, v8

    :try_start_0
    check-cast v7, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v5, v9

    :try_start_1
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v3

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v5, v10

    :try_start_2
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1242
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v4

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1241
    :goto_1
    move-object v4, v7

    .local v4, "count":Ljava/lang/Object;
    move-object v3, v6

    goto :goto_0

    .end local v4    # "count":Ljava/lang/Object;
    :cond_0
    move-object v7, v4

    goto :goto_1

    .line 1240
    :cond_1
    move-object v6, v4

    .line 1258
    .end local v3    # "i":Ljava/lang/Object;
    :goto_2
    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame81;
    return-object v0

    .line 1240
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame81;
    :cond_2
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1246
    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_3
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_5

    .line 1247
    move-object v6, v1

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v4, v7

    move-object v3, v6

    .restart local v3    # "i":Ljava/lang/Object;
    :goto_3
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1251
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_4

    .line 1247
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1248
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v5, v11

    :try_start_5
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v11, v3

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    move-object v5, v12

    :try_start_6
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v11

    invoke-static {v10, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_3

    .line 1249
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v4

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1248
    :goto_4
    move-object v4, v7

    .restart local v4    # "count":Ljava/lang/Object;
    move-object v3, v6

    goto :goto_3

    .end local v4    # "count":Ljava/lang/Object;
    :cond_3
    move-object v7, v4

    goto :goto_4

    .line 1247
    :cond_4
    move-object v6, v4

    goto :goto_2

    .end local v3    # "i":Ljava/lang/Object;
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1254
    move-object v6, v1

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v4, v7

    move-object v3, v6

    .restart local v3    # "i":Ljava/lang/Object;
    :goto_5
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1256
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_7

    .line 1254
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1255
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v5, v10

    :try_start_7
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v10, v3

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v5, v11

    :try_start_8
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v10

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v4

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_6
    move-object v4, v7

    .restart local v4    # "count":Ljava/lang/Object;
    move-object v3, v6

    goto :goto_5

    .end local v4    # "count":Ljava/lang/Object;
    :cond_6
    move-object v7, v4

    goto :goto_6

    .line 1254
    :cond_7
    move-object v6, v4

    goto/16 :goto_2

    .line 1258
    .end local v3    # "i":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v6, "CRITERION param is neither char-set or char."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/srfi13;->string$Mncount:Lgnu/expr/ModuleMethod;

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_2

    .line 1241
    .restart local v3    # "i":Ljava/lang/Object;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "char=?"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local v3    # "i":Ljava/lang/Object;
    :catch_3
    move-exception v6

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v9, 0x4de

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .restart local v3    # "i":Ljava/lang/Object;
    :catch_4
    move-exception v6

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v9, 0x4e0

    const/16 v10, 0x10

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .line 1248
    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 1255
    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    move-object v8, v14

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xa0

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

    const/16 v6, 0xa1

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
