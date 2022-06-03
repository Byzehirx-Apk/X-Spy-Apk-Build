.class Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 3157
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    .prologue
    .line 3160
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    move-object v1, p1

    .local v1, "lhs":Landroid/view/View;
    move-object v2, p2

    .local v2, "rhs":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v3, v5

    .line 3161
    .local v3, "llp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v4, v5

    .line 3162
    .local v4, "rlp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v5, v3

    iget-boolean v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move-object v6, v4

    iget-boolean v6, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq v5, v6, :cond_1

    .line 3163
    move-object v5, v3

    iget-boolean v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 3165
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    :goto_1
    return v0

    .line 3163
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 3165
    :cond_1
    move-object v5, v3

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    move-object v6, v4

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    sub-int/2addr v5, v6

    move v0, v5

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 3157
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    return v0
.end method
