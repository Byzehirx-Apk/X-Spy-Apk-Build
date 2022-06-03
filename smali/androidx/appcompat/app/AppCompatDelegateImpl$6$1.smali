.class Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$6;)V
    .locals 4

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/appcompat/app/AppCompatDelegateImpl$6;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1011
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 1012
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1013
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1006
    return-void
.end method
