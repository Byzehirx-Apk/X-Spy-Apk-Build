.class public abstract Lcom/bumptech/glide/request/target/ImageViewTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ViewTarget",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "placeholder":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p2

    .local v2, "errorDrawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "placeholder":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;, "TZ;"
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResource(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
