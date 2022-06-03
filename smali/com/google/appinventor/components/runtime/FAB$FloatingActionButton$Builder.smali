.class public Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:I

.field private final activity:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

.field private size:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 362
    move-object v2, v0

    const v3, 0x800055

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:I

    .line 364
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 365
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    .line 366
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 369
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 370
    move-object v2, v0

    const/16 v3, 0x48

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    .line 371
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    .line 375
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I
    .locals 4

    .prologue
    .line 435
    move v0, p0

    move v1, p1

    move v2, v0

    int-to-float v2, v2

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    return v0
.end method


# virtual methods
.method public create()Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
    .locals 6

    .prologue
    .line 422
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;-><init>(Landroid/content/Context;)V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 423
    move-object v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonColor(I)V

    .line 424
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 427
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public withButtonColor(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 409
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public withButtonSize(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 8

    .prologue
    .line 416
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v2

    move v1, v2

    .line 417
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move v7, v5

    move v5, v7

    move v6, v7

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    .line 418
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public withDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;

    .line 401
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public withGravity(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:I

    .line 382
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public withMargins(IIII)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 11

    .prologue
    .line 389
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 390
    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v7

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 391
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v8

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 392
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v9

    .line 389
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method
