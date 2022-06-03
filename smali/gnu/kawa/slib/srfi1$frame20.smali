.class public Lgnu/kawa/slib/srfi1$frame20;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->deleteDuplicates$Ex(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame20"
.end annotation


# instance fields
.field maybe$Mn$Eq:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda31recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame20;
    move-object v1, p1

    .local v1, "lis":Ljava/lang/Object;
    move-object v5, v1

    invoke-static {v5}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    move-object v5, v1

    .line 1262
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame20;
    return-object v0

    .line 1259
    .restart local v0    # "this":Lgnu/kawa/slib/srfi1$frame20;
    :cond_0
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 1260
    .local v2, "x":Ljava/lang/Object;
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1259
    .local v3, "tail":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi1$frame20;->maybe$Mn$Eq:Lgnu/mapping/Procedure;

    invoke-static {v6, v7, v8}, Lgnu/kawa/slib/srfi1;->delete$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/kawa/slib/srfi1$frame20;->lambda31recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 1262
    .local v4, "new$Mntail":Ljava/lang/Object;
    move-object v5, v3

    move-object v6, v4

    if-ne v5, v6, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v4

    invoke-static {v5, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    goto :goto_0
.end method
