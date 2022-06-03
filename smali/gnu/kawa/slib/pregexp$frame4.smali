.class public Lgnu/kawa/slib/pregexp$frame4;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame4"
.end annotation


# instance fields
.field i:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field q:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/pregexp$frame0;


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

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:602"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame4;->lambda$Fn17:Lgnu/expr/ModuleMethod;

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

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 602
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame4;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 602
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame4;
    move-object v1, p1

    .local v1, "k":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "i":Ljava/lang/Object;
    new-instance v5, Lgnu/kawa/slib/pregexp$frame5;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lgnu/kawa/slib/pregexp$frame5;-><init>()V

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iput-object v7, v6, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    .line 612
    move-object v5, v3

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    move-object v6, v3

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    .line 614
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    :goto_0
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v5

    .line 626
    :goto_1
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame4;
    return-object v0

    .line 614
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame4;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v5, v5, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz v5, :cond_2

    .line 616
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    move-object v8, v3

    iget-object v8, v8, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    move-object v9, v3

    iget-object v9, v9, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 626
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .local v4, "x":Ljava/lang/Object;
    move-object v5, v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_3

    move-object v5, v4

    goto :goto_1

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    move-object v8, v3

    iget-object v8, v8, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    move-object v9, v3

    iget-object v9, v9, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame4;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v2, v2, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v2, :cond_1

    sget-object v2, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 604
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    .line 605
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit110:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    invoke-static {v2}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 608
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame4;
    return-object v0

    .line 603
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame4;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v2, v2, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v2, :cond_0

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

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 602
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
    .line 602
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
