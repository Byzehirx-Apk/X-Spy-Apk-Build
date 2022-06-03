.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 4

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;
    move-object v1, p1

    .local v1, "this$0":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v2, :cond_0

    .line 985
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 987
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 991
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 980
    return-void
.end method
