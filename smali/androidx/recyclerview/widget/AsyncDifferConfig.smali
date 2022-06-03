.class public final Landroidx/recyclerview/widget/AsyncDifferConfig;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v1, p1

    .local v1, "mainThreadExecutor":Ljava/util/concurrent/Executor;
    move-object v2, p2

    .local v2, "backgroundThreadExecutor":Ljava/util/concurrent/Executor;
    move-object v3, p3

    .local v3, "diffCallback":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 48
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 49
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncDifferConfig;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 50
    return-void
.end method


# virtual methods
.method public getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    return-object v0
.end method

.method public getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncDifferConfig;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    return-object v0
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    return-object v0
.end method
