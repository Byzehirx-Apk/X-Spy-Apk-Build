.class public Lgnu/kawa/slib/srfi1$frame9;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->foldRight$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation


# instance fields
.field knil:Ljava/lang/Object;

.field kons:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda17recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame9;
    move-object v1, p1

    .local v1, "lists":Ljava/lang/Object;
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 872
    .local v2, "cdrs":Ljava/lang/Object;
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame9;->knil:Ljava/lang/Object;

    .line 873
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame9;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame9;
    :cond_0
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame9;->kons:Lgnu/mapping/Procedure;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/kawa/slib/srfi1$frame9;->lambda17recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lgnu/kawa/slib/srfi1;->$PcCars$Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public lambda18recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame9;
    move-object v1, p1

    .local v1, "lis":Ljava/lang/Object;
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame9;->knil:Ljava/lang/Object;

    .line 878
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame9;
    return-object v0

    .line 877
    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame9;
    :cond_0
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 878
    .local v2, "head":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame9;->kons:Lgnu/mapping/Procedure;

    move-object v4, v2

    move-object v5, v0

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/kawa/slib/srfi1$frame9;->lambda18recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
