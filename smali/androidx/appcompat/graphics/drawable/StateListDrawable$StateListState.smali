.class Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 8

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v1, p1

    .local v1, "orig":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v2, p2

    .local v2, "owner":Landroidx/appcompat/graphics/drawable/StateListDrawable;
    move-object v3, p3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 331
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 333
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v5

    new-array v5, v5, [[I

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    move v3, v4

    .line 350
    .local v3, "pos":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    move v5, v3

    move-object v6, v1

    aput-object v6, v4, v5

    .line 351
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    return v0
.end method

.method public growArray(II)V
    .locals 9

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move v1, p1

    .local v1, "oldSize":I
    move v2, p2

    .local v2, "newSize":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 380
    move v4, v2

    new-array v4, v4, [[I

    move-object v3, v4

    .line 381
    .local v3, "newStateSets":[[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 383
    return-void
.end method

.method indexOfStateSet([I)I
    .locals 7

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    move-object v2, v5

    .line 356
    .local v2, "stateSets":[[I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v5

    move v3, v5

    .line 357
    .local v3, "count":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 358
    move-object v5, v2

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    move v5, v4

    move v0, v5

    .line 362
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    :goto_1
    return v0

    .line 357
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method mutate()V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v3, v3

    new-array v3, v3, [[I

    move-object v1, v3

    .line 342
    .local v1, "stateSets":[[I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 343
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    move v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    :goto_1
    aput-object v5, v3, v4

    .line 342
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 343
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 345
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 346
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    new-instance v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    return-object v0
.end method
