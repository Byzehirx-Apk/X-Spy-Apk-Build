.class public Lgnu/kawa/slib/srfi1$frame67;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$SlNoTest(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame67"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda92recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    move-object v0, p0

    .local v0, "lists":Ljava/lang/Object;
    new-instance v2, Lgnu/kawa/slib/srfi1$frame68;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/kawa/slib/srfi1$frame68;-><init>()V

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    .line 793
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn71:Lgnu/expr/ModuleMethod;

    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn72:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    .line 798
    :goto_0
    move-object v0, v2

    .end local v0    # "lists":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "lists":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v5, v3, v4

    invoke-static {v2}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
