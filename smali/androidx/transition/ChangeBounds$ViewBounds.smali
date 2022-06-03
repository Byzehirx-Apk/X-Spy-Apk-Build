.class Landroidx/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$ViewBounds;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 469
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 470
    return-void
.end method

.method private setLeftTopRightBottom()V
    .locals 6

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$ViewBounds;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    move-object v5, v0

    iget v5, v5, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 492
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 493
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 494
    return-void
.end method


# virtual methods
.method setBottomRight(Landroid/graphics/PointF;)V
    .locals 6

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$ViewBounds;
    move-object v1, p1

    .local v1, "bottomRight":Landroid/graphics/PointF;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 483
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 484
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 485
    move-object v2, v0

    iget v2, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v2, v3, :cond_0

    .line 486
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 488
    :cond_0
    return-void
.end method

.method setTopLeft(Landroid/graphics/PointF;)V
    .locals 6

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$ViewBounds;
    move-object v1, p1

    .local v1, "topLeft":Landroid/graphics/PointF;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 474
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 475
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 476
    move-object v2, v0

    iget v2, v2, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v2, v3, :cond_0

    .line 477
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 479
    :cond_0
    return-void
.end method
