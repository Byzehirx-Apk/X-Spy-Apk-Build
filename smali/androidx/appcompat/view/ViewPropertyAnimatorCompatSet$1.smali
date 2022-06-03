.class Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 123
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 145
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    .line 150
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v2, :cond_0

    .line 128
    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_1

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 134
    :cond_1
    goto :goto_0
.end method

.method onEnd()V
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 139
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    .line 140
    return-void
.end method
