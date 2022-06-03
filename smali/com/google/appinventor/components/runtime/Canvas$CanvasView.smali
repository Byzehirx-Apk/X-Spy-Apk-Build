.class public final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CanvasView"
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 391
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 392
    move-object v3, v0

    const/16 v4, 0x20

    const/16 v5, 0x30

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 395
    move-object v3, v0

    new-instance v4, Landroid/graphics/Canvas;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    .line 396
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I
    .locals 10

    .prologue
    .line 630
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 631
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 632
    :cond_0
    const v4, 0xffffff

    move v0, v4

    .line 664
    :goto_0
    return v0

    .line 638
    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    move v9, v4

    move v4, v9

    move v5, v9

    .line 639
    move v3, v5

    if-eqz v4, :cond_2

    .line 640
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 645
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    .line 646
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 647
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    .line 648
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 649
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    .line 647
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    .line 652
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 653
    move v0, v4

    goto :goto_0

    .line 657
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 658
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    goto :goto_0

    .line 660
    :cond_5
    const v4, 0xffffff

    move v0, v4

    goto :goto_0

    .line 663
    :catch_0
    move-exception v4

    const-string/jumbo v4, "Canvas"

    const-string/jumbo v5, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 664
    const v4, 0xffffff

    move v0, v4

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 6

    .prologue
    .line 370
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I
    .locals 6

    .prologue
    .line 524
    move v0, p0

    move v1, p1

    move v4, v0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    move v2, v4

    .line 525
    move v4, v0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move v3, v4

    .line 527
    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    .line 529
    move v4, v3

    move v0, v4

    .line 539
    :cond_0
    :goto_0
    move v4, v0

    move v0, v4

    return v0

    .line 532
    :cond_1
    move v4, v1

    move v0, v4

    .line 533
    move v4, v2

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 535
    move v4, v0

    move v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 6

    .prologue
    .line 370
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 404
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    .line 405
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->destroyDrawingCache()V

    .line 406
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 409
    move-object v1, v6

    if-nez v5, :cond_0

    .line 410
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v5

    move v2, v5

    .line 411
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v5

    move v3, v5

    .line 412
    move v5, v2

    move v6, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 413
    new-instance v5, Landroid/graphics/Canvas;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v5

    .line 414
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    .line 415
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 11

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v2, v7

    move-object v1, v6

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 1620
    move-object v0, v6

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1621
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    move v6, v4

    neg-float v6, v6

    move v7, v2

    int-to-float v7, v7

    move v8, v3

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1622
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    move-object v6, v1

    move v7, v2

    int-to-float v7, v7

    move v8, v3

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1623
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 1624
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 370
    return-void
.end method

.method private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V
    .locals 4

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 603
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 604
    return-void
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 590
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 591
    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 598
    :goto_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void

    .line 591
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 595
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 596
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    goto :goto_2
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(II)I
    .locals 9

    .prologue
    .line 670
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    move v5, v2

    if-ltz v5, :cond_0

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 671
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 672
    :cond_0
    const v5, 0xffffff

    move v0, v5

    .line 703
    :goto_0
    return v0

    .line 676
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 678
    const/4 v5, 0x0

    move v3, v5

    .line 679
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_1
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 680
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 681
    const/4 v5, 0x1

    move v3, v5

    .line 685
    :cond_2
    move v5, v3

    if-nez v5, :cond_4

    .line 686
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 684
    :cond_3
    goto :goto_1

    .line 694
    :cond_4
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    .line 699
    :cond_5
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    goto :goto_0

    .line 702
    :catch_0
    move-exception v5

    const-string/jumbo v5, "Canvas"

    const-string/jumbo v6, "Returning COLOR_NONE (exception) from getPixelColor."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 703
    const v5, 0xffffff

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v3, v1

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    .line 572
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    .line 574
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .line 582
    :cond_0
    :goto_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()V

    .line 584
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V

    .line 585
    return-void

    .line 570
    :cond_1
    move-object v3, v1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Canvas"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    .line 425
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 429
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 433
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 434
    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    .line 435
    goto :goto_0

    .line 436
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v3

    .line 437
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 11

    .prologue
    .line 503
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 506
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 507
    move-object v5, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move v3, v6

    .line 508
    move-object v6, v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v4, v6

    .line 513
    .line 518
    :goto_0
    move-object v6, v0

    move v7, v1

    move v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result v7

    move v8, v2

    move v9, v4

    .line 519
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result v8

    .line 518
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    .line 520
    return-void

    .line 509
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 510
    const/16 v6, 0x20

    move v3, v6

    .line 511
    const/16 v6, 0x30

    move v4, v6

    .line 512
    const-string/jumbo v6, "Canvas"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Error on backgroundDrawable.getBitmap(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 513
    goto :goto_0

    .line 515
    :cond_0
    const/16 v6, 0x20

    move v3, v6

    .line 516
    const/16 v6, 0x30

    move v4, v6

    goto :goto_0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 14

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 442
    .line 497
    :goto_0
    return-void

    .line 445
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move v3, v7

    .line 446
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v7

    .line 447
    move v7, v1

    move v8, v3

    if-ne v7, v8, :cond_1

    move v7, v2

    move v8, v4

    if-eq v7, v8, :cond_2

    .line 448
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    move-object v5, v7

    .line 462
    move-object v7, v5

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 464
    move-object v6, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 466
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 470
    move-object v7, v0

    new-instance v8, Landroid/graphics/Canvas;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    .line 497
    :cond_2
    goto :goto_0

    .line 475
    :cond_3
    move-object v7, v0

    move v8, v1

    move v9, v2

    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 479
    move-object v7, v0

    new-instance v8, Landroid/graphics/Canvas;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    .line 482
    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v7

    .line 483
    new-instance v7, Landroid/graphics/RectF;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v1

    int-to-float v11, v11

    move v12, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v7

    .line 484
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    move-object v8, v5

    move-object v9, v3

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    goto :goto_1

    .line 487
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 488
    const-string/jumbo v7, "Canvas"

    move-object v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .prologue
    .line 549
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v12, v3

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v12}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 550
    move-object v12, v3

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$b;

    move-result-object v12

    move-object v13, v4

    move-object v6, v13

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    .line 1241
    move-object v5, v13

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v12

    move v7, v12

    .line 1242
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v12

    move v8, v12

    .line 1248
    const/4 v12, 0x0

    move-object v13, v6

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    move-object v14, v5

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v9, v12

    .line 1249
    const/4 v12, 0x0

    move-object v13, v6

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    move-object v14, v5

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v10, v12

    .line 1253
    new-instance v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    const/4 v14, 0x0

    move v15, v9

    float-to-int v15, v15

    const/16 v16, 0xc

    add-int/lit8 v15, v15, -0xc

    .line 1254
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-double v14, v14

    const/16 v16, 0x0

    move/from16 v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0xc

    add-int/lit8 v17, v17, -0xc

    .line 1255
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v9

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0xc

    add-int/lit8 v19, v19, 0xc

    .line 1256
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v8

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v21, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    .line 1257
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-direct/range {v13 .. v21}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    move-object v11, v12

    .line 1259
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    move-object v12, v3

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 553
    move-object v12, v3

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    :goto_1
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 556
    move-object v13, v4

    invoke-interface {v12, v13}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 557
    goto :goto_1

    .line 1261
    :pswitch_0
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1262
    move-object v12, v5

    move v13, v9

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    .line 1263
    move-object v12, v5

    move v13, v10

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    .line 1264
    move-object v12, v5

    move v13, v9

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1265
    move-object v12, v5

    move v13, v10

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    .line 1266
    move-object v12, v5

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    .line 1267
    move-object v12, v5

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    .line 1268
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v12

    :goto_2
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Sprite;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    .line 1269
    move-object v7, v13

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v7

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v7

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1270
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1271
    move-object v12, v7

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    move-object v14, v5

    iget v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    .line 1273
    :cond_1
    goto :goto_2

    .line 1274
    :cond_2
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    move-object v14, v5

    iget v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    .line 1275
    goto/16 :goto_0

    .line 1279
    :pswitch_1
    move-object v12, v5

    iget v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    move-object v12, v5

    iget v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    move-object v12, v5

    iget v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    move-object v12, v5

    iget v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    .line 1280
    :cond_3
    const-string/jumbo v12, "Canvas"

    const-string/jumbo v13, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    move-object v14, v6

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1285
    :cond_4
    move-object v12, v5

    iget-boolean v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    if-nez v12, :cond_5

    move v12, v9

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    sub-float/2addr v12, v13

    .line 1286
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x41700000    # 15.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    move v12, v10

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x41700000    # 15.0f

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_0

    .line 1290
    :cond_5
    move-object v12, v5

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    .line 1291
    move-object v12, v5

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    .line 1295
    move v12, v9

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-lez v12, :cond_6

    move v12, v9

    move v13, v7

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_6

    move v12, v10

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-lez v12, :cond_6

    move v12, v10

    move v13, v8

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    :cond_6
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 1296
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1302
    :cond_7
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v12

    :goto_3
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Sprite;

    move-object v7, v12

    .line 1303
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    move-object v12, v7

    .line 1304
    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v7

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v7

    move-object v13, v11

    .line 1305
    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1306
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1308
    :cond_8
    goto :goto_3

    .line 1311
    :cond_9
    const/4 v12, 0x0

    move v6, v12

    .line 1312
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_4
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Sprite;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    .line 1313
    move-object v8, v13

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1314
    move-object v12, v8

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    move-object v14, v5

    iget v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    move-object v15, v5

    iget v15, v15, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    .line 1315
    const/4 v12, 0x1

    move v6, v12

    .line 1317
    :cond_a
    goto :goto_4

    .line 1320
    :cond_b
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v13, v5

    iget v13, v13, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    move-object v14, v5

    iget v14, v14, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    move-object v15, v5

    iget v15, v15, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v6

    invoke-virtual/range {v12 .. v19}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 1321
    move-object v12, v5

    move v13, v9

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1322
    move-object v12, v5

    move v13, v10

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    .line 1323
    goto/16 :goto_0

    .line 1329
    :pswitch_2
    move-object v12, v5

    iget-boolean v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    if-nez v12, :cond_f

    .line 1331
    const/4 v12, 0x0

    move v6, v12

    .line 1332
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_5
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Sprite;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    .line 1333
    move-object v8, v13

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1334
    move-object v12, v8

    move v13, v9

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 1335
    move-object v12, v8

    move v13, v9

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 1336
    const/4 v12, 0x1

    move v6, v12

    .line 1338
    :cond_c
    goto :goto_5

    .line 1340
    :cond_d
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move v13, v9

    move v14, v10

    move v15, v6

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    .line 1353
    :cond_e
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move v13, v9

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 1356
    move-object v12, v5

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    .line 1357
    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    .line 1358
    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    .line 1359
    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1360
    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    goto/16 :goto_0

    .line 1343
    :cond_f
    move-object v12, v5

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_6
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/appinventor/components/runtime/Sprite;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    .line 1344
    move-object v8, v13

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v12

    if-eqz v12, :cond_10

    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1345
    move-object v12, v8

    move v13, v9

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 1346
    move-object v12, v8

    move v13, v9

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 1348
    :cond_10
    goto :goto_6

    .line 558
    :cond_11
    const/4 v12, 0x1

    move v3, v12

    return v3

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 611
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;I)I

    move-result v2

    .line 613
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()V

    .line 615
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V

    .line 616
    return-void
.end method
