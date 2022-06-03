.class public Lgnu/kawa/slib/srfi13$frame18;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame17;->lambda41(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame18"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn42:Lgnu/expr/ModuleMethod;

.field final lambda$Fn43:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame17;


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

    const/16 v5, 0x24

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn42:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x25

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn43:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame18;->lambda42()Ljava/lang/Object;

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

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame18;->lambda43(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method lambda42()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame18;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnsuffix$Mnlength$Mnci:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame18;->rest:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame18;
    return-object v0
.end method

.method lambda43(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame18;
    move-object v1, p1

    .local v1, "start2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "end2":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame17;->s1:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame18;->start1:Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v3, v6

    :try_start_0
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame18;->end1:Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v3, v7

    :try_start_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    move-object v8, v1

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v3, v9

    :try_start_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    move-object v9, v2

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    :try_start_3
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    invoke-static/range {v4 .. v9}, Lgnu/kawa/slib/srfi13;->$PcStringSuffixLengthCi(Ljava/lang/Object;IILjava/lang/Object;II)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame18;
    return v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame18;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "%string-suffix-length-ci"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "%string-suffix-length-ci"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "%string-suffix-length-ci"

    const/4 v8, 0x4

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "%string-suffix-length-ci"

    const/4 v8, 0x5

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x24

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

    const/16 v6, 0x25

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
