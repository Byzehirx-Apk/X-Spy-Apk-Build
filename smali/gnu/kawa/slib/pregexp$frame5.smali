.class public Lgnu/kawa/slib/pregexp$frame5;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# instance fields
.field fk:Lgnu/mapping/Procedure;

.field i:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field final lambda$Fn18:Lgnu/expr/ModuleMethod;

.field final lambda$Fn19:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/pregexp$frame4;


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

    const/4 v5, 0x5

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit111:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:612"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:617"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:628"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 612
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 4294967295
    .line 612
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 628
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 617
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame5;->lambda27(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 628
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame5;->lambda28(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lambda26fk()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame5;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame5;
    return-object v0
.end method

.method lambda27(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame5;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v3, v3, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v3, :cond_1

    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 619
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_0

    .line 620
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit110:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    invoke-static {v3}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 623
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .local v2, "x":Ljava/lang/Object;
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame5;
    return-object v0

    .line 618
    .end local v2    # "x":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame5;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v3, v3, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 623
    .restart local v2    # "x":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method lambda28(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame5;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame5;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 612
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

    .line 4294967295
    .line 612
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
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

    packed-switch v4, :pswitch_data_0

    .line 617
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 628
    :goto_0
    return v0

    :pswitch_0
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

    goto :goto_0

    .line 617
    :pswitch_1
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

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
