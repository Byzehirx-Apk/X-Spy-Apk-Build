.class public Lgnu/kawa/slib/printf$frame13;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame13"
.end annotation


# instance fields
.field cnt:Ljava/lang/Object;

.field end:Ljava/lang/Object;

.field final lambda$Fn19:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;

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

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:564"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

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

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    .line 564
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame13;->lambda33(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    .line 4294967295
    .line 564
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method lambda33(Ljava/lang/Object;)Z
    .locals 15

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame13;
    move-object/from16 v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v5, v1

    invoke-static {v5}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 566
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v2, v8

    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2

    .line 567
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v2, v9

    :try_start_1
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x1

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v3, v6

    move-object v2, v5

    .local v2, "lend":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 569
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 570
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v4, v6

    :try_start_2
    check-cast v5, Lgnu/lists/CharSeq;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v4, v7

    :try_start_3
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    move-object v7, v1

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    :try_start_4
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v8, v3

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    :try_start_5
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v8

    invoke-static {v7, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 571
    move-object v5, v0

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 570
    move-object v5, v2

    .line 568
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .local v3, "i":Ljava/lang/Object;
    move-object v2, v5

    goto :goto_0

    .line 575
    .line 582
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "lend":Ljava/lang/Object;
    .end local v3    # "i":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_b

    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame13;
    return v0

    .line 572
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame13;
    .restart local v1    # "x":Ljava/lang/Object;
    :cond_2
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v2, v10

    :try_start_6
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    move-object v2, v12

    :try_start_7
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v11

    invoke-static {v9, v10, v11}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 574
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v2, v7

    :try_start_8
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 575
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    goto :goto_1

    .line 576
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_4

    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_3
    move-object v2, v5

    .line 565
    .end local v1    # "x":Ljava/lang/Object;
    .local v2, "x":Ljava/lang/Object;
    move-object v5, v2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_5

    goto/16 :goto_1

    .line 576
    .end local v2    # "x":Ljava/lang/Object;
    .restart local v1    # "x":Ljava/lang/Object;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    goto :goto_3

    .line 577
    .end local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "x":Ljava/lang/Object;
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v4, v6

    :try_start_9
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_4
    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .local v3, "x":Z
    move v5, v3

    if-eqz v5, :cond_8

    .end local v2    # "x":Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_6

    .line 578
    :goto_5
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    aput-object v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-static {v9}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 579
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v3, v7

    .end local v3    # "x":Z
    :try_start_a
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 580
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v3, v6

    :try_start_b
    check-cast v5, Lgnu/lists/CharSeq;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v3, v7

    :try_start_c
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    move-result v6

    move-object v7, v1

    invoke-static {v7}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v1

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v3, v8

    :try_start_d
    check-cast v7, Lgnu/text/Char;

    invoke-virtual {v7}, Lgnu/text/Char;->charValue()C
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    move-result v7

    :goto_6
    invoke-static {v5, v6, v7}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 581
    move-object v5, v0

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    goto/16 :goto_1

    .line 577
    .restart local v2    # "x":Ljava/lang/Object;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .end local v2    # "x":Ljava/lang/Object;
    .restart local v3    # "x":Z
    :cond_8
    move v5, v3

    if-eqz v5, :cond_6

    goto :goto_5

    .line 580
    .end local v3    # "x":Z
    :cond_9
    const/16 v7, 0x3f

    goto :goto_6

    .line 582
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_c

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 566
    .restart local v1    # "x":Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-length"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 567
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-length"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 570
    .local v2, "lend":Ljava/lang/Object;
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-ref"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-ref"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 573
    .end local v2    # "lend":Ljava/lang/Object;
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "substring"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "substring"

    const/4 v9, 0x3

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 574
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-length"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 577
    .end local v1    # "x":Ljava/lang/Object;
    .local v2, "x":Ljava/lang/Object;
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "x"

    const/4 v9, -0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 579
    .end local v2    # "x":Ljava/lang/Object;
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-length"

    const/4 v9, 0x1

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 580
    :catch_b
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x1

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_c
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_d
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v13, v5

    move-object v14, v6

    move-object v5, v14

    move-object v6, v13

    move-object v7, v14

    move-object v13, v6

    move-object v14, v7

    move-object v6, v14

    move-object v7, v13

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x3

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
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

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 564
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
    .line 564
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
