.class final Landroidx/arch/core/executor/ArchTaskExecutor$2;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/executor/ArchTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/ArchTaskExecutor$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/ArchTaskExecutor$2;
    move-object v1, p1

    .local v1, "command":Ljava/lang/Runnable;
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
