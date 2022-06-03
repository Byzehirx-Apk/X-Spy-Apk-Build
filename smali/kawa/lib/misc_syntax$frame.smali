.class public Lkawa/lib/misc_syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field k:Ljava/lang/Object;

.field p:Lgnu/mapping/InPort;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4f()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lkawa/lib/misc_syntax$frame;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v2}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 60
    .local v1, "x":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v2}, Lkawa/lib/ports;->closeInputPort(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 62
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lkawa/lib/misc_syntax$frame;
    return-object v0

    .restart local v0    # "this":Lkawa/lib/misc_syntax$frame;
    :cond_0
    new-instance v2, Lgnu/lists/Pair;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    move-object v5, v1

    invoke-static {v4, v5}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
