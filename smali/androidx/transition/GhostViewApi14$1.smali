.class Landroidx/transition/GhostViewApi14$1;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/GhostViewApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/GhostViewApi14;


# direct methods
.method constructor <init>(Landroidx/transition/GhostViewApi14;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/GhostViewApi14;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, v1, Landroidx/transition/GhostViewApi14;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 120
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 121
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 122
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 123
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 124
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    .line 125
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    .line 127
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/GhostViewApi14$1;
    return v0
.end method
