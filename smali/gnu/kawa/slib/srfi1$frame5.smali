.class public Lgnu/kawa/slib/srfi1$frame5;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda11recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "lis":Ljava/lang/Object;
    new-instance v2, Lgnu/kawa/slib/srfi1$frame6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/kawa/slib/srfi1$frame6;-><init>()V

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    .line 652
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    invoke-static {v2}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v1

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v1

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v1

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v2}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 654
    :goto_0
    move-object v0, v2

    .end local v0    # "lis":Ljava/lang/Object;
    return-object v0

    .line 653
    .restart local v0    # "lis":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    iput-object v3, v2, Lgnu/kawa/slib/srfi1$frame6;->elt:Ljava/lang/Object;

    .line 654
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame6;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame6;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
