.class public Lgnu/kawa/slib/testing$frame;
.super Lgnu/expr/ModuleBody;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/testing;->testResultRemove(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field p:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/testing$frame;->p:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 534
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/testing$frame;
    :cond_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/testing$frame;->lambda4loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    goto :goto_0
.end method
