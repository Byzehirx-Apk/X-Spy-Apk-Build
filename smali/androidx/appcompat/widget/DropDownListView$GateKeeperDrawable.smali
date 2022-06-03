.class Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 383
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 384
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 401
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 403
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 388
    return-void
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v3, :cond_0

    .line 408
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 410
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v5, :cond_0

    .line 415
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 417
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 393
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v2

    move v0, v2

    .line 395
    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v3, :cond_0

    .line 422
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .line 424
    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
