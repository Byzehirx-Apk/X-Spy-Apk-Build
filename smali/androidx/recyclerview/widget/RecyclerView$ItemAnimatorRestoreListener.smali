.class Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 12441
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 12442
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 12446
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
    move-object v1, p1

    .local v1, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 12447
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 12448
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12452
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12453
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12454
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12455
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 12458
    :cond_1
    return-void
.end method
