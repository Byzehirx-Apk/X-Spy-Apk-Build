.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 69
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 71
    move-object v4, v0

    const/16 v5, 0xff

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 73
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 74
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 89
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 90
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 95
    .local v3, "density":F
    move-object v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    .line 96
    move-object v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    .line 97
    move-object v4, v0

    const/high16 v5, 0x42800000    # 64.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    .line 98
    move-object v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    .line 99
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    .line 100
    move-object v4, v0

    const/high16 v5, 0x42000000    # 32.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    .line 101
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    .line 104
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    .line 105
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    .line 107
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    .line 109
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v5, Landroidx/viewpager/widget/PagerTabStrip$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 118
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v5, Landroidx/viewpager/widget/PagerTabStrip$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 126
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTabStrip;
    return v0
.end method

.method getMinHeight()I
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, v0

    invoke-super {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTabStrip;
    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTabStrip;
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v7

    move v2, v7

    .line 268
    .local v2, "height":I
    move v7, v2

    move v3, v7

    .line 269
    .local v3, "bottom":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 270
    .local v4, "left":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v7, v8

    move v5, v7

    .line 271
    .local v5, "right":I
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 273
    .local v6, "top":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    const/16 v9, 0x18

    shl-int/lit8 v8, v8, 0x18

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    move-object v7, v1

    move v8, v4

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v7, :cond_0

    .line 277
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move-object v10, v0

    .line 279
    invoke-virtual {v10}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v11, v2

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 278
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move v2, v5

    .line 229
    .local v2, "action":I
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v5, :cond_0

    .line 230
    const/4 v5, 0x0

    move v0, v5

    .line 260
    .end local v0    # "this":Landroidx/viewpager/widget/PagerTabStrip;
    :goto_0
    return v0

    .line 235
    .restart local v0    # "this":Landroidx/viewpager/widget/PagerTabStrip;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v3, v5

    .line 236
    .local v3, "x":F
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v4, v5

    .line 237
    .local v4, "y":F
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 260
    :cond_1
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 239
    :pswitch_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    .line 240
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    .line 241
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    .line 242
    goto :goto_1

    .line 245
    :pswitch_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    sub-float/2addr v5, v6

    .line 246
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 247
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 252
    :pswitch_2
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 253
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 254
    :cond_3
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 255
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    .line 185
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 186
    move-object v2, v0

    move v3, v1

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 188
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 178
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    .line 193
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 194
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 196
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDrawFullUnderline(Z)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "drawFull":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 206
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 207
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 208
    return-void
.end method

.method public setPadding(IIII)V
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    if-ge v5, v6, :cond_0

    .line 161
    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    move v4, v5

    .line 163
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    .line 164
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 137
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 139
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 148
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "textSpacing":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    if-ge v2, v3, :cond_0

    .line 169
    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    move v1, v2

    .line 171
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    .line 172
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 14

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip;
    move v1, p1

    .local v1, "position":I
    move/from16 v2, p2

    .local v2, "positionOffset":F
    move/from16 v3, p3

    .local v3, "force":Z
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    move-object v4, v9

    .line 286
    .local v4, "r":Landroid/graphics/Rect;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v9

    move v5, v9

    .line 287
    .local v5, "bottom":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 288
    .local v6, "left":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v9, v10

    move v7, v9

    .line 289
    .local v7, "right":I
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int/2addr v9, v10

    move v8, v9

    .line 291
    .local v8, "top":I
    move-object v9, v4

    move v10, v6

    move v11, v8

    move v12, v7

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 294
    move-object v9, v0

    move v10, v2

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 296
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 297
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v9, v10

    move v7, v9

    .line 298
    move-object v9, v4

    move v10, v6

    move v11, v8

    move v12, v7

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 300
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 301
    return-void
.end method
