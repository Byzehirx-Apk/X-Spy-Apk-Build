.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 127
    const/4 v0, 0x2

    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "delegate":Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 136
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 137
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 140
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 141
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 142
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .locals 10

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move v2, p2

    .local v2, "color":I
    move v3, p3

    .local v3, "width":F
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 353
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v7, v7, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 355
    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 337
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 342
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    move-object v2, v0

    move-object v3, v1

    const/high16 v4, -0x1000000

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 344
    move-object v2, v0

    move-object v3, v1

    const/high16 v4, -0x10000

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 347
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 348
    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 304
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    move-object v2, v5

    .line 305
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v3, v5

    .line 306
    .local v3, "translationX":F
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v4, v5

    .line 308
    .local v4, "translationY":F
    move-object v5, v1

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    move-object v5, v1

    move v6, v3

    neg-float v6, v6

    move v7, v4

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_0
    return-void
.end method

.method private getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v1

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v3, v1

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 254
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 253
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return v0
.end method

.method private invalidateRevealInfo()V
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    sget v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 242
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 243
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 249
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 250
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 320
    .local v1, "invalidRevealInfo":Z
    sget v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v2, :cond_3

    .line 321
    move v2, v1

    if-nez v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 323
    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :goto_2
    return v0

    .line 319
    .end local v1    # "invalidRevealInfo":Z
    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 321
    .restart local v1    # "invalidRevealInfo":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 323
    :cond_3
    move v2, v1

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private shouldDrawOverlayDrawable()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldDrawScrim()Z
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_2

    .line 153
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 154
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 159
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 161
    new-instance v3, Landroid/graphics/Canvas;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 162
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    .line 169
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 170
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 172
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    sget v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v1, :cond_0

    .line 176
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 177
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 178
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v1

    .line 179
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 181
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    packed-switch v3, :pswitch_data_0

    .line 290
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported strategy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 267
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    .line 272
    :pswitch_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    move v2, v3

    .line 273
    .local v2, "count":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v3

    .line 275
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 276
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    :cond_1
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 281
    goto :goto_0

    .line 283
    .end local v2    # "count":I
    :pswitch_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 293
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 294
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v2, :cond_0

    .line 210
    const/4 v2, 0x0

    move-object v0, v2

    .line 217
    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    .local v1, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    :goto_0
    return-object v0

    .line 213
    .end local v1    # "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :cond_0
    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    move-object v1, v2

    .line 214
    .restart local v1    # "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 217
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 238
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 223
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 7
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealHelper;
    move-object v1, p1

    .local v1, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 189
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 204
    :cond_0
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    .line 205
    return-void

    .line 191
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v2, :cond_2

    .line 192
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v3, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 198
    :goto_1
    move-object v2, v1

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move-object v3, v0

    move-object v4, v1

    .line 199
    invoke-direct {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    .line 198
    invoke-static {v2, v3, v4}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    goto :goto_0

    .line 194
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    goto :goto_1
.end method
