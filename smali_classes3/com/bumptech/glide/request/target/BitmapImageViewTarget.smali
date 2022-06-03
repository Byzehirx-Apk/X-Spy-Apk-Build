.class public Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "BitmapImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
    move-object v1, p1

    .local v1, "resource":Landroid/graphics/Bitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
