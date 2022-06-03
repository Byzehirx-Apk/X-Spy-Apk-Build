.class public Lgnu/kawa/slib/srfi1$frame13;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->filterMap$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame13"
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
.method public lambda23recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi1$frame13;
    move-object v1, p1

    .local v1, "lists":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "res":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/srfi1$frame14;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/kawa/slib/srfi1$frame14;-><init>()V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/srfi1$frame14;->staticLink:Lgnu/kawa/slib/srfi1$frame13;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame14;->lists:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/srfi1$frame14;->res:Ljava/lang/Object;

    .line 969
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    move-object v5, v3

    iget-object v5, v5, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi1$frame13;
    return-object v0
.end method
