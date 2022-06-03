.class Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Landroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Landroid/graphics/Rect;

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
    move-object v1, p1

    .local v1, "targetBounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "actualBounds":Landroid/graphics/Rect;
    move-object v3, p3

    .local v3, "delegateView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1756
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 1757
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    .line 1758
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 1759
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    .line 1760
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1761
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1762
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v2, v7

    .line 1774
    .local v2, "x":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    move v3, v7

    .line 1775
    .local v3, "y":I
    const/4 v7, 0x0

    move v4, v7

    .line 1776
    .local v4, "sendToDelegate":Z
    const/4 v7, 0x1

    move v5, v7

    .line 1777
    .local v5, "hit":Z
    const/4 v7, 0x0

    move v6, v7

    .line 1779
    .local v6, "handled":Z
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1800
    :cond_0
    :goto_0
    move v7, v4

    if-eqz v7, :cond_1

    .line 1801
    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1805
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1806
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 1805
    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1812
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v6, v7

    .line 1814
    :cond_1
    move v7, v6

    move v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
    return v0

    .line 1781
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1782
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1783
    const/4 v7, 0x1

    move v4, v7

    goto :goto_0

    .line 1788
    :pswitch_1
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    move v4, v7

    .line 1789
    move v7, v4

    if-eqz v7, :cond_0

    .line 1790
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1791
    const/4 v7, 0x0

    move v5, v7

    goto :goto_0

    .line 1796
    :pswitch_2
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    move v4, v7

    .line 1797
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 1809
    :cond_2
    move-object v7, v1

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 1765
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
    move-object v1, p1

    .local v1, "desiredBounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "actualBounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1766
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1767
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v4, v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1768
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1769
    return-void
.end method
