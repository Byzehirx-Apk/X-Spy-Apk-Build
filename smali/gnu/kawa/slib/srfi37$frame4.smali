.class public Lgnu/kawa/slib/srfi37$frame4;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame3;->lambda17(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame4"
.end annotation


# instance fields
.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi37$frame3;

.field x:Ljava/lang/Object;


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

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame4;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame4;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi37$frame4;->lambda18()Ljava/lang/CharSequence;

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

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi37$frame4;->lambda19(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method lambda18()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame4;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v1, v3

    :try_start_0
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 10000
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 165
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    :try_start_1
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v1, v5

    :try_start_2
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame4;
    return-object v0

    .line 164
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame4;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "substring"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 165
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "substring"

    const/4 v6, 0x2

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 166
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "string-length"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda19(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame4;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/slib/srfi37$frame5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/slib/srfi37$frame5;-><init>()V

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/slib/srfi37$frame5;->x:Ljava/lang/Object;

    .line 160
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame4;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xf

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

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

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
