.class public Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 2475
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 3

    .prologue
    .line 2482
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2483
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2484
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2485
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 2486
    return-void
.end method
