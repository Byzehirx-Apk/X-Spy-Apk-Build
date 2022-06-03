.class public Lgnu/kawa/slib/srfi1$frame10;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->pairFoldRight$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation


# instance fields
.field f:Lgnu/mapping/Procedure;

.field zero:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame10;
    move-object v1, p1

    .local v1, "lists":Ljava/lang/Object;
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 885
    .local v2, "cdrs":Ljava/lang/Object;
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    .line 886
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame10;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame10;
    :cond_0
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/slib/srfi1$frame10;->lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5}, Lgnu/kawa/slib/srfi1;->append$Ex$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame10;
    move-object v1, p1

    .local v1, "lis":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame10;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame10;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    move-object v3, v1

    move-object v4, v0

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/slib/srfi1$frame10;->lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
