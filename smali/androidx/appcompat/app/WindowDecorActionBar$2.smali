.class Landroidx/appcompat/app/WindowDecorActionBar$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 156
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    .line 157
    return-void
.end method
