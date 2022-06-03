.class public Lgnu/kawa/slib/srfi1$frame28;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame27;->lambda40(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame28"
.end annotation


# instance fields
.field staticLink:Lgnu/kawa/slib/srfi1$frame27;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda41lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame28;
    move-object v1, p1

    .local v1, "heads":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tails":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/srfi1$frame29;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/kawa/slib/srfi1$frame29;-><init>()V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/srfi1$frame29;->staticLink:Lgnu/kawa/slib/srfi1$frame28;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame29;->heads:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame29;->tails:Ljava/lang/Object;

    .line 1381
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame29;->lambda$Fn26:Lgnu/expr/ModuleMethod;

    move-object v5, v3

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame29;->lambda$Fn27:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame28;
    return-object v0
.end method
