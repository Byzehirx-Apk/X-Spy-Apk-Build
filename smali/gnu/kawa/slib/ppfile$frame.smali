.class public Lgnu/kawa/slib/ppfile$frame;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field filter:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field optarg:Lgnu/lists/LList;


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

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:27"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/ppfile$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

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

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 27
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 27
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/ppfile$frame;
    move-object v1, p1

    .local v1, "port":Ljava/lang/Object;
    new-instance v6, Lgnu/kawa/slib/ppfile$frame0;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lgnu/kawa/slib/ppfile$frame0;-><init>()V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iput-object v8, v7, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    move-object v2, v6

    move-object v6, v2

    move-object v7, v1

    iput-object v7, v6, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    .line 34
    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/slib/ppfile$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    move-object v3, v6

    .line 29
    .local v3, "fun":Lgnu/mapping/Procedure;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move-object v4, v6

    .line 31
    .local v4, "outport":Ljava/lang/Object;
    move-object v6, v4

    invoke-static {v6}, Lkawa/lib/ports;->isOutputPort(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 33
    :goto_1
    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/slib/ppfile$frame;
    return-object v0

    .line 29
    .end local v4    # "outport":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/kawa/slib/ppfile$frame;
    :cond_0
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 33
    .restart local v4    # "outport":Ljava/lang/Object;
    :cond_1
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    invoke-static {v6}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v3

    invoke-static {v6, v7}, Lkawa/lib/ports;->callWithOutputFile(Lgnu/text/Path;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "call-with-output-file"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
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

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 27
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
    .line 27
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
