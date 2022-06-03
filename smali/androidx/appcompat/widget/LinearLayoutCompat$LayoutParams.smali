.class public Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1803
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1783
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1804
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1805
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 7

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "weight":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1783
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1819
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1820
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1789
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1783
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1790
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_Layout:[I

    .line 1791
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1793
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1794
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_gravity:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1796
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1797
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1826
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1783
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1827
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1833
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1783
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1834
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 4

    .prologue
    .line 1843
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1783
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1845
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1846
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1847
    return-void
.end method
