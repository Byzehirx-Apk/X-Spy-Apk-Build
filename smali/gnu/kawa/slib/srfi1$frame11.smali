.class public Lgnu/kawa/slib/srfi1$frame11;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->reduceRight(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation


# instance fields
.field f:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda21recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame11;
    move-object v1, p1

    .local v1, "head":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "lis":Ljava/lang/Object;
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi1$frame11;->f:Lgnu/mapping/Procedure;

    move-object v4, v1

    move-object v5, v0

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/slib/srfi1$frame11;->lambda21recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 914
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame11;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame11;
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method
