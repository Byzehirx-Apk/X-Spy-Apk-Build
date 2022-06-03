.class Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 2490
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2491
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2492
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 6

    .prologue
    .line 2520
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    const/4 v4, -0x5

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, -0x5

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v4

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    if-gt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result v4

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2496
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 2497
    invoke-super {v2, v3}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 2502
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move v2, v5

    .line 2503
    .local v2, "action":I
    move v5, v2

    if-nez v5, :cond_0

    .line 2504
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    move v3, v5

    .line 2505
    .local v3, "x":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move v4, v5

    .line 2506
    .local v4, "y":I
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2507
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(I)V

    .line 2508
    const/4 v5, 0x1

    move v0, v5

    .line 2511
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 5

    .prologue
    .line 2516
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
    move v1, p1

    .local v1, "resid":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2517
    return-void
.end method
