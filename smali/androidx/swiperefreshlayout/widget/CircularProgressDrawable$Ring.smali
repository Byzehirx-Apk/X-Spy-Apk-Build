.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field mAlpha:I

.field mArrow:Landroid/graphics/Path;

.field mArrowHeight:I

.field final mArrowPaint:Landroid/graphics/Paint;

.field mArrowScale:F

.field mArrowWidth:I

.field final mCirclePaint:Landroid/graphics/Paint;

.field mColorIndex:I

.field mColors:[I

.field mCurrentColor:I

.field mEndTrim:F

.field final mPaint:Landroid/graphics/Paint;

.field mRingCenterRadius:F

.field mRotation:F

.field mShowArrow:Z

.field mStartTrim:F

.field mStartingEndTrim:F

.field mStartingRotation:F

.field mStartingStartTrim:F

.field mStrokeWidth:F

.field final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 623
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 624
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 625
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 626
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 628
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 629
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 630
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 631
    move-object v1, v0

    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 643
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    .line 647
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 651
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 652
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 653
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 656
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 658
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 15

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    move-object v3, v9

    .line 693
    .local v3, "arcBounds":Landroid/graphics/RectF;
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v4, v9

    .line 694
    .local v4, "arcRadius":F
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 696
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v9, v10

    move v4, v9

    .line 699
    :cond_0
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    move v11, v4

    sub-float/2addr v10, v11

    move-object v11, v2

    .line 700
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    move v12, v4

    sub-float/2addr v11, v12

    move-object v12, v2

    .line 701
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    move v13, v4

    add-float/2addr v12, v13

    move-object v13, v2

    .line 702
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    move v14, v4

    add-float/2addr v13, v14

    .line 699
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 704
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v9, v10

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float/2addr v9, v10

    move v5, v9

    .line 705
    .local v5, "startAngle":F
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v9, v10

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float/2addr v9, v10

    move v6, v9

    .line 706
    .local v6, "endAngle":F
    move v9, v6

    move v10, v5

    sub-float/2addr v9, v10

    move v7, v9

    .line 708
    .local v7, "sweepAngle":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 712
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move v8, v9

    .line 713
    .local v8, "inset":F
    move-object v9, v3

    move v10, v8

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 714
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 716
    move-object v9, v3

    move v10, v8

    neg-float v10, v10

    move v11, v8

    neg-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 718
    move-object v9, v1

    move-object v10, v3

    move v11, v5

    move v12, v7

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 720
    move-object v9, v0

    move-object v10, v1

    move v11, v5

    move v12, v7

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    .line 721
    return-void
.end method

.method drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .locals 13

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move v2, p2

    .local v2, "startAngle":F
    move/from16 v3, p3

    .local v3, "sweepAngle":F
    move-object/from16 v4, p4

    .local v4, "bounds":Landroid/graphics/RectF;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v7, :cond_0

    .line 725
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v7, :cond_1

    .line 726
    move-object v7, v0

    new-instance v8, Landroid/graphics/Path;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 727
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 731
    :goto_0
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v5, v7

    .line 732
    .local v5, "centerRadius":F
    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v6, v7

    .line 737
    .local v6, "inset":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 738
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 739
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move v8, v5

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    add-float/2addr v8, v9

    move v9, v6

    sub-float/2addr v8, v9

    move-object v9, v4

    .line 742
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 741
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->offset(FF)V

    .line 743
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 745
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 747
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 748
    move-object v7, v1

    move v8, v2

    move v9, v3

    add-float/2addr v8, v9

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    move-object v10, v4

    .line 749
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 748
    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 750
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 751
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 753
    .end local v5    # "centerRadius":F
    .end local v6    # "inset":F
    :cond_0
    return-void

    .line 729
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method getAlpha()I
    .locals 2

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mAlpha:I

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getArrowHeight()F
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getArrowScale()F
    .locals 2

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getArrowWidth()F
    .locals 2

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getBackgroundColor()I
    .locals 2

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getCenterRadius()F
    .locals 2

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getColors()[I
    .locals 2

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    move-object v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return-object v0
.end method

.method getEndTrim()F
    .locals 2

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getNextColor()I
    .locals 3

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result v2

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getNextColorIndex()I
    .locals 3

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getRotation()F
    .locals 2

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getShowArrow()Z
    .locals 2

    .prologue
    .line 907
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStartTrim()F
    .locals 2

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStartingColor()I
    .locals 3

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStartingEndTrim()F
    .locals 2

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStartingRotation()F
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStartingStartTrim()F
    .locals 2

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return-object v0
.end method

.method getStrokeWidth()F
    .locals 2

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    return v0
.end method

.method goToNextColor()V
    .locals 3

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 818
    return-void
.end method

.method resetOriginals()V
    .locals 3

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 945
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 946
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 947
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 948
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 949
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 950
    return-void
.end method

.method setAlpha(I)V
    .locals 4

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 829
    return-void
.end method

.method setArrowDimensions(FF)V
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "height":F
    move-object v3, v0

    move v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    .line 669
    move-object v3, v0

    move v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    .line 670
    return-void
.end method

.method setArrowScale(F)V
    .locals 4

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "scale":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 915
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    .line 917
    :cond_0
    return-void
.end method

.method setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    return-void
.end method

.method setCenterRadius(F)V
    .locals 4

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "centerRadius":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    .line 891
    return-void
.end method

.method setColor(I)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 779
    return-void
.end method

.method setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, p1

    .local v1, "filter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 822
    return-void
.end method

.method setColorIndex(I)V
    .locals 5

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 798
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v3, v3, v4

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 799
    return-void
.end method

.method setColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, p1

    .local v1, "colors":[I
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mColors:[I

    .line 763
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 764
    return-void
.end method

.method setEndTrim(F)V
    .locals 4

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "endTrim":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 872
    return-void
.end method

.method setRotation(F)V
    .locals 4

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "rotation":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 880
    return-void
.end method

.method setShowArrow(Z)V
    .locals 4

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "show":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 902
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    .line 904
    :cond_0
    return-void
.end method

.method setStartTrim(F)V
    .locals 4

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "startTrim":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 852
    return-void
.end method

.method setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, p1

    .local v1, "strokeCap":Landroid/graphics/Paint$Cap;
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 674
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move v1, p1

    .local v1, "strokeWidth":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 843
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    return-void
.end method

.method storeOriginals()V
    .locals 3

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 936
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 937
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 938
    return-void
.end method
