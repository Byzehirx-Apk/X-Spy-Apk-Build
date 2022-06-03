.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    move-object v7, v0

    const v8, 0x800033

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 155
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    move v10, v3

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v7

    move-object v4, v7

    .line 158
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move v5, v7

    .line 159
    .local v5, "index":I
    move v7, v5

    if-ltz v7, :cond_0

    .line 160
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 163
    :cond_0
    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move v5, v7

    .line 164
    move v7, v5

    if-ltz v7, :cond_1

    .line 165
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 168
    :cond_1
    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    move v6, v7

    .line 169
    .local v6, "baselineAligned":Z
    move v7, v6

    if-nez v7, :cond_2

    .line 170
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 173
    :cond_2
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 175
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    const/4 v10, -0x1

    .line 176
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 178
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 180
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 182
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 184
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 185
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 14

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "count":I
    move/from16 v2, p2

    .local v2, "widthMeasureSpec":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v3, v8

    .line 1319
    .local v3, "uniformMeasureSpec":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 1320
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1321
    .local v5, "child":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1322
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 1324
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1327
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v7, v8

    .line 1328
    .local v7, "oldWidth":I
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1331
    move-object v8, v0

    move-object v9, v5

    move v10, v2

    const/4 v11, 0x0

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1319
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v7    # "oldWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1336
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 14

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "count":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v3, v8

    .line 897
    .local v3, "uniformMeasureSpec":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 898
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 899
    .local v5, "child":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 900
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 902
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 905
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v7, v8

    .line 906
    .local v7, "oldHeight":I
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 909
    move-object v8, v0

    move-object v9, v5

    move v10, v3

    const/4 v11, 0x0

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 910
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 897
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v7    # "oldHeight":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 914
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 1645
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1751
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    move v2, v8

    .line 323
    .local v2, "count":I
    move-object v8, v0

    invoke-static {v8}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    move v3, v8

    .line 324
    .local v3, "isLayoutRtl":Z
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 325
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 327
    .local v5, "child":Landroid/view/View;
    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 328
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 331
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v8, v3

    if-eqz v8, :cond_1

    .line 332
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v7, v8

    .line 336
    .local v7, "position":I
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 324
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v7    # "position":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .restart local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v7, v8

    .restart local v7    # "position":I
    goto :goto_1

    .line 341
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v7    # "position":I
    :cond_2
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 342
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 344
    .local v4, "child":Landroid/view/View;
    move-object v8, v4

    if-nez v8, :cond_5

    .line 345
    move v8, v3

    if-eqz v8, :cond_4

    .line 346
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    move v5, v8

    .line 358
    .local v5, "position":I
    :goto_2
    move-object v8, v0

    move-object v9, v1

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 348
    .restart local v4    # "child":Landroid/view/View;
    :cond_4
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "position":I
    goto :goto_2

    .line 351
    .end local v5    # "position":I
    :cond_5
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 352
    .restart local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v8, v3

    if-eqz v8, :cond_6

    .line 353
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "position":I
    goto :goto_2

    .line 355
    .end local v5    # "position":I
    :cond_6
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v7

    move v2, v7

    .line 296
    .local v2, "count":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 297
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 299
    .local v4, "child":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 300
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v7

    .line 302
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 303
    .local v6, "top":I
    move-object v7, v0

    move-object v8, v1

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 296
    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v6    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 309
    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 310
    .local v3, "child":Landroid/view/View;
    const/4 v7, 0x0

    move v4, v7

    .line 311
    .local v4, "bottom":I
    move-object v7, v3

    if-nez v7, :cond_3

    .line 312
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 317
    :goto_1
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "bottom":I
    :cond_2
    return-void

    .line 314
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "bottom":I
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v7

    .line 315
    .restart local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    move v4, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 9

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move v2, p2

    .local v2, "top":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v4, v5

    move v5, v2

    move-object v6, v0

    .line 364
    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v7, v8

    .line 363
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 9

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move v2, p2

    .local v2, "left":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v5, v6

    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v6, v7

    move-object v7, v0

    .line 370
    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v7, v8

    .line 369
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 6

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v1, :cond_0

    .line 1735
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1739
    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    :goto_0
    return-object v0

    .line 1736
    .restart local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1737
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 1739
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 7

    .prologue
    .line 1721
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 6

    .prologue
    .line 1744
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method public getBaseline()I
    .locals 9

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 424
    move-object v5, v0

    invoke-super {v5}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    move v0, v5

    .line 471
    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    .local v1, "child":Landroid/view/View;
    .local v2, "childBaseline":I
    :goto_0
    return v0

    .line 427
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBaseline":I
    .restart local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 428
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 433
    .restart local v1    # "child":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v2, v5

    .line 435
    .restart local v2    # "childBaseline":I
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 436
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    .line 438
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 442
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 452
    :cond_3
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    move v3, v5

    .line 454
    .local v3, "childTop":I
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 455
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    move v4, v5

    .line 456
    .local v4, "majorGravity":I
    move v5, v4

    const/16 v6, 0x30

    if-eq v5, v6, :cond_4

    .line 457
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 470
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v4, v5

    .line 471
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v5, v3

    move-object v6, v4

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    move v6, v2

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 459
    .local v4, "majorGravity":I
    :sswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 460
    goto :goto_1

    .line 463
    :sswitch_1
    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v3, v5

    goto :goto_1

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 2

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 4

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getDividerWidth()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 1700
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1401
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 1667
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getShowDividers()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public getWeightSum()F
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "childIndex":I
    move v4, v1

    if-nez v4, :cond_1

    .line 567
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 580
    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    :goto_1
    return v0

    .line 567
    .restart local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 568
    :cond_1
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 569
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 570
    :cond_3
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 571
    const/4 v4, 0x0

    move v2, v4

    .line 572
    .local v2, "hasVisibleViewBefore":Z
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_3
    move v4, v3

    if-ltz v4, :cond_4

    .line 573
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 574
    const/4 v4, 0x1

    move v2, v4

    .line 578
    :cond_4
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 572
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 580
    .end local v2    # "hasVisibleViewBefore":Z
    .end local v3    # "i":I
    :cond_6
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isBaselineAligned()Z
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 38

    .prologue
    .line 1521
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move/from16 v3, p1

    .local v3, "left":I
    move/from16 v4, p2

    .local v4, "top":I
    move/from16 v5, p3

    .local v5, "right":I
    move/from16 v6, p4

    .local v6, "bottom":I
    move-object/from16 v32, v2

    invoke-static/range {v32 .. v32}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v32

    move/from16 v7, v32

    .line 1522
    .local v7, "isLayoutRtl":Z
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v32

    move/from16 v8, v32

    .line 1528
    .local v8, "paddingTop":I
    move/from16 v32, v6

    move/from16 v33, v4

    sub-int v32, v32, v33

    move/from16 v11, v32

    .line 1529
    .local v11, "height":I
    move/from16 v32, v11

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v12, v32

    .line 1532
    .local v12, "childBottom":I
    move/from16 v32, v11

    move/from16 v33, v8

    sub-int v32, v32, v33

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v13, v32

    .line 1534
    .local v13, "childSpace":I
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v32

    move/from16 v14, v32

    .line 1536
    .local v14, "count":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v32, v0

    const v33, 0x800007

    and-int v32, v32, v33

    move/from16 v15, v32

    .line 1537
    .local v15, "majorGravity":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v32, v0

    const/16 v33, 0x70

    and-int/lit8 v32, v32, 0x70

    move/from16 v16, v32

    .line 1539
    .local v16, "minorGravity":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v32, v0

    move/from16 v17, v32

    .line 1541
    .local v17, "baselineAligned":Z
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v32, v0

    move-object/from16 v18, v32

    .line 1542
    .local v18, "maxAscent":[I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v32, v0

    move-object/from16 v19, v32

    .line 1544
    .local v19, "maxDescent":[I
    move-object/from16 v32, v2

    invoke-static/range {v32 .. v32}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v32

    move/from16 v20, v32

    .line 1545
    .local v20, "layoutDirection":I
    move/from16 v32, v15

    move/from16 v33, v20

    invoke-static/range {v32 .. v33}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    .line 1558
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v10, v32

    .line 1562
    .local v10, "childLeft":I
    :goto_0
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 1563
    .local v21, "start":I
    const/16 v32, 0x1

    move/from16 v22, v32

    .line 1565
    .local v22, "dir":I
    move/from16 v32, v7

    if-eqz v32, :cond_0

    .line 1566
    move/from16 v32, v14

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v21, v32

    .line 1567
    const/16 v32, -0x1

    move/from16 v22, v32

    .line 1570
    :cond_0
    const/16 v32, 0x0

    move/from16 v23, v32

    .local v23, "i":I
    :goto_1
    move/from16 v32, v23

    move/from16 v33, v14

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_7

    .line 1571
    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v34, v23

    mul-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v24, v32

    .line 1572
    .local v24, "childIndex":I
    move-object/from16 v32, v2

    move/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v25, v32

    .line 1574
    .local v25, "child":Landroid/view/View;
    move-object/from16 v32, v25

    if-nez v32, :cond_2

    .line 1575
    move/from16 v32, v10

    move-object/from16 v33, v2

    move/from16 v34, v24

    invoke-virtual/range {v33 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1570
    :cond_1
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1548
    .end local v10    # "childLeft":I
    .end local v21    # "start":I
    .end local v22    # "dir":I
    .end local v23    # "i":I
    .end local v24    # "childIndex":I
    .end local v25    # "child":Landroid/view/View;
    :sswitch_0
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v33, v5

    add-int v32, v32, v33

    move/from16 v33, v3

    sub-int v32, v32, v33

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v10, v32

    .line 1549
    .restart local v10    # "childLeft":I
    goto :goto_0

    .line 1553
    .end local v10    # "childLeft":I
    :sswitch_1
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v33, v5

    move/from16 v34, v3

    sub-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1554
    .restart local v10    # "childLeft":I
    goto/16 :goto_0

    .line 1576
    .restart local v21    # "start":I
    .restart local v22    # "dir":I
    .restart local v23    # "i":I
    .restart local v24    # "childIndex":I
    .restart local v25    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 1577
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move/from16 v26, v32

    .line 1578
    .local v26, "childWidth":I
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v27, v32

    .line 1579
    .local v27, "childHeight":I
    const/16 v32, -0x1

    move/from16 v28, v32

    .line 1581
    .local v28, "childBaseline":I
    move-object/from16 v32, v25

    .line 1582
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v29, v32

    .line 1584
    .local v29, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v32, v17

    if-eqz v32, :cond_3

    move-object/from16 v32, v29

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 1585
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getBaseline()I

    move-result v32

    move/from16 v28, v32

    .line 1588
    :cond_3
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v32, v0

    move/from16 v30, v32

    .line 1589
    .local v30, "gravity":I
    move/from16 v32, v30

    if-gez v32, :cond_4

    .line 1590
    move/from16 v32, v16

    move/from16 v30, v32

    .line 1593
    :cond_4
    move/from16 v32, v30

    const/16 v33, 0x70

    and-int/lit8 v32, v32, 0x70

    sparse-switch v32, :sswitch_data_1

    .line 1625
    move/from16 v32, v8

    move/from16 v9, v32

    .line 1629
    .local v9, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v32, v2

    move/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 1630
    move/from16 v32, v10

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1633
    :cond_6
    move/from16 v32, v10

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1634
    move-object/from16 v32, v2

    move-object/from16 v33, v25

    move/from16 v34, v10

    move-object/from16 v35, v2

    move-object/from16 v36, v25

    invoke-virtual/range {v35 .. v36}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v34, v34, v35

    move/from16 v35, v9

    move/from16 v36, v26

    move/from16 v37, v27

    invoke-direct/range {v32 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1636
    move/from16 v32, v10

    move/from16 v33, v26

    move-object/from16 v34, v29

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v25

    .line 1637
    invoke-virtual/range {v34 .. v35}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1639
    move/from16 v32, v23

    move-object/from16 v33, v2

    move-object/from16 v34, v25

    move/from16 v35, v24

    invoke-virtual/range {v33 .. v35}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v23, v32

    goto/16 :goto_2

    .line 1595
    .end local v9    # "childTop":I
    :sswitch_2
    move/from16 v32, v8

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 1596
    .restart local v9    # "childTop":I
    move/from16 v32, v28

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 1597
    move/from16 v32, v9

    move-object/from16 v33, v18

    const/16 v34, 0x1

    aget v33, v33, v34

    move/from16 v34, v28

    sub-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v9, v32

    goto/16 :goto_3

    .line 1613
    .end local v9    # "childTop":I
    :sswitch_3
    move/from16 v32, v8

    move/from16 v33, v13

    move/from16 v34, v27

    sub-int v33, v33, v34

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    add-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1615
    .restart local v9    # "childTop":I
    goto/16 :goto_3

    .line 1618
    .end local v9    # "childTop":I
    :sswitch_4
    move/from16 v32, v12

    move/from16 v33, v27

    sub-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1619
    .restart local v9    # "childTop":I
    move/from16 v32, v28

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 1620
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v33, v28

    sub-int v32, v32, v33

    move/from16 v31, v32

    .line 1621
    .local v31, "descent":I
    move/from16 v32, v9

    move-object/from16 v33, v19

    const/16 v34, 0x2

    aget v33, v33, v34

    move/from16 v34, v31

    sub-int v33, v33, v34

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1622
    goto/16 :goto_3

    .line 1642
    .end local v9    # "childTop":I
    .end local v24    # "childIndex":I
    .end local v25    # "child":Landroid/view/View;
    .end local v26    # "childWidth":I
    .end local v27    # "childHeight":I
    .end local v28    # "childBaseline":I
    .end local v29    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v30    # "gravity":I
    .end local v31    # "descent":I
    :cond_7
    return-void

    .line 1545
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1593
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 30

    .prologue
    .line 1426
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move/from16 v3, p1

    .local v3, "left":I
    move/from16 v4, p2

    .local v4, "top":I
    move/from16 v5, p3

    .local v5, "right":I
    move/from16 v6, p4

    .local v6, "bottom":I
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v24

    move/from16 v7, v24

    .line 1432
    .local v7, "paddingLeft":I
    move/from16 v24, v5

    move/from16 v25, v3

    sub-int v24, v24, v25

    move/from16 v10, v24

    .line 1433
    .local v10, "width":I
    move/from16 v24, v10

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v11, v24

    .line 1436
    .local v11, "childRight":I
    move/from16 v24, v10

    move/from16 v25, v7

    sub-int v24, v24, v25

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v12, v24

    .line 1438
    .local v12, "childSpace":I
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v24

    move/from16 v13, v24

    .line 1440
    .local v13, "count":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v24, v0

    const/16 v25, 0x70

    and-int/lit8 v24, v24, 0x70

    move/from16 v14, v24

    .line 1441
    .local v14, "majorGravity":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v24, v0

    const v25, 0x800007

    and-int v24, v24, v25

    move/from16 v15, v24

    .line 1443
    .local v15, "minorGravity":I
    move/from16 v24, v14

    sparse-switch v24, :sswitch_data_0

    .line 1456
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v8, v24

    .line 1460
    .local v8, "childTop":I
    :goto_0
    const/16 v24, 0x0

    move/from16 v16, v24

    .local v16, "i":I
    :goto_1
    move/from16 v24, v16

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 1461
    move-object/from16 v24, v2

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v17, v24

    .line 1462
    .local v17, "child":Landroid/view/View;
    move-object/from16 v24, v17

    if-nez v24, :cond_1

    .line 1463
    move/from16 v24, v8

    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1460
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1446
    .end local v8    # "childTop":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    :sswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v25, v6

    add-int v24, v24, v25

    move/from16 v25, v4

    sub-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v8, v24

    .line 1447
    .restart local v8    # "childTop":I
    goto :goto_0

    .line 1451
    .end local v8    # "childTop":I
    :sswitch_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v25, v6

    move/from16 v26, v4

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1452
    .restart local v8    # "childTop":I
    goto :goto_0

    .line 1464
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    :cond_1
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 1465
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v18, v24

    .line 1466
    .local v18, "childWidth":I
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move/from16 v19, v24

    .line 1468
    .local v19, "childHeight":I
    move-object/from16 v24, v17

    .line 1469
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v20, v24

    .line 1471
    .local v20, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v24, v0

    move/from16 v21, v24

    .line 1472
    .local v21, "gravity":I
    move/from16 v24, v21

    if-gez v24, :cond_2

    .line 1473
    move/from16 v24, v15

    move/from16 v21, v24

    .line 1475
    :cond_2
    move-object/from16 v24, v2

    invoke-static/range {v24 .. v24}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v24

    move/from16 v22, v24

    .line 1476
    .local v22, "layoutDirection":I
    move/from16 v24, v21

    move/from16 v25, v22

    invoke-static/range {v24 .. v25}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v24

    move/from16 v23, v24

    .line 1478
    .local v23, "absoluteGravity":I
    move/from16 v24, v23

    const/16 v25, 0x7

    and-int/lit8 v24, v24, 0x7

    sparse-switch v24, :sswitch_data_1

    .line 1490
    move/from16 v24, v7

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v9, v24

    .line 1494
    .local v9, "childLeft":I
    :goto_3
    move-object/from16 v24, v2

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1495
    move/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1498
    :cond_3
    move/from16 v24, v8

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1499
    move-object/from16 v24, v2

    move-object/from16 v25, v17

    move/from16 v26, v9

    move/from16 v27, v8

    move-object/from16 v28, v2

    move-object/from16 v29, v17

    invoke-virtual/range {v28 .. v29}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v28

    add-int v27, v27, v28

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-direct/range {v24 .. v29}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1501
    move/from16 v24, v8

    move/from16 v25, v19

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1503
    move/from16 v24, v16

    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v16

    invoke-virtual/range {v25 .. v27}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v16, v24

    goto/16 :goto_2

    .line 1480
    .end local v9    # "childLeft":I
    :sswitch_2
    move/from16 v24, v7

    move/from16 v25, v12

    move/from16 v26, v18

    sub-int v25, v25, v26

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v9, v24

    .line 1482
    .restart local v9    # "childLeft":I
    goto/16 :goto_3

    .line 1485
    .end local v9    # "childLeft":I
    :sswitch_3
    move/from16 v24, v11

    move/from16 v25, v18

    sub-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v9, v24

    .line 1486
    .restart local v9    # "childLeft":I
    goto/16 :goto_3

    .line 1506
    .end local v9    # "childLeft":I
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "childWidth":I
    .end local v19    # "childHeight":I
    .end local v20    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v21    # "gravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "absoluteGravity":I
    :cond_4
    return-void

    .line 1443
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1478
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 13

    .prologue
    .line 1377
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "childIndex":I
    move/from16 v3, p3

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p4

    .local v4, "totalWidth":I
    move/from16 v5, p5

    .local v5, "heightMeasureSpec":I
    move/from16 v6, p6

    .local v6, "totalHeight":I
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method measureHorizontal(II)V
    .locals 49

    .prologue
    .line 928
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 929
    const/16 v36, 0x0

    move/from16 v5, v36

    .line 930
    .local v5, "maxHeight":I
    const/16 v36, 0x0

    move/from16 v6, v36

    .line 931
    .local v6, "childState":I
    const/16 v36, 0x0

    move/from16 v7, v36

    .line 932
    .local v7, "alternativeMaxHeight":I
    const/16 v36, 0x0

    move/from16 v8, v36

    .line 933
    .local v8, "weightedMaxHeight":I
    const/16 v36, 0x1

    move/from16 v9, v36

    .line 934
    .local v9, "allFillParent":Z
    const/16 v36, 0x0

    move/from16 v10, v36

    .line 936
    .local v10, "totalWeight":F
    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v36

    move/from16 v11, v36

    .line 938
    .local v11, "count":I
    move/from16 v36, v3

    invoke-static/range {v36 .. v36}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    move/from16 v12, v36

    .line 939
    .local v12, "widthMode":I
    move/from16 v36, v4

    invoke-static/range {v36 .. v36}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    move/from16 v13, v36

    .line 941
    .local v13, "heightMode":I
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 942
    .local v14, "matchHeight":Z
    const/16 v36, 0x0

    move/from16 v15, v36

    .line 944
    .local v15, "skippedMeasure":Z
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v36, v0

    if-nez v36, :cond_1

    .line 945
    :cond_0
    move-object/from16 v36, v2

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 946
    move-object/from16 v36, v2

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 949
    :cond_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v36, v0

    move-object/from16 v16, v36

    .line 950
    .local v16, "maxAscent":[I
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v36, v0

    move-object/from16 v17, v36

    .line 952
    .local v17, "maxDescent":[I
    move-object/from16 v36, v16

    const/16 v37, 0x0

    move-object/from16 v38, v16

    const/16 v39, 0x1

    move-object/from16 v40, v16

    const/16 v41, 0x2

    move-object/from16 v42, v16

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 953
    move-object/from16 v36, v17

    const/16 v37, 0x0

    move-object/from16 v38, v17

    const/16 v39, 0x1

    move-object/from16 v40, v17

    const/16 v41, 0x2

    move-object/from16 v42, v17

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 955
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v36, v0

    move/from16 v18, v36

    .line 956
    .local v18, "baselineAligned":Z
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v36, v0

    move/from16 v19, v36

    .line 958
    .local v19, "useLargestChild":Z
    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v36, 0x1

    :goto_0
    move/from16 v20, v36

    .line 960
    .local v20, "isExactly":Z
    const/16 v36, 0x0

    move/from16 v21, v36

    .line 963
    .local v21, "largestChildWidth":I
    const/16 v36, 0x0

    move/from16 v22, v36

    .local v22, "i":I
    :goto_1
    move/from16 v36, v22

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 964
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v23, v36

    .line 966
    .local v23, "child":Landroid/view/View;
    move-object/from16 v36, v23

    if-nez v36, :cond_3

    .line 967
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move/from16 v39, v22

    invoke-virtual/range {v38 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 968
    .line 963
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 958
    .end local v20    # "isExactly":Z
    .end local v21    # "largestChildWidth":I
    .end local v22    # "i":I
    .end local v23    # "child":Landroid/view/View;
    :cond_2
    const/16 v36, 0x0

    goto :goto_0

    .line 971
    .restart local v20    # "isExactly":Z
    .restart local v21    # "largestChildWidth":I
    .restart local v22    # "i":I
    .restart local v23    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 972
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    .line 973
    goto :goto_2

    .line 976
    :cond_4
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 977
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 980
    :cond_5
    move-object/from16 v36, v23

    .line 981
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v36

    .line 983
    .local v24, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v36, v10

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v10, v36

    .line 985
    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_b

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_b

    .line 989
    move/from16 v36, v20

    if-eqz v36, :cond_9

    .line 990
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v24

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1002
    :goto_3
    move/from16 v36, v18

    if-eqz v36, :cond_a

    .line 1003
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    move/from16 v25, v36

    .line 1004
    .local v25, "freeSpec":I
    move-object/from16 v36, v23

    move/from16 v37, v25

    move/from16 v38, v25

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 1005
    .line 1047
    .end local v25    # "freeSpec":I
    :cond_6
    :goto_4
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 1048
    .local v25, "matchHeightLocally":Z
    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 1052
    const/16 v36, 0x1

    move/from16 v14, v36

    .line 1053
    const/16 v36, 0x1

    move/from16 v25, v36

    .line 1056
    :cond_7
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v36, v0

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v26, v36

    .line 1057
    .local v26, "margin":I
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    move/from16 v37, v26

    add-int v36, v36, v37

    move/from16 v27, v36

    .line 1058
    .local v27, "childHeight":I
    move/from16 v36, v6

    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredState()I

    move-result v37

    invoke-static/range {v36 .. v37}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v36

    move/from16 v6, v36

    .line 1060
    move/from16 v36, v18

    if-eqz v36, :cond_8

    .line 1061
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    move-result v36

    move/from16 v28, v36

    .line 1062
    .local v28, "childBaseline":I
    move/from16 v36, v28

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_8

    .line 1065
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    if-gez v36, :cond_10

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v36, v0

    :goto_5
    const/16 v37, 0x70

    and-int/lit8 v36, v36, 0x70

    move/from16 v29, v36

    .line 1067
    .local v29, "gravity":I
    move/from16 v36, v29

    const/16 v37, 0x4

    shr-int/lit8 v36, v36, 0x4

    const/16 v37, -0x2

    and-int/lit8 v36, v36, -0x2

    const/16 v37, 0x1

    shr-int/lit8 v36, v36, 0x1

    move/from16 v30, v36

    .line 1070
    .local v30, "index":I
    move-object/from16 v36, v16

    move/from16 v37, v30

    move-object/from16 v38, v16

    move/from16 v39, v30

    aget v38, v38, v39

    move/from16 v39, v28

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1071
    move-object/from16 v36, v17

    move/from16 v37, v30

    move-object/from16 v38, v17

    move/from16 v39, v30

    aget v38, v38, v39

    move/from16 v39, v27

    move/from16 v40, v28

    sub-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1075
    .end local v28    # "childBaseline":I
    .end local v29    # "gravity":I
    .end local v30    # "index":I
    :cond_8
    move/from16 v36, v5

    move/from16 v37, v27

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1077
    move/from16 v36, v9

    if-eqz v36, :cond_11

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    const/16 v36, 0x1

    :goto_6
    move/from16 v9, v36

    .line 1078
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_13

    .line 1083
    move/from16 v36, v8

    move/from16 v37, v25

    if-eqz v37, :cond_12

    move/from16 v37, v26

    :goto_7
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v8, v36

    .line 1090
    :goto_8
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    goto/16 :goto_2

    .line 992
    .end local v25    # "matchHeightLocally":Z
    .end local v26    # "margin":I
    .end local v27    # "childHeight":I
    :cond_9
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v25, v36

    .line 993
    .local v25, "totalLength":I
    move-object/from16 v36, v2

    move/from16 v37, v25

    move/from16 v38, v25

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_3

    .line 1006
    .end local v25    # "totalLength":I
    :cond_a
    const/16 v36, 0x1

    move/from16 v15, v36

    goto/16 :goto_4

    .line 1009
    :cond_b
    const/high16 v36, -0x80000000

    move/from16 v25, v36

    .line 1011
    .local v25, "oldWidth":I
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_c

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_c

    .line 1016
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 1017
    move-object/from16 v36, v24

    const/16 v37, -0x2

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1024
    :cond_c
    move-object/from16 v36, v2

    move-object/from16 v37, v23

    move/from16 v38, v22

    move/from16 v39, v3

    move/from16 v40, v10

    const/16 v41, 0x0

    cmpl-float v40, v40, v41

    if-nez v40, :cond_e

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    :goto_9
    move/from16 v41, v4

    const/16 v42, 0x0

    invoke-virtual/range {v36 .. v42}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1028
    move/from16 v36, v25

    const/high16 v37, -0x80000000

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_d

    .line 1029
    move-object/from16 v36, v24

    move/from16 v37, v25

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1032
    :cond_d
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    move/from16 v26, v36

    .line 1033
    .local v26, "childWidth":I
    move/from16 v36, v20

    if-eqz v36, :cond_f

    .line 1034
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v38, v26

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    .line 1035
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    :goto_a
    move/from16 v36, v19

    if-eqz v36, :cond_6

    .line 1043
    move/from16 v36, v26

    move/from16 v37, v21

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v21, v36

    goto/16 :goto_4

    .line 1024
    .end local v26    # "childWidth":I
    :cond_e
    const/16 v40, 0x0

    goto :goto_9

    .line 1037
    .restart local v26    # "childWidth":I
    :cond_f
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v27, v36

    .line 1038
    .local v27, "totalLength":I
    move-object/from16 v36, v2

    move/from16 v37, v27

    move/from16 v38, v27

    move/from16 v39, v26

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    .line 1039
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    .line 1038
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_a

    .line 1065
    .local v25, "matchHeightLocally":Z
    .local v26, "margin":I
    .local v27, "childHeight":I
    .restart local v28    # "childBaseline":I
    :cond_10
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    goto/16 :goto_5

    .line 1077
    .end local v28    # "childBaseline":I
    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_6

    .line 1083
    :cond_12
    move/from16 v37, v27

    goto/16 :goto_7

    .line 1086
    :cond_13
    move/from16 v36, v7

    move/from16 v37, v25

    if-eqz v37, :cond_14

    move/from16 v37, v26

    :goto_b
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    goto/16 :goto_8

    :cond_14
    move/from16 v37, v27

    goto :goto_b

    .line 1093
    .end local v23    # "child":Landroid/view/View;
    .end local v24    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "matchHeightLocally":Z
    .end local v26    # "margin":I
    .end local v27    # "childHeight":I
    :cond_15
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    if-lez v36, :cond_16

    move-object/from16 v36, v2

    move/from16 v37, v11

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 1094
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1099
    :cond_16
    move-object/from16 v36, v16

    const/16 v37, 0x1

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x0

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x2

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_18

    .line 1103
    :cond_17
    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x2

    aget v39, v39, v40

    .line 1105
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1104
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1103
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v22, v36

    .line 1106
    .local v22, "ascent":I
    move-object/from16 v36, v17

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v17

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x2

    aget v39, v39, v40

    .line 1108
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1107
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1106
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v23, v36

    .line 1109
    .local v23, "descent":I
    move/from16 v36, v5

    move/from16 v37, v22

    move/from16 v38, v23

    add-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1112
    .end local v22    # "ascent":I
    .end local v23    # "descent":I
    :cond_18
    move/from16 v36, v19

    if-eqz v36, :cond_1d

    move/from16 v36, v12

    const/high16 v37, -0x80000000

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    move/from16 v36, v12

    if-nez v36, :cond_1d

    .line 1114
    :cond_19
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    const/16 v36, 0x0

    move/from16 v22, v36

    .local v22, "i":I
    :goto_c
    move/from16 v36, v22

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 1117
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v23, v36

    .line 1119
    .local v23, "child":Landroid/view/View;
    move-object/from16 v36, v23

    if-nez v36, :cond_1a

    .line 1120
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move/from16 v39, v22

    invoke-virtual/range {v38 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1121
    .line 1116
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 1124
    :cond_1a
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1b

    .line 1125
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    .line 1126
    goto :goto_d

    .line 1129
    :cond_1b
    move-object/from16 v36, v23

    .line 1130
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v36

    .line 1131
    .restart local v24    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v36, v20

    if-eqz v36, :cond_1c

    .line 1132
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v38, v21

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    .line 1133
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d

    .line 1135
    :cond_1c
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v25, v36

    .line 1136
    .local v25, "totalLength":I
    move-object/from16 v36, v2

    move/from16 v37, v25

    move/from16 v38, v25

    move/from16 v39, v21

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    .line 1137
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    .line 1136
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_d

    .line 1143
    .end local v22    # "i":I
    .end local v23    # "child":Landroid/view/View;
    .end local v24    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "totalLength":I
    :cond_1d
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v38

    move-object/from16 v39, v2

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v22, v36

    .line 1148
    .local v22, "widthSize":I
    move/from16 v36, v22

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v22, v36

    .line 1151
    move/from16 v36, v22

    move/from16 v37, v3

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v36

    move/from16 v23, v36

    .line 1152
    .local v23, "widthSizeAndState":I
    move/from16 v36, v23

    const v37, 0xffffff

    and-int v36, v36, v37

    move/from16 v22, v36

    .line 1157
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v24, v36

    .line 1158
    .local v24, "delta":I
    move/from16 v36, v15

    if-nez v36, :cond_1e

    move/from16 v36, v24

    if-eqz v36, :cond_31

    move/from16 v36, v10

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_31

    .line 1159
    :cond_1e
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_20

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v36, v0

    :goto_e
    move/from16 v25, v36

    .line 1161
    .local v25, "weightSum":F
    move-object/from16 v36, v16

    const/16 v37, 0x0

    move-object/from16 v38, v16

    const/16 v39, 0x1

    move-object/from16 v40, v16

    const/16 v41, 0x2

    move-object/from16 v42, v16

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 1162
    move-object/from16 v36, v17

    const/16 v37, 0x0

    move-object/from16 v38, v17

    const/16 v39, 0x1

    move-object/from16 v40, v17

    const/16 v41, 0x2

    move-object/from16 v42, v17

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 1163
    const/16 v36, -0x1

    move/from16 v5, v36

    .line 1165
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1167
    const/16 v36, 0x0

    move/from16 v26, v36

    .local v26, "i":I
    :goto_f
    move/from16 v36, v26

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_2c

    .line 1168
    move-object/from16 v36, v2

    move/from16 v37, v26

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v27, v36

    .line 1170
    .local v27, "child":Landroid/view/View;
    move-object/from16 v36, v27

    if-eqz v36, :cond_1f

    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 1171
    .line 1167
    :cond_1f
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1159
    .end local v25    # "weightSum":F
    .end local v26    # "i":I
    .end local v27    # "child":Landroid/view/View;
    :cond_20
    move/from16 v36, v10

    goto/16 :goto_e

    .line 1174
    .restart local v25    # "weightSum":F
    .restart local v26    # "i":I
    .restart local v27    # "child":Landroid/view/View;
    :cond_21
    move-object/from16 v36, v27

    .line 1175
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v28, v36

    .line 1177
    .local v28, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    move/from16 v29, v36

    .line 1178
    .local v29, "childExtra":F
    move/from16 v36, v29

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_24

    .line 1180
    move/from16 v36, v29

    move/from16 v37, v24

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v37, v25

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v30, v36

    .line 1181
    .local v30, "share":I
    move/from16 v36, v25

    move/from16 v37, v29

    sub-float v36, v36, v37

    move/from16 v25, v36

    .line 1182
    move/from16 v36, v24

    move/from16 v37, v30

    sub-int v36, v36, v37

    move/from16 v24, v36

    .line 1184
    move/from16 v36, v4

    move-object/from16 v37, v2

    .line 1186
    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v38, v0

    .line 1184
    invoke-static/range {v36 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v36

    move/from16 v31, v36

    .line 1191
    .local v31, "childHeightMeasureSpec":I
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_22

    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_25

    .line 1194
    :cond_22
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    move/from16 v37, v30

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 1195
    .local v32, "childWidth":I
    move/from16 v36, v32

    if-gez v36, :cond_23

    .line 1196
    const/16 v36, 0x0

    move/from16 v32, v36

    .line 1199
    :cond_23
    move-object/from16 v36, v27

    move/from16 v37, v32

    const/high16 v38, 0x40000000    # 2.0f

    .line 1200
    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move/from16 v38, v31

    .line 1199
    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 1202
    .line 1210
    .end local v32    # "childWidth":I
    :goto_11
    move/from16 v36, v6

    move-object/from16 v37, v27

    .line 1211
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredState()I

    move-result v37

    const/high16 v38, -0x1000000

    and-int v37, v37, v38

    .line 1210
    invoke-static/range {v36 .. v37}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v36

    move/from16 v6, v36

    .line 1214
    .end local v30    # "share":I
    .end local v31    # "childHeightMeasureSpec":I
    :cond_24
    move/from16 v36, v20

    if-eqz v36, :cond_27

    .line 1215
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v27

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v27

    .line 1216
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    :goto_12
    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_28

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_28

    const/16 v36, 0x1

    :goto_13
    move/from16 v30, v36

    .line 1226
    .local v30, "matchHeightLocally":Z
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v36, v0

    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 1227
    .local v31, "margin":I
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    move/from16 v37, v31

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 1228
    .local v32, "childHeight":I
    move/from16 v36, v5

    move/from16 v37, v32

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1229
    move/from16 v36, v7

    move/from16 v37, v30

    if-eqz v37, :cond_29

    move/from16 v37, v31

    :goto_14
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    .line 1232
    move/from16 v36, v9

    if-eqz v36, :cond_2a

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2a

    const/16 v36, 0x1

    :goto_15
    move/from16 v9, v36

    .line 1234
    move/from16 v36, v18

    if-eqz v36, :cond_1f

    .line 1235
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    move-result v36

    move/from16 v33, v36

    .line 1236
    .local v33, "childBaseline":I
    move/from16 v36, v33

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1f

    .line 1238
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    if-gez v36, :cond_2b

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v36, v0

    :goto_16
    const/16 v37, 0x70

    and-int/lit8 v36, v36, 0x70

    move/from16 v34, v36

    .line 1240
    .local v34, "gravity":I
    move/from16 v36, v34

    const/16 v37, 0x4

    shr-int/lit8 v36, v36, 0x4

    const/16 v37, -0x2

    and-int/lit8 v36, v36, -0x2

    const/16 v37, 0x1

    shr-int/lit8 v36, v36, 0x1

    move/from16 v35, v36

    .line 1243
    .local v35, "index":I
    move-object/from16 v36, v16

    move/from16 v37, v35

    move-object/from16 v38, v16

    move/from16 v39, v35

    aget v38, v38, v39

    move/from16 v39, v33

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1244
    move-object/from16 v36, v17

    move/from16 v37, v35

    move-object/from16 v38, v17

    move/from16 v39, v35

    aget v38, v38, v39

    move/from16 v39, v32

    move/from16 v40, v33

    sub-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    goto/16 :goto_10

    .line 1204
    .end local v32    # "childHeight":I
    .end local v33    # "childBaseline":I
    .end local v34    # "gravity":I
    .end local v35    # "index":I
    .local v30, "share":I
    .local v31, "childHeightMeasureSpec":I
    :cond_25
    move-object/from16 v36, v27

    move/from16 v37, v30

    if-lez v37, :cond_26

    move/from16 v37, v30

    :goto_17
    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move/from16 v38, v31

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    :cond_26
    const/16 v37, 0x0

    goto :goto_17

    .line 1218
    .end local v30    # "share":I
    .end local v31    # "childHeightMeasureSpec":I
    :cond_27
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v30, v36

    .line 1219
    .local v30, "totalLength":I
    move-object/from16 v36, v2

    move/from16 v37, v30

    move/from16 v38, v30

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v27

    .line 1220
    invoke-virtual/range {v39 .. v40}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    .line 1219
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_12

    .line 1223
    .end local v30    # "totalLength":I
    :cond_28
    const/16 v36, 0x0

    goto/16 :goto_13

    .line 1229
    .local v30, "matchHeightLocally":Z
    .local v31, "margin":I
    .restart local v32    # "childHeight":I
    :cond_29
    move/from16 v37, v32

    goto/16 :goto_14

    .line 1232
    :cond_2a
    const/16 v36, 0x0

    goto/16 :goto_15

    .line 1238
    .restart local v33    # "childBaseline":I
    :cond_2b
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    goto/16 :goto_16

    .line 1251
    .end local v27    # "child":Landroid/view/View;
    .end local v28    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v29    # "childExtra":F
    .end local v30    # "matchHeightLocally":Z
    .end local v31    # "margin":I
    .end local v32    # "childHeight":I
    .end local v33    # "childBaseline":I
    :cond_2c
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v38

    move-object/from16 v39, v2

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1256
    move-object/from16 v36, v16

    const/16 v37, 0x1

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x0

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x2

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2e

    .line 1260
    :cond_2d
    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x2

    aget v39, v39, v40

    .line 1262
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1261
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1260
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v26, v36

    .line 1263
    .local v26, "ascent":I
    move-object/from16 v36, v17

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v17

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x2

    aget v39, v39, v40

    .line 1265
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1264
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1263
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v27, v36

    .line 1266
    .local v27, "descent":I
    move/from16 v36, v5

    move/from16 v37, v26

    move/from16 v38, v27

    add-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1268
    .line 1295
    .end local v25    # "weightSum":F
    .end local v26    # "ascent":I
    .end local v27    # "descent":I
    :cond_2e
    move/from16 v36, v9

    if-nez v36, :cond_2f

    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2f

    .line 1296
    move/from16 v36, v7

    move/from16 v5, v36

    .line 1299
    :cond_2f
    move/from16 v36, v5

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    add-int v36, v36, v37

    move/from16 v5, v36

    .line 1302
    move/from16 v36, v5

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1304
    move-object/from16 v36, v2

    move/from16 v37, v23

    move/from16 v38, v6

    const/high16 v39, -0x1000000

    and-int v38, v38, v39

    or-int v37, v37, v38

    move/from16 v38, v5

    move/from16 v39, v4

    move/from16 v40, v6

    const/16 v41, 0x10

    shl-int/lit8 v40, v40, 0x10

    .line 1305
    invoke-static/range {v38 .. v40}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v38

    .line 1304
    invoke-virtual/range {v36 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1308
    move/from16 v36, v14

    if-eqz v36, :cond_30

    .line 1309
    move-object/from16 v36, v2

    move/from16 v37, v11

    move/from16 v38, v3

    invoke-direct/range {v36 .. v38}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1311
    :cond_30
    return-void

    .line 1269
    :cond_31
    move/from16 v36, v7

    move/from16 v37, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    .line 1273
    move/from16 v36, v19

    if-eqz v36, :cond_2e

    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2e

    .line 1274
    const/16 v36, 0x0

    move/from16 v25, v36

    .local v25, "i":I
    :goto_18
    move/from16 v36, v25

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_2e

    .line 1275
    move-object/from16 v36, v2

    move/from16 v37, v25

    invoke-virtual/range {v36 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v26, v36

    .line 1277
    .local v26, "child":Landroid/view/View;
    move-object/from16 v36, v26

    if-eqz v36, :cond_32

    move-object/from16 v36, v26

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_33

    .line 1278
    .line 1274
    :cond_32
    :goto_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    .line 1281
    :cond_33
    move-object/from16 v36, v26

    .line 1282
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v27, v36

    .line 1284
    .local v27, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    move/from16 v28, v36

    .line 1285
    .local v28, "childExtra":F
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_32

    .line 1286
    move-object/from16 v36, v26

    move/from16 v37, v21

    const/high16 v38, 0x40000000    # 2.0f

    .line 1287
    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move-object/from16 v38, v26

    .line 1288
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    .line 1286
    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 3

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "childIndex":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method

.method measureVertical(II)V
    .locals 40

    .prologue
    .line 595
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 596
    const/16 v31, 0x0

    move/from16 v5, v31

    .line 597
    .local v5, "maxWidth":I
    const/16 v31, 0x0

    move/from16 v6, v31

    .line 598
    .local v6, "childState":I
    const/16 v31, 0x0

    move/from16 v7, v31

    .line 599
    .local v7, "alternativeMaxWidth":I
    const/16 v31, 0x0

    move/from16 v8, v31

    .line 600
    .local v8, "weightedMaxWidth":I
    const/16 v31, 0x1

    move/from16 v9, v31

    .line 601
    .local v9, "allFillParent":Z
    const/16 v31, 0x0

    move/from16 v10, v31

    .line 603
    .local v10, "totalWeight":F
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v31

    move/from16 v11, v31

    .line 605
    .local v11, "count":I
    move/from16 v31, v3

    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    move/from16 v12, v31

    .line 606
    .local v12, "widthMode":I
    move/from16 v31, v4

    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    move/from16 v13, v31

    .line 608
    .local v13, "heightMode":I
    const/16 v31, 0x0

    move/from16 v14, v31

    .line 609
    .local v14, "matchWidth":Z
    const/16 v31, 0x0

    move/from16 v15, v31

    .line 611
    .local v15, "skippedMeasure":Z
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v31, v0

    move/from16 v16, v31

    .line 612
    .local v16, "baselineChildIndex":I
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v31, v0

    move/from16 v17, v31

    .line 614
    .local v17, "useLargestChild":Z
    const/16 v31, 0x0

    move/from16 v18, v31

    .line 617
    .local v18, "largestChildHeight":I
    const/16 v31, 0x0

    move/from16 v19, v31

    .local v19, "i":I
    :goto_0
    move/from16 v31, v19

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 618
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v20, v31

    .line 620
    .local v20, "child":Landroid/view/View;
    move-object/from16 v31, v20

    if-nez v31, :cond_0

    .line 621
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 622
    .line 617
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 625
    :cond_0
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 626
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    .line 627
    goto :goto_1

    .line 630
    :cond_1
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 631
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 634
    :cond_2
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v21, v31

    .line 636
    .local v21, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v31, v10

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v10, v31

    .line 638
    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_5

    .line 642
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v22, v31

    .line 643
    .local v22, "totalLength":I
    move-object/from16 v31, v2

    move/from16 v32, v22

    move/from16 v33, v22

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    const/16 v31, 0x1

    move/from16 v15, v31

    .line 683
    .end local v22    # "totalLength":I
    :cond_3
    :goto_2
    move/from16 v31, v16

    if-ltz v31, :cond_4

    move/from16 v31, v16

    move/from16 v32, v19

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 684
    move-object/from16 v31, v2

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 690
    :cond_4
    move/from16 v31, v19

    move/from16 v32, v16

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_9

    .line 691
    new-instance v31, Ljava/lang/RuntimeException;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    const-string/jumbo v33, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 646
    :cond_5
    const/high16 v31, -0x80000000

    move/from16 v22, v31

    .line 648
    .local v22, "oldHeight":I
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_6

    .line 653
    const/16 v31, 0x0

    move/from16 v22, v31

    .line 654
    move-object/from16 v31, v21

    const/16 v32, -0x2

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 661
    :cond_6
    move-object/from16 v31, v2

    move-object/from16 v32, v20

    move/from16 v33, v19

    move/from16 v34, v3

    const/16 v35, 0x0

    move/from16 v36, v4

    move/from16 v37, v10

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-nez v37, :cond_8

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    :goto_3
    invoke-virtual/range {v31 .. v37}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 665
    move/from16 v31, v22

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 666
    move-object/from16 v31, v21

    move/from16 v32, v22

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 669
    :cond_7
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move/from16 v23, v31

    .line 670
    .local v23, "childHeight":I
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v24, v31

    .line 671
    .local v24, "totalLength":I
    move-object/from16 v31, v2

    move/from16 v32, v24

    move/from16 v33, v24

    move/from16 v34, v23

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v20

    .line 672
    invoke-virtual/range {v34 .. v35}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    .line 671
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 674
    move/from16 v31, v17

    if-eqz v31, :cond_3

    .line 675
    move/from16 v31, v23

    move/from16 v32, v18

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v18, v31

    goto/16 :goto_2

    .line 661
    .end local v23    # "childHeight":I
    .end local v24    # "totalLength":I
    :cond_8
    const/16 v37, 0x0

    goto :goto_3

    .line 697
    .end local v22    # "oldHeight":I
    :cond_9
    const/16 v31, 0x0

    move/from16 v22, v31

    .line 698
    .local v22, "matchWidthLocally":Z
    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 703
    const/16 v31, 0x1

    move/from16 v14, v31

    .line 704
    const/16 v31, 0x1

    move/from16 v22, v31

    .line 707
    :cond_a
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v23, v31

    .line 708
    .local v23, "margin":I
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move/from16 v32, v23

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 709
    .local v24, "measuredWidth":I
    move/from16 v31, v5

    move/from16 v32, v24

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 710
    move/from16 v31, v6

    move-object/from16 v32, v20

    .line 711
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredState()I

    move-result v32

    .line 710
    invoke-static/range {v31 .. v32}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v31

    move/from16 v6, v31

    .line 713
    move/from16 v31, v9

    if-eqz v31, :cond_b

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/16 v31, 0x1

    :goto_4
    move/from16 v9, v31

    .line 714
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

    .line 719
    move/from16 v31, v8

    move/from16 v32, v22

    if-eqz v32, :cond_c

    move/from16 v32, v23

    :goto_5
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v8, v31

    .line 726
    :goto_6
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    goto/16 :goto_1

    .line 713
    :cond_b
    const/16 v31, 0x0

    goto :goto_4

    .line 719
    :cond_c
    move/from16 v32, v24

    goto :goto_5

    .line 722
    :cond_d
    move/from16 v31, v7

    move/from16 v32, v22

    if-eqz v32, :cond_e

    move/from16 v32, v23

    :goto_7
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    goto :goto_6

    :cond_e
    move/from16 v32, v24

    goto :goto_7

    .line 729
    .end local v20    # "child":Landroid/view/View;
    .end local v21    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v22    # "matchWidthLocally":Z
    .end local v23    # "margin":I
    .end local v24    # "measuredWidth":I
    :cond_f
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    if-lez v31, :cond_10

    move-object/from16 v31, v2

    move/from16 v32, v11

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 730
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 733
    :cond_10
    move/from16 v31, v17

    if-eqz v31, :cond_14

    move/from16 v31, v13

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    move/from16 v31, v13

    if-nez v31, :cond_14

    .line 735
    :cond_11
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    const/16 v31, 0x0

    move/from16 v19, v31

    :goto_8
    move/from16 v31, v19

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    .line 738
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v20, v31

    .line 740
    .restart local v20    # "child":Landroid/view/View;
    move-object/from16 v31, v20

    if-nez v31, :cond_12

    .line 741
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 742
    .line 737
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 745
    :cond_12
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 746
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    .line 747
    goto :goto_9

    .line 750
    :cond_13
    move-object/from16 v31, v20

    .line 751
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v21, v31

    .line 753
    .restart local v21    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v22, v31

    .line 754
    .local v22, "totalLength":I
    move-object/from16 v31, v2

    move/from16 v32, v22

    move/from16 v33, v22

    move/from16 v34, v18

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v20

    .line 755
    invoke-virtual/range {v34 .. v35}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    .line 754
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_9

    .line 760
    .end local v20    # "child":Landroid/view/View;
    .end local v21    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v22    # "totalLength":I
    :cond_14
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 762
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v19, v31

    .line 765
    .local v19, "heightSize":I
    move/from16 v31, v19

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v19, v31

    .line 768
    move/from16 v31, v19

    move/from16 v32, v4

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v31

    move/from16 v20, v31

    .line 769
    .local v20, "heightSizeAndState":I
    move/from16 v31, v20

    const v32, 0xffffff

    and-int v31, v31, v32

    move/from16 v19, v31

    .line 774
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v21, v31

    .line 775
    .local v21, "delta":I
    move/from16 v31, v15

    if-nez v31, :cond_15

    move/from16 v31, v21

    if-eqz v31, :cond_24

    move/from16 v31, v10

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_24

    .line 776
    :cond_15
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_16

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v31, v0

    :goto_a
    move/from16 v22, v31

    .line 778
    .local v22, "weightSum":F
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 780
    const/16 v31, 0x0

    move/from16 v23, v31

    .local v23, "i":I
    :goto_b
    move/from16 v31, v23

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_20

    .line 781
    move-object/from16 v31, v2

    move/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v24, v31

    .line 783
    .local v24, "child":Landroid/view/View;
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 784
    .line 780
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 776
    .end local v22    # "weightSum":F
    .end local v23    # "i":I
    .end local v24    # "child":Landroid/view/View;
    :cond_16
    move/from16 v31, v10

    goto :goto_a

    .line 787
    .restart local v22    # "weightSum":F
    .restart local v23    # "i":I
    .restart local v24    # "child":Landroid/view/View;
    :cond_17
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v25, v31

    .line 789
    .local v25, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    move/from16 v26, v31

    .line 790
    .local v26, "childExtra":F
    move/from16 v31, v26

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_1a

    .line 792
    move/from16 v31, v26

    move/from16 v32, v21

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v32, v22

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v27, v31

    .line 793
    .local v27, "share":I
    move/from16 v31, v22

    move/from16 v32, v26

    sub-float v31, v31, v32

    move/from16 v22, v31

    .line 794
    move/from16 v31, v21

    move/from16 v32, v27

    sub-int v31, v31, v32

    move/from16 v21, v31

    .line 796
    move/from16 v31, v3

    move-object/from16 v32, v2

    .line 797
    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v33, v0

    .line 796
    invoke-static/range {v31 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v31

    move/from16 v28, v31

    .line 802
    .local v28, "childWidthMeasureSpec":I
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_18

    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 805
    :cond_18
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move/from16 v32, v27

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 806
    .local v29, "childHeight":I
    move/from16 v31, v29

    if-gez v31, :cond_19

    .line 807
    const/16 v31, 0x0

    move/from16 v29, v31

    .line 810
    :cond_19
    move-object/from16 v31, v24

    move/from16 v32, v28

    move/from16 v33, v29

    const/high16 v34, 0x40000000    # 2.0f

    .line 811
    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 810
    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    .line 812
    .line 821
    .end local v29    # "childHeight":I
    :goto_d
    move/from16 v31, v6

    move-object/from16 v32, v24

    .line 822
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredState()I

    move-result v32

    const/16 v33, -0x100

    move/from16 v0, v32

    and-int/lit16 v0, v0, -0x100

    move/from16 v32, v0

    .line 821
    invoke-static/range {v31 .. v32}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v31

    move/from16 v6, v31

    .line 826
    .end local v27    # "share":I
    .end local v28    # "childWidthMeasureSpec":I
    :cond_1a
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v27, v31

    .line 827
    .local v27, "margin":I
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move/from16 v32, v27

    add-int v31, v31, v32

    move/from16 v28, v31

    .line 828
    .local v28, "measuredWidth":I
    move/from16 v31, v5

    move/from16 v32, v28

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 830
    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1d

    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/16 v31, 0x1

    :goto_e
    move/from16 v29, v31

    .line 833
    .local v29, "matchWidthLocally":Z
    move/from16 v31, v7

    move/from16 v32, v29

    if-eqz v32, :cond_1e

    move/from16 v32, v27

    :goto_f
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    .line 836
    move/from16 v31, v9

    if-eqz v31, :cond_1f

    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    const/16 v31, 0x1

    :goto_10
    move/from16 v9, v31

    .line 838
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v30, v31

    .line 839
    .local v30, "totalLength":I
    move-object/from16 v31, v2

    move/from16 v32, v30

    move/from16 v33, v30

    move-object/from16 v34, v24

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v34

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v24

    .line 840
    invoke-virtual/range {v34 .. v35}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    .line 839
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_c

    .line 815
    .end local v29    # "matchWidthLocally":Z
    .end local v30    # "totalLength":I
    .local v27, "share":I
    .local v28, "childWidthMeasureSpec":I
    :cond_1b
    move-object/from16 v31, v24

    move/from16 v32, v28

    move/from16 v33, v27

    if-lez v33, :cond_1c

    move/from16 v33, v27

    :goto_11
    const/high16 v34, 0x40000000    # 2.0f

    .line 816
    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 815
    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    goto/16 :goto_d

    :cond_1c
    const/16 v33, 0x0

    goto :goto_11

    .line 830
    .local v27, "margin":I
    .local v28, "measuredWidth":I
    :cond_1d
    const/16 v31, 0x0

    goto/16 :goto_e

    .line 833
    .restart local v29    # "matchWidthLocally":Z
    :cond_1e
    move/from16 v32, v28

    goto :goto_f

    .line 836
    :cond_1f
    const/16 v31, 0x0

    goto :goto_10

    .line 844
    .end local v24    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "childExtra":F
    .end local v27    # "margin":I
    .end local v28    # "measuredWidth":I
    .end local v29    # "matchWidthLocally":Z
    :cond_20
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 846
    .line 876
    .end local v22    # "weightSum":F
    .end local v23    # "i":I
    :cond_21
    move/from16 v31, v9

    if-nez v31, :cond_22

    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_22

    .line 877
    move/from16 v31, v7

    move/from16 v5, v31

    .line 880
    :cond_22
    move/from16 v31, v5

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v5, v31

    .line 883
    move/from16 v31, v5

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 885
    move-object/from16 v31, v2

    move/from16 v32, v5

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v32 .. v34}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v32

    move/from16 v33, v20

    invoke-virtual/range {v31 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 888
    move/from16 v31, v14

    if-eqz v31, :cond_23

    .line 889
    move-object/from16 v31, v2

    move/from16 v32, v11

    move/from16 v33, v4

    invoke-direct/range {v31 .. v33}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 891
    :cond_23
    return-void

    .line 847
    :cond_24
    move/from16 v31, v7

    move/from16 v32, v8

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    .line 853
    move/from16 v31, v17

    if-eqz v31, :cond_21

    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_21

    .line 854
    const/16 v31, 0x0

    move/from16 v22, v31

    .local v22, "i":I
    :goto_12
    move/from16 v31, v22

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_21

    .line 855
    move-object/from16 v31, v2

    move/from16 v32, v22

    invoke-virtual/range {v31 .. v32}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v23, v31

    .line 857
    .local v23, "child":Landroid/view/View;
    move-object/from16 v31, v23

    if-eqz v31, :cond_25

    move-object/from16 v31, v23

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 858
    .line 854
    :cond_25
    :goto_13
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 861
    :cond_26
    move-object/from16 v31, v23

    .line 862
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v31

    .line 864
    .local v24, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    move/from16 v25, v31

    .line 865
    .local v25, "childExtra":F
    move/from16 v31, v25

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_25

    .line 866
    move-object/from16 v31, v23

    move-object/from16 v32, v23

    .line 867
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    move/from16 v33, v18

    const/high16 v34, 0x40000000    # 2.0f

    .line 869
    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 866
    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 284
    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 288
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 292
    :goto_1
    goto :goto_0

    .line 290
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 1756
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    move-object v2, v1

    const-class v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1762
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    move-object v2, v1

    const-class v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1764
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 1406
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "l":I
    move v3, p3

    .local v3, "t":I
    move v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1407
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 1411
    :goto_0
    return-void

    .line 1409
    :cond_0
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 551
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "baselineAligned":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 7

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 489
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "base aligned child index out of range (0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 490
    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 493
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v1, p1

    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_0

    .line 233
    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 236
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 237
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 243
    :goto_1
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 244
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 245
    goto :goto_0

    .line 240
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 241
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1

    .line 243
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setDividerPadding(I)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "padding":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move v3, v1

    if-eq v2, v3, :cond_2

    .line 1680
    move v2, v1

    const v3, 0x800007

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1681
    move v2, v1

    const v3, 0x800003

    or-int/2addr v2, v3

    move v1, v2

    .line 1684
    :cond_0
    move v2, v1

    const/16 v3, 0x70

    and-int/lit8 v2, v2, 0x70

    if-nez v2, :cond_1

    .line 1685
    move v2, v1

    const/16 v3, 0x30

    or-int/lit8 v2, v2, 0x30

    move v1, v2

    .line 1688
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1689
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1691
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 6

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "horizontalGravity":I
    move v3, v1

    const v4, 0x800007

    and-int/2addr v3, v4

    move v2, v3

    .line 1705
    .local v2, "gravity":I
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 1706
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v5, -0x800008

    and-int/2addr v4, v5

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1707
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1709
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 1654
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "orientation":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1655
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1656
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "showDividers":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq v2, v3, :cond_0

    .line 196
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 198
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 6

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "verticalGravity":I
    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 1713
    .local v2, "gravity":I
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 1714
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const/16 v5, -0x71

    and-int/lit8 v4, v4, -0x71

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1715
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 5

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    move v1, p1

    .local v1, "weightSum":F
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/LinearLayoutCompat;
    return v0
.end method
