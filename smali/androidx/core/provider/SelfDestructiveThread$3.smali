.class Landroidx/core/provider/SelfDestructiveThread$3;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread;->postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/SelfDestructiveThread;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$cond:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$holder:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$running:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .locals 9

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/provider/SelfDestructiveThread;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->val$holder:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->val$callable:Ljava/util/concurrent/Callable;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->val$running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/core/provider/SelfDestructiveThread$3;->val$cond:Ljava/util/concurrent/locks/Condition;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$3;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$holder:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    .line 186
    return-void

    .line 176
    :catch_0
    move-exception v3

    move-object v1, v3

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread$3;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    throw v3
.end method
