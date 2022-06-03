.class Landroidx/recyclerview/widget/AsyncListDiffer$1$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move-object v1, p1

    .local v1, "this$1":Landroidx/recyclerview/widget/AsyncListDiffer$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 9

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move v1, p1

    .local v1, "oldItemPosition":I
    move v2, p2

    .local v2, "newItemPosition":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 271
    .local v3, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 272
    .local v4, "newItem":Ljava/lang/Object;, "TT;"
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 273
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v5

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    .line 276
    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    :goto_0
    return v0

    .line 275
    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v4

    if-nez v5, :cond_1

    .line 276
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 282
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public areItemsTheSame(II)Z
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move v1, p1

    .local v1, "oldItemPosition":I
    move v2, p2

    .local v2, "newItemPosition":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 260
    .local v3, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 261
    .local v4, "newItem":Ljava/lang/Object;, "TT;"
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 262
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v5

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    .line 265
    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v4

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move v1, p1

    .local v1, "oldItemPosition":I
    move v2, p2

    .local v2, "newItemPosition":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 289
    .local v3, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 290
    .local v4, "newItem":Ljava/lang/Object;, "TT;"
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 291
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v5

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    return-object v0

    .line 297
    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public getNewListSize()I
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    return v0
.end method

.method public getOldListSize()I
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer$1$1;, "Landroidx/recyclerview/widget/AsyncListDiffer$1$1;"
    return v0
.end method
