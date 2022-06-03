.class public Lcom/google/appinventor/components/runtime/ScaledFrameLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

.field private IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

.field private plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    .line 35
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    .line 37
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    .line 35
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    .line 37
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    .line 49
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setClipChildren(Z)V

    .line 50
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    move v1, v3

    .line 94
    move v3, v2

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 95
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setPadding(IIII)V

    .line 96
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 55
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 58
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 82
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    move-object v6, v1

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    move-object v1, v3

    .line 68
    new-instance v3, Landroid/graphics/Rect;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v3

    .line 72
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 74
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    .prologue
    .line 164
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result v9

    move v1, v9

    .line 166
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingLeft()I

    move-result v9

    move v2, v9

    .line 168
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingTop()I

    move-result v9

    move v4, v9

    .line 169
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v3, v9

    .line 171
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v1

    if-ge v9, v10, :cond_1

    .line 172
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    .line 173
    move-object v6, v10

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 174
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v7, v9

    .line 175
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    move v8, v9

    .line 177
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    move v10, v2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 178
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    move v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 179
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move v2, v9

    .line 180
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    move v10, v4

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 181
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    move v10, v3

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 183
    const v9, 0x800033

    move v10, v7

    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    invoke-static {v9, v10, v11, v12, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 186
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move-object v13, v0

    iget-object v13, v13, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 171
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    .prologue
    .line 117
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 119
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    .line 120
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

    .line 122
    const/4 v8, 0x0

    move v4, v8

    .line 124
    const/4 v8, 0x0

    move v5, v8

    .line 126
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 127
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    .line 128
    move-object v7, v9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 129
    move-object v8, v0

    move-object v9, v7

    move v10, v1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->measureChild(Landroid/view/View;II)V

    .line 131
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    const/4 v10, 0x0

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    .line 133
    move v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, v8

    .line 134
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 135
    move-object v8, v0

    move v9, v5

    move-object v10, v7

    .line 136
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->getMeasuredState(Landroid/view/View;)I

    move-result v10

    .line 135
    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->combineMeasuredStates(Landroid/view/ViewGroup;II)I

    move-result v8

    move v5, v8

    .line 126
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    add-int/2addr v8, v9

    move v3, v8

    .line 143
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, v8

    .line 144
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v8

    .line 146
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_2

    .line 147
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v3

    move v11, v1

    move v12, v5

    .line 148
    invoke-static {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->resolveSizeAndState(Landroid/view/ViewGroup;III)I

    move-result v9

    move-object v10, v0

    move v11, v4

    move v12, v2

    move v13, v5

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    .line 149
    invoke-static {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->resolveSizeAndState(Landroid/view/ViewGroup;III)I

    move-result v10

    .line 147
    invoke-virtual {v8, v9, v10}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setMeasuredDimension(II)V

    .line 156
    :goto_1
    return-void

    .line 152
    :cond_2
    move-object v8, v0

    move v9, v3

    move v10, v1

    .line 153
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSize(II)I

    move-result v9

    move v10, v4

    move v11, v2

    .line 154
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSize(II)I

    move-result v10

    .line 152
    invoke-virtual {v8, v9, v10}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setMeasuredDimension(II)V

    .line 156
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V

    .line 101
    return-void
.end method

.method public setScale(F)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    .line 87
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V

    .line 88
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
