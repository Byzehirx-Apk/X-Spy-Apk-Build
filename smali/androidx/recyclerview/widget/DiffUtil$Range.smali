.class Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$Range;
    move v1, p1

    .local v1, "oldListStart":I
    move v2, p2

    .local v2, "oldListEnd":I
    move v3, p3

    .local v3, "newListStart":I
    move v4, p4

    .local v4, "newListEnd":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 486
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 487
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 488
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 489
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 490
    return-void
.end method
