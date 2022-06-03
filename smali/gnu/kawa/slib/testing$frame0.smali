.class public Lgnu/kawa/slib/testing$frame0;
.super Lgnu/expr/ModuleBody;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/testing;->$PcTestApproximimate$Eq(Ljava/lang/Object;)Lgnu/mapping/Procedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field error:Ljava/lang/Object;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;


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

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:640"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 640
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/testing$frame0;->lambda5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 640
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method lambda5(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame0;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "expected":Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v6, v1

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/testing$frame0;->error:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v4, v6

    :try_start_0
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .local v3, "x":Z
    move v5, v3

    if-eqz v5, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 642
    move-object v6, v1

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/testing$frame0;->error:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 641
    :goto_0
    move v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame0;
    return v0

    .restart local v0    # "this":Lgnu/kawa/slib/testing$frame0;
    :cond_0
    move v5, v3

    goto :goto_0

    .end local v3    # "x":Z
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "x"

    const/4 v9, -0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
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

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 640
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
    .line 640
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
