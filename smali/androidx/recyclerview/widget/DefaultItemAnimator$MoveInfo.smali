.class Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "fromX":I
    move v3, p3

    .local v3, "fromY":I
    move v4, p4

    .local v4, "toX":I
    move v5, p5

    .local v5, "toY":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 64
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 65
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 66
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 67
    return-void
.end method
