.class public Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
.super Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.source "BitmapCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "defaultAnimationId":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, p1

    .local v1, "defaultAnimation":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, p1

    .local v1, "realFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<Landroid/graphics/drawable/Drawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, p1

    .local v1, "current":Landroid/graphics/Bitmap;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    return-object v0
.end method

.method protected bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
    return-object v0
.end method
