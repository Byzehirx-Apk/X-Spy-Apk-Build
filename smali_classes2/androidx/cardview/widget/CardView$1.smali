.class Landroidx/cardview/widget/CardView$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cardview/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/cardview/widget/CardView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView$1;
    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView$1;
    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView$1;
    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView$1;
    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 453
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 5

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget v4, v4, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    if-le v3, v4, :cond_0

    .line 476
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/cardview/widget/CardView;->access$101(Landroidx/cardview/widget/CardView;I)V

    .line 478
    :cond_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget v4, v4, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    if-le v3, v4, :cond_1

    .line 479
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move v4, v2

    invoke-static {v3, v4}, Landroidx/cardview/widget/CardView;->access$201(Landroidx/cardview/widget/CardView;I)V

    .line 481
    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 11

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView$1;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-object v5, v5, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-object v7, v7, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-object v8, v8, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-object v9, v9, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-object v10, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    .line 471
    return-void
.end method
