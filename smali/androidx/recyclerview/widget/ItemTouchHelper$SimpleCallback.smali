.class public abstract Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 2233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move v1, p1

    .local v1, "dragDirs":I
    move v2, p2

    .local v2, "swipeDirs":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2234
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2235
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2236
    return-void
.end method


# virtual methods
.method public getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2287
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    return v0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2293
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    .line 2294
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 2293
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    return v0
.end method

.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2272
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 4

    .prologue
    .line 2257
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move v1, p1

    .local v1, "defaultDragDirs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2258
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 4

    .prologue
    .line 2246
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    move v1, p1

    .local v1, "defaultSwipeDirs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2247
    return-void
.end method
