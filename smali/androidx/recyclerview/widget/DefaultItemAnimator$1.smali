.class Landroidx/recyclerview/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$1;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v2, v3

    .line 125
    .local v2, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 127
    goto :goto_0

    .line 128
    .end local v2    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 130
    return-void
.end method
