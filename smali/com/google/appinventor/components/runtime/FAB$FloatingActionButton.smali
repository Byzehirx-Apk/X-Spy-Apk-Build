.class public Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FAB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatingActionButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    }
.end annotation


# static fields
.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

.field private context:Landroid/content/Context;

.field private q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;

    .line 267
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 273
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    .line 277
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->context:Landroid/content/Context;

    .line 278
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->init(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public hideFloatingActionButton(Z)V
    .locals 12

    .prologue
    .line 322
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    if-nez v5, :cond_0

    .line 323
    move-object v5, v0

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v2, v5

    .line 324
    move-object v5, v0

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v3, v5

    .line 325
    new-instance v5, Landroid/animation/AnimatorSet;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 326
    move-object v4, v6

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 327
    move-object v5, v4

    sget-object v6, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    move v5, v1

    if-eqz v5, :cond_1

    .line 329
    move-object v5, v4

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 333
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 334
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    .line 336
    :cond_0
    return-void

    .line 331
    :cond_1
    move-object v5, v4

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto :goto_0

    .line 323
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 324
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public init(I)V
    .locals 11

    .prologue
    .line 291
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setWillNotDraw(Z)V

    .line 292
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 294
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    .line 295
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40600000    # 3.5f

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 298
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;

    .line 300
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->invalidate()V

    .line 301
    return-void
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    move v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 305
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setClickable(Z)V

    .line 306
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v6, v8

    double-to-float v6, v6

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object v6, v1

    .line 308
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getHeight()I

    move-result v6

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;

    .line 307
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 314
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setAlpha(F)V

    .line 318
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0

    .line 315
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 316
    move-object v2, v0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFloatingActionButtonColor(I)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->init(I)V

    .line 283
    return-void
.end method

.method public setFloatingActionButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    .line 287
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->invalidate()V

    .line 288
    return-void
.end method

.method public showFloatingActionButton(Z)V
    .locals 12

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    if-eqz v5, :cond_0

    .line 340
    move-object v5, v0

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v2, v5

    .line 341
    move-object v5, v0

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v3, v5

    .line 342
    new-instance v5, Landroid/animation/AnimatorSet;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 343
    move-object v4, v6

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 344
    move-object v5, v4

    sget-object v6, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    move v5, v1

    if-eqz v5, :cond_1

    .line 346
    move-object v5, v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 350
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    .line 353
    :cond_0
    return-void

    .line 348
    :cond_1
    move-object v5, v4

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto :goto_0

    .line 340
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 341
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
