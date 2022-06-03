.class public Lcom/google/appinventor/components/runtime/view/ZoomControlView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 13

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    .line 32
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    .line 33
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setOrientation(I)V

    .line 34
    move-object v3, v0

    new-instance v4, Landroid/widget/Button;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    .line 35
    move-object v3, v0

    new-instance v4, Landroid/widget/Button;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    .line 36
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    const-string/jumbo v5, "+"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V

    .line 37
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    const-string/jumbo v5, "\u2212"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V

    .line 38
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    new-instance v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    new-instance v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    move v1, v4

    .line 1092
    const/high16 v4, 0x40800000    # 4.0f

    move v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v1, v4

    .line 1093
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x8

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 1094
    move-object v1, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1095
    move-object v4, v1

    .line 51
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    move v1, v4

    .line 1099
    const/high16 v4, 0x40800000    # 4.0f

    move v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v1, v4

    .line 1100
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x8

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x6

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    move v11, v1

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 1101
    move-object v1, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1102
    move-object v4, v1

    .line 52
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 54
    const/4 v3, 0x2

    new-array v3, v3, [[I

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const v9, -0x101009e

    aput v9, v7, v8

    aput-object v6, v4, v5

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v6, v4, v5

    move-object v1, v3

    .line 58
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 66
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 68
    move-object v3, v0

    const/high16 v4, 0x41400000    # 12.0f

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setPadding(IIII)V

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 70
    return-void

    .line 58
    :array_0
    .array-data 4
        -0x333334
        -0x1000000
    .end array-data
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    move-object v3, v1

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 84
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 85
    move-object v3, v1

    const/high16 v4, 0x41f00000    # 30.0f

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setWidth(I)V

    .line 86
    move-object v3, v1

    const/high16 v4, 0x41f00000    # 30.0f

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setHeight(I)V

    .line 87
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->setSingleLine()V

    .line 88
    move-object v3, v1

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public final updateButtons()V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    return-void
.end method
