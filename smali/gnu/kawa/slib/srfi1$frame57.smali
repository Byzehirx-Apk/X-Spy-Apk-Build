.class public Lgnu/kawa/slib/srfi1$frame57;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame57"
.end annotation


# instance fields
.field abort:Lkawa/lang/Continuation;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda76recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame57;
    move-object v1, p1

    .local v1, "lists":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/slib/srfi1$frame58;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/kawa/slib/srfi1$frame58;-><init>()V

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame58;->staticLink:Lgnu/kawa/slib/srfi1$frame57;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/slib/srfi1$frame58;->lists:Ljava/lang/Object;

    .line 761
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame58;->lists:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame58;->lambda$Fn57:Lgnu/expr/ModuleMethod;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame58;->lambda$Fn58:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    .line 767
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame57;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame57;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v6, v4, v5

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
