.class Lgnu/expr/BlockExitException;
.super Ljava/lang/RuntimeException;
.source "BlockExp.java"


# instance fields
.field exit:Lgnu/expr/ExitExp;

.field result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExitException;
    move-object v1, p1

    .local v1, "exit":Lgnu/expr/ExitExp;
    move-object v2, p2

    .local v2, "result":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 125
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    .line 126
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/BlockExitException;->result:Ljava/lang/Object;

    .line 127
    return-void
.end method
