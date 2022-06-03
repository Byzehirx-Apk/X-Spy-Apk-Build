.class Landroidx/recyclerview/widget/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$5;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 7

    .prologue
    .line 1297
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$5;
    move v1, p1

    .local v1, "childCount":I
    move v2, p2

    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1298
    move v4, v2

    move v0, v4

    .line 1308
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$5;
    :goto_0
    return v0

    .line 1300
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$5;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    move v3, v4

    .line 1301
    .local v3, "childPosition":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1302
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 1303
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move v5, v3

    iput v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1305
    :cond_1
    move v4, v2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1306
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 1308
    :cond_2
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
