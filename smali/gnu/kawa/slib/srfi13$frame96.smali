.class public Lgnu/kawa/slib/srfi13$frame96;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->lambda222buildit(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame96"
.end annotation


# instance fields
.field final:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda223recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame96;
    move-object v1, p1

    .local v1, "lis":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1857
    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$delim:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/slib/srfi13$frame96;->lambda223recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .line 1856
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame96;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame96;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame96;->final:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v5, 0x741

    const/16 v6, 0xd

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2
.end method
