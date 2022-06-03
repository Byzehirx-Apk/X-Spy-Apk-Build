.class Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/DropDownListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/DropDownListView;)V
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 701
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 712
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 713
    return-void
.end method

.method public post()V
    .locals 3

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 717
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 707
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 708
    return-void
.end method
