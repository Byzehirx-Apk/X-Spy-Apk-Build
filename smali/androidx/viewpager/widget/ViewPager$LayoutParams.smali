.class public Landroidx/viewpager/widget/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 3145
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3126
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 3146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 3149
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3126
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 3151
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 3152
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    .line 3153
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3154
    return-void
.end method
