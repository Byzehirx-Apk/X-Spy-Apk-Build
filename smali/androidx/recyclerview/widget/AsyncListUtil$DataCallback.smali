.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillData([Ljava/lang/Object;II)V
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation
.end method

.method public getMaxCachedTiles()I
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    const/16 v1, 0xa

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    return v0
.end method

.method public recycleData([Ljava/lang/Object;I)V
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemCount"    # I
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    .local p1, "data":[Ljava/lang/Object;, "[TT;"
    return-void
.end method

.method public abstract refreshData()I
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
