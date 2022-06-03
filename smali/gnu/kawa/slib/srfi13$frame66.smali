.class public Lgnu/kawa/slib/srfi13$frame66;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringDrop(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame66"
.end annotation


# instance fields
.field final lambda$Fn153:Lgnu/expr/ModuleMethod;

.field len:I

.field n:Ljava/lang/Object;


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

    const/16 v5, 0x82

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1010"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame66;->lambda$Fn153:Lgnu/expr/ModuleMethod;

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

    const/16 v4, 0x82

    if-ne v3, v4, :cond_0

    .line 1010
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi13$frame66;->lambda153(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    .line 4294967295
    .line 1010
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method lambda153(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame66;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame66;->n:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .local v2, "x":Z
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame66;->n:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .end local v2    # "x":Z
    .local v3, "x":Z
    move v4, v3

    if-eqz v4, :cond_0

    sget-object v4, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v5, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi13$frame66;->n:Ljava/lang/Object;

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/slib/srfi13$frame66;->len:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .end local v3    # "x":Z
    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame66;
    return v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame66;
    .restart local v3    # "x":Z
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v3    # "x":Z
    .restart local v2    # "x":Z
    :cond_1
    move v4, v2

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

    const/16 v5, 0x82

    if-ne v4, v5, :cond_0

    .line 1010
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
    .line 1010
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
