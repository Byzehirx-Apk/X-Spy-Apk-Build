.class public Lgnu/kawa/slib/srfi13$frame29;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringCompareCi$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame29"
.end annotation


# instance fields
.field final lambda$Fn64:Lgnu/expr/ModuleMethod;

.field final lambda$Fn65:Lgnu/expr/ModuleMethod;

.field maybe$Mnstarts$Plends:Lgnu/lists/LList;

.field proc$Eq:Ljava/lang/Object;

.field proc$Gr:Ljava/lang/Object;

.field proc$Ls:Ljava/lang/Object;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;


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

    const/16 v5, 0x3e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame29;->lambda$Fn64:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x3f

    const/4 v6, 0x0

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame29;->lambda$Fn65:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame29;->lambda64()Ljava/lang/Object;

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

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/srfi13$frame29;->lambda65(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

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

.method lambda64()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame29;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mncompare$Mnci:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame29;->s1:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame29;->maybe$Mnstarts$Plends:Lgnu/lists/LList;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame29;
    return-object v0
.end method

.method lambda65(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame29;
    move-object v1, p1

    .local v1, "rest":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "start1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "end1":Ljava/lang/Object;
    new-instance v5, Lgnu/kawa/slib/srfi13$frame30;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lgnu/kawa/slib/srfi13$frame30;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iput-object v7, v6, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/slib/srfi13$frame30;->rest:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/slib/srfi13$frame30;->start1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/kawa/slib/srfi13$frame30;->end1:Ljava/lang/Object;

    .line 737
    move-object v5, v4

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame30;->lambda$Fn66:Lgnu/expr/ModuleMethod;

    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame30;->lambda$Fn67:Lgnu/expr/ModuleMethod;

    invoke-static {v5, v6}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame29;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x3e

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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

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
