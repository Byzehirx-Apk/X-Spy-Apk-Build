.class public Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    move-object v3, v0

    new-instance v4, Landroid/graphics/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 117
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 123
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v6, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    sget v7, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 138
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 139
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 140
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 142
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 144
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 146
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 148
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 150
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 151
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    return-void
.end method

.method private static lerp(FFF)F
    .locals 6

    .prologue
    .line 465
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "t":F
    move v3, v0

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "a":F
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    .line 326
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object/from16 v3, p1

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v4, v18

    .line 329
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 342
    :pswitch_0
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    move/from16 v5, v18

    .line 349
    .local v5, "flipToPointRight":Z
    :goto_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v6, v18

    .line 350
    .local v6, "arrowHeadBarLength":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    move/from16 v6, v18

    .line 351
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    move/from16 v7, v18

    .line 353
    .local v7, "arrowShaftLength":F
    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    .line 355
    .local v8, "arrowShaftCut":F
    const/16 v18, 0x0

    sget v19, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    move/from16 v9, v18

    .line 358
    .local v9, "rotation":F
    move/from16 v18, v5

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    :goto_2
    move/from16 v19, v5

    if-eqz v19, :cond_4

    const/high16 v19, 0x43340000    # 180.0f

    :goto_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    move/from16 v10, v18

    .line 361
    .local v10, "canvasRotate":F
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v9

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 362
    .local v11, "arrowWidth":F
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v9

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 364
    .local v12, "arrowHeight":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 365
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    move/from16 v13, v18

    .line 368
    .local v13, "topBottomBarOffset":F
    move/from16 v18, v7

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v14, v18

    .line 370
    .local v14, "arrowEdge":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v8

    add-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    .line 371
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v7

    move/from16 v20, v8

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 374
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    .line 375
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 378
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    .line 379
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 381
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 383
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 387
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v18

    move/from16 v15, v18

    .line 388
    .local v15, "barThickness":F
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v15

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 389
    .local v16, "remainingSpace":I
    move/from16 v18, v16

    const/16 v19, 0x4

    div-int/lit8 v18, v18, 0x4

    const/16 v19, 0x2

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 390
    .local v17, "yOffset":F
    move/from16 v18, v17

    move/from16 v19, v15

    const/high16 v20, 0x3fc00000    # 1.5f

    mul-float v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v20, v0

    add-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v17, v18

    .line 392
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 394
    move-object/from16 v18, v3

    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    move/from16 v20, v0

    move/from16 v21, v5

    xor-int v20, v20, v21

    if-eqz v20, :cond_5

    const/16 v20, -0x1

    :goto_4
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->rotate(F)V

    .line 398
    :cond_0
    :goto_5
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->restore()V

    .line 401
    return-void

    .line 331
    .end local v5    # "flipToPointRight":Z
    .end local v6    # "arrowHeadBarLength":F
    .end local v7    # "arrowShaftLength":F
    .end local v8    # "arrowShaftCut":F
    .end local v9    # "rotation":F
    .end local v10    # "canvasRotate":F
    .end local v11    # "arrowWidth":F
    .end local v12    # "arrowHeight":F
    .end local v13    # "topBottomBarOffset":F
    .end local v14    # "arrowEdge":F
    .end local v15    # "barThickness":F
    .end local v16    # "remainingSpace":I
    .end local v17    # "yOffset":F
    :pswitch_1
    const/16 v18, 0x0

    move/from16 v5, v18

    .line 332
    .restart local v5    # "flipToPointRight":Z
    goto/16 :goto_1

    .line 334
    .end local v5    # "flipToPointRight":Z
    :pswitch_2
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 335
    .restart local v5    # "flipToPointRight":Z
    goto/16 :goto_1

    .line 337
    .end local v5    # "flipToPointRight":Z
    :pswitch_3
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x1

    :goto_6
    move/from16 v5, v18

    .line 339
    .restart local v5    # "flipToPointRight":Z
    goto/16 :goto_1

    .line 337
    .end local v5    # "flipToPointRight":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_6

    .line 342
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 358
    .restart local v5    # "flipToPointRight":Z
    .restart local v6    # "arrowHeadBarLength":F
    .restart local v7    # "arrowShaftLength":F
    .restart local v8    # "arrowShaftCut":F
    .restart local v9    # "rotation":F
    :cond_3
    const/high16 v18, -0x3ccc0000    # -180.0f

    goto/16 :goto_2

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v10    # "canvasRotate":F
    .restart local v11    # "arrowWidth":F
    .restart local v12    # "arrowHeight":F
    .restart local v13    # "topBottomBarOffset":F
    .restart local v14    # "arrowEdge":F
    .restart local v15    # "barThickness":F
    .restart local v16    # "remainingSpace":I
    .restart local v17    # "yOffset":F
    :cond_5
    const/16 v20, 0x1

    goto :goto_4

    .line 395
    :cond_6
    move/from16 v18, v5

    if-eqz v18, :cond_0

    .line 396
    move-object/from16 v18, v3

    const/high16 v19, 0x43340000    # 180.0f

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_5

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getArrowHeadLength()F
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getArrowShaftLength()F
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getBarLength()F
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getBarThickness()F
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getGapSize()F
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return-object v0
.end method

.method public getProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public isSpinEnabled()Z
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "alpha":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 409
    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "length":F
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 161
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 162
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 164
    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "length":F
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 181
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 184
    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "length":F
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 207
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 208
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 210
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 8

    .prologue
    .line 236
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v2, p1

    .local v2, "width":F
    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    move v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    move-object v3, v1

    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 239
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 241
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "color":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 217
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 220
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 414
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 415
    return-void
.end method

.method public setDirection(I)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "direction":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq v2, v3, :cond_0

    .line 278
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 279
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 281
    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "gap":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 268
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 271
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "progress":F
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 449
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 450
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 452
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 301
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 302
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 304
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move v1, p1

    .local v1, "verticalMirror":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 319
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 320
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 322
    :cond_0
    return-void
.end method
