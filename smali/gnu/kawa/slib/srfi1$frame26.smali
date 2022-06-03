.class public Lgnu/kawa/slib/srfi1$frame26;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->any$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame26"
.end annotation


# instance fields
.field final lambda$Fn22:Lgnu/expr/ModuleMethod;

.field final lambda$Fn23:Lgnu/expr/ModuleMethod;

.field lis1:Ljava/lang/Object;

.field lists:Lgnu/lists/LList;

.field pred:Lgnu/mapping/Procedure;


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

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi1$frame26;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x17

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1350"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi1$frame26;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi1$frame26;->lambda37()Ljava/lang/Object;

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

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_0

    .line 1350
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi1$frame26;->lambda38(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 1350
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

.method lambda37()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1350
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame26;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame26;->lis1:Ljava/lang/Object;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame26;->lists:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame26;
    return-object v0
.end method

.method lambda38(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 1350
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame26;
    move-object v1, p1

    .local v1, "heads":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tails":Ljava/lang/Object;
    move-object v10, v1

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    move v3, v10

    .local v3, "x":Z
    move v10, v3

    if-eqz v10, :cond_2

    .line 1352
    move-object v10, v1

    move-object v11, v2

    move-object v5, v11

    move-object v4, v10

    .line 1353
    .end local v1    # "heads":Ljava/lang/Object;
    .end local v2    # "tails":Ljava/lang/Object;
    .end local v3    # "x":Z
    .local v4, "heads":Ljava/lang/Object;
    :goto_0
    move-object v10, v5

    invoke-static {v10}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$SlPair(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 1354
    .local v6, "split":Ljava/lang/Object;
    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 1353
    .local v7, "next$Mnheads":Ljava/lang/Object;
    sget-object v10, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 1356
    .local v8, "next$Mntails":Ljava/lang/Object;
    move-object v10, v7

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1357
    sget-object v10, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi1$frame26;->pred:Lgnu/mapping/Procedure;

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .local v9, "x":Ljava/lang/Object;
    move-object v10, v9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_0

    move-object v10, v9

    .line 1358
    .line 1351
    .end local v4    # "heads":Ljava/lang/Object;
    .end local v6    # "split":Ljava/lang/Object;
    .end local v7    # "next$Mnheads":Ljava/lang/Object;
    .end local v8    # "next$Mntails":Ljava/lang/Object;
    .end local v9    # "x":Ljava/lang/Object;
    :goto_1
    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame26;
    return-object v0

    .line 1357
    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame26;
    .restart local v4    # "heads":Ljava/lang/Object;
    .restart local v6    # "split":Ljava/lang/Object;
    .restart local v7    # "next$Mnheads":Ljava/lang/Object;
    .restart local v8    # "next$Mntails":Ljava/lang/Object;
    .restart local v9    # "x":Ljava/lang/Object;
    :cond_0
    move-object v10, v7

    move-object v11, v8

    move-object v5, v11

    .local v5, "tails":Ljava/lang/Object;
    move-object v4, v10

    goto :goto_0

    .line 1358
    .end local v5    # "tails":Ljava/lang/Object;
    .end local v9    # "x":Ljava/lang/Object;
    :cond_1
    sget-object v10, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/srfi1$frame26;->pred:Lgnu/mapping/Procedure;

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 1351
    .end local v4    # "heads":Ljava/lang/Object;
    .end local v6    # "split":Ljava/lang/Object;
    .end local v7    # "next$Mnheads":Ljava/lang/Object;
    .end local v8    # "next$Mntails":Ljava/lang/Object;
    .restart local v1    # "heads":Ljava/lang/Object;
    .restart local v2    # "tails":Ljava/lang/Object;
    .restart local v3    # "x":Z
    :cond_2
    move v10, v3

    if-eqz v10, :cond_3

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x16

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

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_0

    .line 1350
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

    .line 4294967295
    .line 1350
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
