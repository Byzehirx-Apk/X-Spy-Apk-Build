.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
.super Landroid/app/Dialog;
.source "BrowserActionsFallbackMenuDialog.java"


# static fields
.field private static final ENTER_ANIMATION_DURATION_MS:J = 0xfaL

.field private static final EXIT_ANIMATION_DURATION_MS:J = 0x96L


# instance fields
.field private final mContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "contentView":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    .line 44
    return-void
.end method

.method static synthetic access$001(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;)V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private startAnimation(Z)V
    .locals 12

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move v1, p1

    .local v1, "isEnterAnimation":Z
    move v6, v1

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move v2, v6

    .line 70
    .local v2, "from":F
    move v6, v1

    if-eqz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    move v3, v6

    .line 71
    .local v3, "to":F
    move v6, v1

    if-eqz v6, :cond_2

    const-wide/16 v6, 0xfa

    :goto_2
    move-wide v4, v6

    .line 72
    .local v4, "duration":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 73
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 75
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move v7, v3

    .line 76
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move v7, v3

    .line 77
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move-wide v7, v4

    .line 78
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 79
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;Z)V

    .line 80
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 89
    return-void

    .line 69
    .end local v2    # "from":F
    .end local v3    # "to":F
    .end local v4    # "duration":J
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    .line 70
    .restart local v2    # "from":F
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 71
    .restart local v3    # "to":F
    :cond_2
    const-wide/16 v6, 0x96

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 57
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->dismiss()V

    .line 58
    const/4 v2, 0x1

    move v0, v2

    .line 60
    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public show()V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v1, v2

    .line 49
    .local v1, "dialogWindow":Landroid/view/Window;
    move-object v2, v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V

    .line 51
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Dialog;->show()V

    .line 52
    return-void
.end method
