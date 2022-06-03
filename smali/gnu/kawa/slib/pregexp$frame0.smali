.class public Lgnu/kawa/slib/pregexp$frame0;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field could$Mnloop$Mninfinitely$Qu:Z

.field fk:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field final lambda$Fn11:Lgnu/expr/ModuleMethod;

.field final lambda$Fn12:Lgnu/expr/ModuleMethod;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field maximal$Qu:Z

.field old:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field q:Ljava/lang/Object;

.field re:Ljava/lang/Object;

.field re$1:Ljava/lang/Object;

.field sk:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/pregexp$frame;


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

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:513"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:514"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:541"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:545"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:587"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:590"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda13()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda14()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda15()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda16()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda17()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_0

    .line 590
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 514
    :sswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/pregexp$frame0;->lambda10()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 590
    :sswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/pregexp$frame0;->lambda19()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
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

    .line 587
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 513
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame0;->lambda9(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 541
    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame0;->lambda11(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 545
    :pswitch_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame0;->lambda12(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 587
    :pswitch_4
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/pregexp$frame0;->lambda18(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0
.end method

.method lambda11(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0
.end method

.method lambda12(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/lists;->assv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_0
    check-cast v3, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v5, v1

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 547
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0

    .line 546
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
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

    const-string/jumbo v6, "set-cdr!"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda18(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 589
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0
.end method

.method lambda19()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 592
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0
.end method

.method public lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "chars":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/slib/pregexp$frame1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lgnu/kawa/slib/pregexp$frame1;-><init>()V

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame1;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    .line 506
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 507
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v5, v2

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v7, v2

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame1;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "res":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "i":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/pregexp$frame2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lgnu/kawa/slib/pregexp$frame2;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame2;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    .line 517
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 518
    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame2;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "res":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/slib/pregexp$frame3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lgnu/kawa/slib/pregexp$frame3;-><init>()V

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame3;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    .line 524
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 525
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v5, v2

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame3;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    move-object v7, v2

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame3;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "k":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "i":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/pregexp$frame4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lgnu/kawa/slib/pregexp$frame4;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    .line 600
    sget-object v4, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v5, v3

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    .line 601
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    move-object v7, v3

    iget-object v7, v7, Lgnu/kawa/slib/pregexp$frame4;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 611
    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    return-object v0

    .line 610
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object v5, v3

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    iput-object v5, v4, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    .line 611
    move-object v4, v3

    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 610
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    goto :goto_1
.end method

.method lambda9(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame0;
    move-object v1, p1

    .local v1, "i1":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame0;
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

    sparse-switch v3, :sswitch_data_0

    .line 514
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .line 590
    :goto_0
    return v0

    :sswitch_0
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 514
    :sswitch_1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
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

    .line 513
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 587
    :goto_0
    return v0

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

    .line 545
    :pswitch_2
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

    .line 541
    :pswitch_3
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

    .line 513
    :pswitch_4
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
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
