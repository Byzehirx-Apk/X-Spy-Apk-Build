.class public Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final SQUARE_RATIO_MARGIN:F = 0.05f


# instance fields
.field private maxLoopCount:I

.field private resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move v2, p2

    .local v2, "maxLoopCount":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 38
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    .line 39
    return-void
.end method


# virtual methods
.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move-object v2, p2

    .local v2, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v3, v5

    .line 60
    .local v3, "viewRatio":F
    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 61
    .local v4, "drawableRatio":F
    move v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3d4ccccd    # 0.05f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3d4ccccd    # 0.05f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 63
    new-instance v5, Lcom/bumptech/glide/request/target/SquaringDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V

    move-object v1, v5

    .line 66
    .end local v3    # "viewRatio":F
    .end local v4    # "drawableRatio":F
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 67
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 68
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 69
    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 70
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/request/animation/GlideAnimation;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 88
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    .line 95
    :cond_0
    return-void
.end method

.method protected setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V

    return-void
.end method
