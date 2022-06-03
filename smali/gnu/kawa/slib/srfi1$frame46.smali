.class public Lgnu/kawa/slib/srfi1$frame46;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame45;->lambda62(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame46"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final lambda$Fn46:Lgnu/expr/ModuleMethod;

.field final lambda$Fn47:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi1$frame45;


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

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi1$frame46;->lambda$Fn46:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x2f

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1544"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi1$frame46;->lambda$Fn47:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi1$frame46;->lambda63()Ljava/lang/Object;

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

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 1544
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi1$frame46;->lambda64(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 1544
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

.method lambda63()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1544
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame46;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame46;->staticLink:Lgnu/kawa/slib/srfi1$frame45;

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame45;->$Eq:Lgnu/mapping/Procedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame46;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi1$frame46;->b:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi1;->lsetDiff$PlIntersection$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame46;
    return-object v0
.end method

.method lambda64(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 1544
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame46;
    move-object v1, p1

    .local v1, "a$Mnb":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "aIntB":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/srfi1$frame47;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/kawa/slib/srfi1$frame47;-><init>()V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/srfi1$frame47;->staticLink:Lgnu/kawa/slib/srfi1$frame46;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame47;->a$Mnint$Mnb:Ljava/lang/Object;

    .line 1545
    move-object v4, v1

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame46;->staticLink:Lgnu/kawa/slib/srfi1$frame45;

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame45;->$Eq:Lgnu/mapping/Procedure;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame46;->b:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi1$frame46;->a:Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/srfi1;->lsetDifference$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1547
    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame46;
    return-object v0

    .line 1545
    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame46;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame47;->a$Mnint$Mnb:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1546
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi1$frame46;->b:Ljava/lang/Object;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi1$frame46;->a:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1547
    :cond_1
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame47;->lambda$Fn48:Lgnu/expr/ModuleMethod;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi1$frame46;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/slib/srfi1;->fold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x2e

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

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    .line 1544
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
    .line 1544
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
