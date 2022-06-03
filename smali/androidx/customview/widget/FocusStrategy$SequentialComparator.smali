.class Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    move v1, p1

    .local v1, "isLayoutRtl":Z
    move-object v2, p2

    .local v2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 95
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    .line 96
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    .line 102
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 103
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 104
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    move-object v1, p1

    .local v1, "first":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "second":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    move-object v3, v5

    .line 109
    .local v3, "firstRect":Landroid/graphics/Rect;
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    move-object v4, v5

    .line 111
    .local v4, "secondRect":Landroid/graphics/Rect;
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 112
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v6, v2

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 114
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_0

    .line 115
    const/4 v5, -0x1

    move v0, v5

    .line 135
    .end local v0    # "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    :goto_0
    return v0

    .line 116
    .restart local v0    # "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    :cond_0
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_1

    .line 117
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 118
    :cond_1
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_3

    .line 119
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .line 120
    :cond_3
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_5

    .line 121
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 122
    :cond_5
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_6

    .line 123
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 124
    :cond_6
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    .line 125
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 126
    :cond_7
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_9

    .line 127
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_0

    :cond_8
    const/4 v5, -0x1

    goto :goto_3

    .line 128
    :cond_9
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_b

    .line 129
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    :goto_4
    move v0, v5

    goto :goto_0

    :cond_a
    const/4 v5, 0x1

    goto :goto_4

    .line 135
    :cond_b
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
