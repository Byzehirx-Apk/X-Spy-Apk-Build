.class public Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "DrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
    move-object v1, p1

    .local v1, "resource":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
