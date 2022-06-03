.class public Lgnu/kawa/slib/srfi1$frame56;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame56"
.end annotation


# instance fields
.field last$Mnelt:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda75recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame56;
    move-object v1, p1

    .local v1, "lists":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lkawa/lib/lists;->caar:Lgnu/expr/GenericProc;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi1$frame56;->lambda75recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame56;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame56;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame56;->last$Mnelt:Ljava/lang/Object;

    invoke-static {v2}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    goto :goto_0
.end method
