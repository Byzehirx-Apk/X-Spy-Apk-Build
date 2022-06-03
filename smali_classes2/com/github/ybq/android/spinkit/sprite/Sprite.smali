.class public abstract Lcom/github/ybq/android/spinkit/sprite/Sprite;
.super Landroid/graphics/drawable/Drawable;
.source "Sprite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field private animationDelay:I

.field private animator:Landroid/animation/ValueAnimator;

.field protected drawBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private pivotX:F

.field private pivotY:F

.field private rotate:I

.field private rotateX:I

.field private rotateY:I

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private translateX:I

.field private translateXPercentage:F

.field private translateY:I

.field private translateYPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 319
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "rotateX"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_X:Landroid/util/Property;

    .line 331
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$2;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "rotate"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE:Landroid/util/Property;

    .line 343
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$3;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "rotateY"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_Y:Landroid/util/Property;

    .line 356
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "translateX"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X:Landroid/util/Property;

    .line 369
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$5;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "translateY"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y:Landroid/util/Property;

    .line 381
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$6;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "translateXPercentage"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    .line 393
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$7;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "translateYPercentage"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    .line 406
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "scaleX"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE_X:Landroid/util/Property;

    .line 418
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$9;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "scaleY"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE_Y:Landroid/util/Property;

    .line 430
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "scale"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE:Landroid/util/Property;

    .line 442
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "alpha"

    invoke-direct {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    .line 27
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    .line 28
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    .line 40
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    .line 42
    move-object v1, v0

    sget-object v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 47
    move-object v1, v0

    new-instance v2, Landroid/graphics/Camera;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    .line 48
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    .line 49
    return-void
.end method


# virtual methods
.method public clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 16

    .prologue
    .line 305
    move-object/from16 v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object/from16 v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move v2, v8

    .line 306
    .local v2, "w":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    move v3, v8

    .line 307
    .local v3, "h":I
    move v8, v2

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v4, v8

    .line 308
    .local v4, "min":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    move v5, v8

    .line 309
    .local v5, "cx":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    move v6, v8

    .line 310
    .local v6, "cy":I
    move v8, v4

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v7, v8

    .line 311
    .local v7, "r":I
    new-instance v8, Landroid/graphics/Rect;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v5

    move v11, v7

    sub-int/2addr v10, v11

    move v11, v6

    move v12, v7

    sub-int/2addr v11, v12

    move v12, v5

    move v13, v7

    add-int/2addr v12, v13

    move v13, v6

    move v14, v7

    add-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v8

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateX()I

    move-result v4

    move v2, v4

    .line 284
    .local v2, "tx":I
    move v4, v2

    if-nez v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateXPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    move v2, v4

    .line 285
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateY()I

    move-result v4

    move v3, v4

    .line 286
    .local v3, "ty":I
    move v4, v3

    if-nez v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateYPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_1
    move v3, v4

    .line 287
    move-object v4, v1

    move v5, v2

    int-to-float v5, v5

    move v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScaleX()F

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScaleY()F

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 289
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotate()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 291
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateX()I

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateY()I

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 293
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->rotateX(F)V

    .line 294
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->rotateY(F)V

    .line 295
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    move-object v5, v0

    iget-object v5, v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 296
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v5

    neg-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v4

    .line 297
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v4

    .line 298
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 299
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 301
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawSelf(Landroid/graphics/Canvas;)V

    .line 302
    return-void

    .line 284
    .end local v3    # "ty":I
    :cond_2
    move v4, v2

    goto/16 :goto_0

    .line 286
    .restart local v3    # "ty":I
    :cond_3
    move v4, v3

    goto/16 :goto_1
.end method

.method protected abstract drawSelf(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getAnimationDelay()I
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public abstract getColor()I
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotX:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotY:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getRotate()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getRotateX()I
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getRotateY()I
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getTranslateX()I
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getTranslateXPercentage()F
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getTranslateY()I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public getTranslateYPercentage()F
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->invalidateSelf()V

    .line 257
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isRunning(Landroid/animation/ValueAnimator;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return v0
.end method

.method public obtainAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 202
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->onCreateAnimation()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    .line 204
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 205
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    move-object v2, v0

    iget v2, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 208
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/ValueAnimator;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v2, v3

    .line 272
    .local v2, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 273
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 241
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(Landroid/graphics/Rect;)V

    .line 242
    return-void
.end method

.method public abstract onCreateAnimation()Landroid/animation/ValueAnimator;
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    .line 224
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    .line 226
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    .line 227
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    .line 228
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    .line 229
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    .line 230
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    .line 231
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 262
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    .line 58
    return-void
.end method

.method public setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "animationDelay":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    .line 175
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    return-object v0
.end method

.method public abstract setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 181
    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 13

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "right":I
    move/from16 v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 250
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotX(F)V

    .line 251
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotY(F)V

    .line 252
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, p1

    .local v1, "drawBounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 246
    return-void
.end method

.method public setPivotX(F)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "pivotX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotX:F

    .line 158
    return-void
.end method

.method public setPivotY(F)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "pivotY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotY:F

    .line 166
    return-void
.end method

.method public setRotate(I)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "rotate":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    .line 108
    return-void
.end method

.method public setRotateX(I)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "rotateX":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    .line 142
    return-void
.end method

.method public setRotateY(I)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "rotateY":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    .line 150
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    .line 116
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScaleX(F)V

    .line 117
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScaleY(F)V

    .line 118
    return-void
.end method

.method public setScaleX(F)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "scaleX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    .line 126
    return-void
.end method

.method public setScaleY(F)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "scaleY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    .line 134
    return-void
.end method

.method public setTranslateX(I)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "translateX":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    .line 92
    return-void
.end method

.method public setTranslateXPercentage(F)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "translateXPercentage":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    .line 76
    return-void
.end method

.method public setTranslateY(I)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "translateY":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    .line 100
    return-void
.end method

.method public setTranslateYPercentage(F)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v1, p1

    .local v1, "translateYPercentage":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    .line 84
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->obtainAnimation()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->start(Landroid/animation/Animator;)V

    .line 197
    move-object v1, v0

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->invalidateSelf()V

    .line 198
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 215
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 216
    move-object v1, v0

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->reset()V

    .line 218
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 267
    return-void
.end method
