.class Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 305
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static drainCache()V
    .locals 1

    .prologue
    .line 324
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method static obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    .locals 4

    .prologue
    .line 311
    sget-object v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v0, v1

    .line 312
    .local v0, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;-><init>()V

    :goto_0
    move-object v0, v1

    .end local v0    # "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    return-object v0

    .restart local v0    # "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 317
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 318
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 319
    sget-object v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v1

    .line 320
    return-void
.end method
