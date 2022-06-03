.class Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 122
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    move-object v1, p1

    .local v1, "command":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 127
    return-void
.end method
