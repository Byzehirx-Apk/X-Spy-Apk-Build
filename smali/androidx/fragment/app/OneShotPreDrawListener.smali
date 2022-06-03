.class Landroidx/fragment/app/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "runnable":Ljava/lang/Runnable;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/OneShotPreDrawListener;->mView:Landroid/view/View;

    .line 43
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 44
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v3, Landroidx/fragment/app/OneShotPreDrawListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/OneShotPreDrawListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 56
    .local v2, "listener":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 57
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 58
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/OneShotPreDrawListener;->removeListener()V

    .line 64
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 65
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/OneShotPreDrawListener;
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 84
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/OneShotPreDrawListener;->removeListener()V

    .line 89
    return-void
.end method

.method public removeListener()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/OneShotPreDrawListener;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 78
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/OneShotPreDrawListener;->mView:Landroid/view/View;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 79
    return-void

    .line 76
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
