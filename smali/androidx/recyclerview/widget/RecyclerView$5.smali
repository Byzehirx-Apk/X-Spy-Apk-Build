.class Landroidx/recyclerview/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 855
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 856
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v1

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 912
    .local v4, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 913
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 914
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Called attach on a child which is not detached: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 915
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 922
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 923
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 9

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move v1, p1

    .local v1, "offset":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 928
    .local v2, "view":Landroid/view/View;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 929
    move-object v4, v2

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 930
    .local v3, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 931
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 932
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "called detach on an already detached child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 933
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 938
    :cond_0
    move-object v4, v3

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 941
    .end local v3    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v5, v1

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 942
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$5;
    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$5;
    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$5;
    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$5;
    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 946
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 947
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 948
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 950
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 955
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 956
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 958
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 6

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildCount()I

    move-result v4

    move v1, v4

    .line 891
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 892
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 893
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 898
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 891
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->removeAllViews()V

    .line 901
    return-void
.end method

.method public removeViewAt(I)V
    .locals 5

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$5;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 866
    .local v2, "child":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 867
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 872
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 877
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeViewAt(I)V

    .line 881
    return-void
.end method
