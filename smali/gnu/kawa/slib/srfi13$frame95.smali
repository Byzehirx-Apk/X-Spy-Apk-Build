.class public Lgnu/kawa/slib/srfi13$frame95;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringXcopy$Ex$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame95"
.end annotation


# instance fields
.field final lambda$Fn217:Lgnu/expr/ModuleMethod;

.field final lambda$Fn218:Lgnu/expr/ModuleMethod;

.field final lambda$Fn219:Lgnu/expr/ModuleMethod;

.field final lambda$Fn221:Lgnu/expr/ModuleMethod;

.field maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;

.field sfrom:Ljava/lang/Object;

.field target:Ljava/lang/Object;

.field tstart:Ljava/lang/Object;


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

    const/16 v5, 0xbe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xbf

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn217:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xc1

    const/4 v6, 0x0

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1781"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn221:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda216(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1779
    move-object v0, p0

    .local v0, "val":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .local v1, "x":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "val":Ljava/lang/Object;
    return v0

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method static lambda220(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1785
    move-object v0, p0

    .local v0, "val":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .local v1, "x":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "val":Ljava/lang/Object;
    return v0

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame95;->lambda218()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame95;->lambda217()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame95;->lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0xc1

    if-ne v5, v6, :cond_0

    .line 1781
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/srfi13$frame95;->lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 1781
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method lambda217()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 1782
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame95;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v3}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1783
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    .line 1789
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    return-object v0

    .line 1788
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_0
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    move v1, v3

    .line 1789
    .local v1, "slen":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    aput-object v6, v4, v5

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1788
    .end local v1    # "slen":I
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-length"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda218()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1783
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame95;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    return-object v0
.end method

.method lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 1784
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame95;
    move-object v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "end":Ljava/lang/Object;
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1785
    .local v3, "sto":Ljava/lang/Object;
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v5, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v5}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/srfi13;->lambda$Fn220:Lgnu/expr/ModuleMethod;

    .line 1786
    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1787
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x2

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    :catch_0
    move-exception v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v7, 0x6f9

    const/4 v8, 0x6

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v4
.end method

.method lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .prologue
    .line 1781
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/kawa/slib/srfi13$frame95;
    move-object/from16 v2, p1

    .local v2, "sto":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "start":Ljava/lang/Object;
    move-object/from16 v4, p3

    .local v4, "end":Ljava/lang/Object;
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    .line 1792
    .local v5, "tocopy":Ljava/lang/Object;
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 1791
    .local v6, "tend":Ljava/lang/Object;
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v11, v4

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 1794
    .local v7, "slen":Ljava/lang/Object;
    sget-object v10, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    move-object v13, v6

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/slib/srfi13;->checkSubstringSpec(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1795
    move-object v10, v5

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v9, v11

    :try_start_0
    check-cast v10, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v10

    move v8, v10

    .local v8, "x":Z
    move v10, v8

    if-eqz v10, :cond_1

    move v10, v8

    if-eqz v10, :cond_0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1810
    :goto_0
    move-object v1, v10

    .end local v1    # "this":Lgnu/kawa/slib/srfi13$frame95;
    return-object v1

    .line 1795
    .restart local v1    # "this":Lgnu/kawa/slib/srfi13$frame95;
    :cond_0
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v10, v7

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v9, v11

    :try_start_1
    check-cast v10, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1796
    const-string/jumbo v10, "Cannot replicate empty (sub)string"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x1

    move-object v14, v1

    iget-object v14, v14, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x2

    move-object v14, v1

    iget-object v14, v14, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x3

    move-object v14, v1

    iget-object v14, v14, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x4

    move-object v14, v1

    iget-object v14, v14, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x5

    move-object v14, v2

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x6

    move-object v14, v3

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x7

    move-object v14, v4

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    :cond_2
    sget-object v10, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1800
    sget-object v11, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_3

    .line 1801
    move-object v10, v1

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v9, v12

    :try_start_2
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v3

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v9, v13

    :try_start_3
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    move-object v15, v1

    iget-object v15, v15, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    move-object v15, v6

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lgnu/kawa/slib/srfi13;->stringFill$Ex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_3
    sget-object v10, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1804
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v9, v11

    :try_start_4
    invoke-static {v10}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    invoke-static {v10}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    sget-object v12, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    move-object v13, v2

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v9, v13

    :try_start_5
    invoke-static {v12}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v12

    invoke-static {v12}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-nez v10, :cond_4

    .line 1805
    move-object v10, v1

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v9, v11

    :try_start_6
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v9, v12

    :try_start_7
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v11

    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v9, v13

    :try_start_8
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1806
    move-object v14, v3

    sget-object v15, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v9, v14

    :try_start_9
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v13

    sget-object v14, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1807
    move-object v15, v3

    sget-object v16, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v18}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v9, v15

    :try_start_a
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v14

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 1810
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    move-object v13, v1

    iget-object v13, v13, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v10 .. v16}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 1795
    .end local v8    # "x":Z
    :catch_0
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "zero?"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1796
    .restart local v8    # "x":Z
    :catch_1
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "zero?"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1801
    :catch_2
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_3
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x2

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1804
    :catch_4
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "floor"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_5
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "floor"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1805
    :catch_6
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "%string-copy!"

    const/4 v14, 0x0

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_7
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "%string-copy!"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_8
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "%string-copy!"

    const/4 v14, 0x2

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1806
    :catch_9
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "%string-copy!"

    const/4 v14, 0x3

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 1807
    :catch_a
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    const-string/jumbo v13, "%string-copy!"

    const/4 v14, 0x4

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    :goto_0
    return v0

    :pswitch_1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    const/16 v6, 0xbf

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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
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

    const/16 v7, 0xc1

    if-ne v6, v7, :cond_0

    .line 1781
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    .line 4294967295
    .line 1781
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method
