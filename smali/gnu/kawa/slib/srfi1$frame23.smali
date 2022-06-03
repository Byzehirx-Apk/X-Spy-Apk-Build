.class public Lgnu/kawa/slib/srfi1$frame23;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->takeWhile(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame23"
.end annotation


# instance fields
.field pred:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda34recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame23;
    move-object v1, p1

    .local v1, "lis":Ljava/lang/Object;
    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_0

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 1304
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame23;
    return-object v0

    .line 1302
    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame23;
    :cond_0
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 1303
    .local v2, "x":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame23;->pred:Lgnu/mapping/Procedure;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1

    .line 1304
    move-object v3, v2

    move-object v4, v0

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/slib/srfi1$frame23;->lambda34recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0
.end method
