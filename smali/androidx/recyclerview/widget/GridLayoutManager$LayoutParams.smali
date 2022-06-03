.class public Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1150
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1152
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 1155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1150
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1152
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1156
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1167
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1152
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1168
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1150
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1152
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1164
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 4

    .prologue
    .line 1171
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 1150
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1152
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1172
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    return v0
.end method

.method public getSpanSize()I
    .locals 2

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    return v0
.end method
