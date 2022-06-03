.class Landroidx/appcompat/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$1;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move v1, v2

    .line 268
    .local v1, "scrollPos":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 269
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 270
    return-void
.end method
