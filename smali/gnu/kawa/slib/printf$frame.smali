.class public Lgnu/kawa/slib/printf$frame;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field n:I

.field proc:Ljava/lang/Object;

.field str:Ljava/lang/Object;


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

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/16 v7, 0x4004

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:106"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1parseError()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    .line 106
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/kawa/slib/printf$frame;->lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    .line 4294967295
    .line 106
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public lambda2sign(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cont":Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2

    .line 47
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v4, v6

    :try_start_0
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    :try_start_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    invoke-static {v5, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    move v3, v5

    .line 48
    .local v3, "c":C
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move v6, v3

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .local v4, "x":Ljava/lang/Object;
    move-object v5, v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    move-object v5, v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    .line 49
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v2

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v1

    sget-object v9, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move v8, v3

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    .end local v3    # "c":C
    .end local v4    # "x":Ljava/lang/Object;
    :goto_1
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame;
    return-object v0

    .line 48
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame;
    .restart local v3    # "c":C
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_0
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move v6, v3

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v2

    move-object v7, v1

    sget-object v8, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v3    # "c":C
    .end local v4    # "x":Ljava/lang/Object;
    :cond_2
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 47
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

    const-string/jumbo v8, "string-ref"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

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

    const-string/jumbo v8, "string-ref"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public lambda3digits(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame;
    move-object/from16 v1, p1

    .local v1, "i":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "cont":Ljava/lang/Object;
    move-object v7, v1

    move-object v3, v7

    .line 53
    .local v3, "j":Ljava/lang/Object;
    :goto_0
    sget-object v7, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    :try_start_0
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v4, v7

    .local v4, "x":Z
    move v7, v4

    if-eqz v7, :cond_0

    move v7, v4

    if-nez v7, :cond_2

    .line 52
    .end local v4    # "x":Z
    :goto_1
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v3

    sget-object v9, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    .line 54
    .restart local v4    # "x":Z
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v6, v8

    :try_start_1
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    invoke-static {v7, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v7

    move v5, v7

    .end local v4    # "x":Z
    .local v5, "x":Z
    move v7, v5

    if-eqz v7, :cond_1

    move v7, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_1
    sget-object v7, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_3
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v3

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v6, v10

    :try_start_4
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 56
    .end local v5    # "x":Z
    :cond_2
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v2

    move-object v9, v3

    sget-object v10, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_3

    const-string/jumbo v10, "0"

    :goto_2
    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame;
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v4, v11

    :try_start_5
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v11, v1

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v4, v12

    :try_start_6
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v11

    move-object v12, v3

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v4, v13

    :try_start_7
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_2

    .line 53
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

    const-string/jumbo v10, "x"

    const/4 v11, -0x2

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 54
    .restart local v4    # "x":Z
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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_2
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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 55
    .end local v4    # "x":Z
    .restart local v5    # "x":Z
    :catch_3
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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 56
    .end local v5    # "x":Z
    :catch_5
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

    const/4 v11, 0x1

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_6
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

    const/4 v11, 0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_7
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

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame;
    move-object/from16 v1, p1

    .local v1, "i":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "cont":Ljava/lang/Object;
    new-instance v9, Lgnu/kawa/slib/printf$frame2;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lgnu/kawa/slib/printf$frame2;-><init>()V

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iput-object v11, v10, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    move-object v3, v9

    move-object v9, v3

    move-object v10, v2

    iput-object v10, v9, Lgnu/kawa/slib/printf$frame2;->cont:Ljava/lang/Object;

    .line 76
    move-object v9, v1

    .line 78
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame2;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    .line 37
    move-object v5, v10

    move-object v4, v9

    .line 38
    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "cont":Ljava/lang/Object;
    .local v4, "i":Ljava/lang/Object;
    :goto_0
    sget-object v9, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v10, v4

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/slib/printf$frame;->n:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    :try_start_0
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    move v6, v9

    .local v6, "x":Z
    move v9, v6

    if-eqz v9, :cond_0

    sget-object v9, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v7, v11

    :try_start_1
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v4

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v7, v12

    :try_start_2
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    invoke-static {v10, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    invoke-static {v9, v10}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 40
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    :try_start_3
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v11, v4

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v7, v11

    :try_start_4
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    move v6, v9

    .local v6, "tmp":C
    sget-object v9, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move v10, v6

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sget-object v11, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .local v7, "x":Ljava/lang/Object;
    move-object v9, v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_1

    move-object v9, v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_3

    .line 41
    .end local v7    # "x":Ljava/lang/Object;
    :goto_2
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v10, v4

    sget-object v11, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v5

    move-object v5, v10

    .local v5, "cont":Lgnu/expr/ModuleMethod;
    move-object v4, v9

    goto/16 :goto_0

    .line 38
    .end local v5    # "cont":Lgnu/expr/ModuleMethod;
    .local v6, "x":Z
    :cond_0
    move v9, v6

    if-eqz v9, :cond_5

    goto :goto_1

    .line 40
    .local v6, "tmp":C
    .restart local v7    # "x":Ljava/lang/Object;
    :cond_1
    sget-object v9, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move v10, v6

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sget-object v11, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .end local v7    # "x":Ljava/lang/Object;
    .local v8, "x":Ljava/lang/Object;
    move-object v9, v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_2

    move-object v9, v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_3

    goto :goto_2

    :cond_2
    sget-object v9, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move v10, v6

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sget-object v11, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_3

    goto :goto_2

    .line 41
    .end local v8    # "x":Ljava/lang/Object;
    :cond_3
    sget-object v9, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 40
    move v10, v6

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sget-object v11, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_4

    .line 42
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 43
    .line 44
    .end local v6    # "tmp":C
    :goto_3
    move-object v0, v9

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame;
    return-object v0

    .line 43
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame;
    .restart local v6    # "tmp":C
    :cond_4
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_3

    .line 44
    .local v6, "x":Z
    :cond_5
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 38
    .end local v6    # "x":Z
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

    const-string/jumbo v12, "x"

    const/4 v13, -0x2

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 39
    .restart local v6    # "x":Z
    :catch_1
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

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x1

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    :catch_2
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

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x2

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 40
    :catch_3
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

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x1

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    :catch_4
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

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x2

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame;
    move-object/from16 v1, p1

    .local v1, "i":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "sgn":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "digs":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ex":Ljava/lang/Object;
    new-instance v7, Lgnu/kawa/slib/printf$frame0;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lgnu/kawa/slib/printf$frame0;-><init>()V

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iput-object v9, v8, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    move-object v5, v7

    move-object v7, v5

    move-object v8, v2

    iput-object v8, v7, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    move-object v7, v5

    move-object v8, v4

    iput-object v8, v7, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    .line 107
    sget-object v7, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 108
    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_0

    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 128
    :goto_0
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame;
    return-object v0

    .line 108
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v6, v9

    :try_start_1
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    invoke-static {v7, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sget-object v8, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v7, v8}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    .line 110
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-virtual {v7, v8, v9}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_1
    sget-object v7, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 116
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v6, v9

    :try_start_2
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v6, v10

    :try_start_3
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    sget-object v9, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_3

    .line 119
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_4
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v7}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    iput-object v8, v7, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    .line 120
    move-object v7, v5

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_2

    .line 121
    move-object v7, v5

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_5
    check-cast v7, Lgnu/math/Complex;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v7}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v5

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v7, v8}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 128
    :goto_1
    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 109
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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 116
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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

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

    const-string/jumbo v10, "string-ref"

    const/4 v11, 0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 119
    :catch_4
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

    const-string/jumbo v10, "string->number"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 122
    :catch_5
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

    const-string/jumbo v10, "real-part"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    iget v7, v7, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_0

    .line 106
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

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

    :goto_0
    return v0

    .line 4294967295
    .line 106
    :cond_0
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

    goto :goto_0
.end method
