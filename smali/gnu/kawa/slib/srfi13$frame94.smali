.class public Lgnu/kawa/slib/srfi13$frame94;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->xsubstring$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame94"
.end annotation


# instance fields
.field from:Ljava/lang/Object;

.field final lambda$Fn211:Lgnu/expr/ModuleMethod;

.field final lambda$Fn212:Lgnu/expr/ModuleMethod;

.field final lambda$Fn213:Lgnu/expr/ModuleMethod;

.field final lambda$Fn214:Lgnu/expr/ModuleMethod;

.field final lambda$Fn215:Lgnu/expr/ModuleMethod;

.field maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

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

    const/16 v5, 0xb9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xba

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1744"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xbb

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xbc

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn211:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xbd

    const/4 v6, 0x0

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1740"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn215:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda210(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1738
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

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame94;->lambda212()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame94;->lambda211()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xba

    if-ne v3, v4, :cond_0

    .line 1744
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi13$frame94;->lambda214(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    .line 4294967295
    .line 1744
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

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame94;->lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/16 v6, 0xbd

    if-ne v5, v6, :cond_0

    .line 1740
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/srfi13$frame94;->lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 1740
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

.method lambda211()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 1741
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame94;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v3}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1742
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    .line 1750
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    return-object v0

    .line 1749
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    :cond_0
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    sget-object v5, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    move v1, v3

    .line 1750
    .local v1, "slen":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

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

    .end local v1    # "slen":I
    :catch_0
    move-exception v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v6, 0x6d5

    const/16 v7, 0x24

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v3

    .line 1749
    :catch_1
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

.method lambda212()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1742
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame94;
    sget-object v1, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    return-object v0
.end method

.method lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 1743
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame94;
    move-object v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "end":Ljava/lang/Object;
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1744
    .local v3, "to":Ljava/lang/Object;
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v5, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v5}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    .line 1747
    move-object v7, v3

    sget-object v8, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1748
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

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    :catch_0
    move-exception v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v7, 0x6d0

    const/4 v8, 0x6

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v4
.end method

.method lambda214(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1744
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame94;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .local v2, "x":Z
    move v4, v2

    if-eqz v4, :cond_1

    .line 1745
    move-object v4, v1

    invoke-static {v4}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .line 1744
    .end local v2    # "x":Z
    .local v3, "x":Z
    move v4, v3

    if-eqz v4, :cond_0

    sget-object v4, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 1746
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1744
    .end local v3    # "x":Z
    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    return v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    .restart local v3    # "x":Z
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v3    # "x":Z
    .restart local v2    # "x":Z
    :cond_1
    move v4, v2

    goto :goto_0
.end method

.method lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 1740
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame94;
    move-object/from16 v1, p1

    .local v1, "to":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "start":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "end":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1752
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .local v5, "anslen":Ljava/lang/Object;
    move-object v4, v8

    .line 1753
    .local v4, "slen":Ljava/lang/Object;
    move-object v8, v5

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    :try_start_0
    check-cast v8, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    .line 1768
    :goto_0
    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    return-object v0

    .line 1753
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    :cond_0
    move-object v8, v4

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    :try_start_1
    check-cast v8, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v8}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1754
    const-string/jumbo v8, "Cannot replicate empty (sub)string"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    sget-object v12, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x2

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x3

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x4

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x5

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_1
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1757
    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_2

    .line 1758
    move-object v8, v5

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    :try_start_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    :try_start_3
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v2

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v6, v11

    :try_start_4
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    goto/16 :goto_0

    :cond_2
    sget-object v8, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1761
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    :try_start_5
    invoke-static {v8}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v8

    invoke-static {v8}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    sget-object v10, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v6, v11

    :try_start_6
    invoke-static {v10}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    invoke-static {v10}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-nez v8, :cond_3

    .line 1762
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    :try_start_7
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v10, v2

    sget-object v11, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    :try_start_8
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v9

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1763
    move-object v11, v2

    sget-object v12, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    move-object v13, v1

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v6, v11

    :try_start_9
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v10

    invoke-static {v8, v9, v10}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    goto/16 :goto_0

    .line 1766
    :cond_3
    move-object v8, v5

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v7, v9

    :try_start_a
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v8

    invoke-static {v8}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v6, v8

    .line 1767
    .local v6, "ans":Ljava/lang/CharSequence;
    move-object v8, v6

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-static/range {v8 .. v14}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1768
    move-object v8, v6

    goto/16 :goto_0

    .line 1753
    .end local v6    # "ans":Ljava/lang/CharSequence;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "zero?"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1754
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "zero?"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1758
    :catch_2
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "make-string"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_3
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "string-ref"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_4
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "string-ref"

    const/4 v12, 0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1761
    :catch_5
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "floor"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_6
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "floor"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1762
    :catch_7
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "substring"

    const/4 v12, 0x1

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_8
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "substring"

    const/4 v12, 0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1763
    :catch_9
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "substring"

    const/4 v12, 0x3

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 1766
    :catch_a
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "make-string"

    const/4 v12, 0x1

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
    .packed-switch 0xb9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    const/16 v5, 0xba

    if-ne v4, v5, :cond_0

    .line 1744
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
    .line 1744
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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0xbb

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

    const/16 v7, 0xbd

    if-ne v6, v7, :cond_0

    .line 1740
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
    .line 1740
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
