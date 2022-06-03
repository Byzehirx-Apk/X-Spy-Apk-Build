.class Landroidx/core/provider/SelfDestructiveThread$2;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/SelfDestructiveThread;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$callingHandler:Landroid/os/Handler;

.field final synthetic val$reply:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# direct methods
.method constructor <init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/provider/SelfDestructiveThread;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/provider/SelfDestructiveThread$2;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/core/provider/SelfDestructiveThread$2;->val$callingHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/core/provider/SelfDestructiveThread$2;->val$reply:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$2;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 145
    .line 146
    :goto_0
    move-object v3, v1

    move-object v2, v3

    .line 147
    .local v2, "result":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$2;->val$callingHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/provider/SelfDestructiveThread$2$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/provider/SelfDestructiveThread$2$1;-><init>(Landroidx/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 153
    return-void

    .line 143
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v1, v3

    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method
