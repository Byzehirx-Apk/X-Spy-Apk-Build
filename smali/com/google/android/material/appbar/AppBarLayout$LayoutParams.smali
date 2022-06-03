.class public Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field static final COLLAPSIBLE_FLAGS:I = 0xa

.field static final FLAG_QUICK_RETURN:I = 0x5

.field static final FLAG_SNAP:I = 0x11

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_SCROLL:I = 0x1

.field public static final SCROLL_FLAG_SNAP:I = 0x10

.field public static final SCROLL_FLAG_SNAP_MARGINS:I = 0x20


# instance fields
.field scrollFlags:I

.field scrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 739
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 755
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 8

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "weight":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 739
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 759
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 739
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 744
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Lcom/google/android/material/R$styleable;->AppBarLayout_Layout:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 745
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->AppBarLayout_Layout_layout_scrollFlags:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 746
    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 747
    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v4, v5

    .line 748
    .local v4, "resId":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 750
    .end local v4    # "resId":I
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 751
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 763
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 739
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 767
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 739
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 773
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 739
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 779
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 780
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 781
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 2

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    return-object v0
.end method

.method isCollapsible()Z
    .locals 3

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    const/16 v2, 0xa

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollFlags(I)V
    .locals 4

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 795
    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 817
    return-void
.end method
