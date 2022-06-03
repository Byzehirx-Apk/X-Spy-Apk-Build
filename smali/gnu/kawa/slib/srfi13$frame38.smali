.class public Lgnu/kawa/slib/srfi13$frame38;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame37;->lambda86(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame38"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn87:Lgnu/expr/ModuleMethod;

.field final lambda$Fn88:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame37;


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

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame38;->lambda$Fn87:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x4d

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame38;->lambda$Fn88:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda89(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "i":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    return-object v0
.end method

.method static lambda90(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "i":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame38;->lambda87()Ljava/lang/Object;

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

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame38;->lambda88(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method lambda87()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame38;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Gr:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame38;->staticLink:Lgnu/kawa/slib/srfi13$frame37;

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame37;->s2:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame38;->rest:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame38;
    return-object v0
.end method

.method lambda88(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame38;
    move-object v1, p1

    .local v1, "start2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "end2":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame38;->staticLink:Lgnu/kawa/slib/srfi13$frame37;

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame37;->s1:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame38;->staticLink:Lgnu/kawa/slib/srfi13$frame37;

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame37;->s2:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .local v3, "x":Z
    move v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame38;->start1:Ljava/lang/Object;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_2

    .line 785
    :goto_1
    sget-object v4, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame38;->end1:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 787
    :goto_2
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame38;
    return-object v0

    .line 784
    .end local v3    # "x":Z
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame38;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v3    # "x":Z
    :cond_1
    move v4, v3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 787
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame38;->staticLink:Lgnu/kawa/slib/srfi13$frame37;

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame37;->s1:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame38;->start1:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame38;->end1:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame38;->staticLink:Lgnu/kawa/slib/srfi13$frame37;

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame37;->s2:Ljava/lang/Object;

    move-object v8, v1

    move-object v9, v2

    sget-object v10, Lgnu/kawa/slib/srfi13;->lambda$Fn89:Lgnu/expr/ModuleMethod;

    sget-object v11, Lgnu/kawa/slib/srfi13;->lambda$Fn90:Lgnu/expr/ModuleMethod;

    sget-object v12, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    invoke-static/range {v4 .. v12}, Lgnu/kawa/slib/srfi13;->$PcStringCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x4c

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

    const/16 v6, 0x4d

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
