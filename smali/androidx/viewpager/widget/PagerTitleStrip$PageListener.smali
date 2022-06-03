.class Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroidx/viewpager/widget/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .locals 4

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    .line 476
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 7

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move-object v2, p2

    .local v2, "oldAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v3, p3

    .local v3, "newAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 507
    return-void
.end method

.method public onChanged()V
    .locals 6

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 513
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v1, v2

    .line 514
    .local v1, "offset":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 515
    return-void

    .line 513
    .end local v1    # "offset":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    .line 501
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move v3, p3

    .local v3, "positionOffsetPixels":I
    move v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 482
    add-int/lit8 v1, v1, 0x1

    .line 484
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 485
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez v3, :cond_0

    .line 491
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 493
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v2, v3

    .line 494
    .local v2, "offset":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 496
    .end local v2    # "offset":F
    :cond_0
    return-void

    .line 493
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
