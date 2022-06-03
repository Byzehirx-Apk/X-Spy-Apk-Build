.class Landroidx/recyclerview/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Landroidx/recyclerview/widget/RecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 47
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 48
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    .line 50
    return-void
.end method
