.class public abstract Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 11

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "defaultAnimationId":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "defaultAnimation":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 36
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
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "realFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<Landroid/graphics/drawable/Drawable;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    move v1, p1

    .local v1, "isFromMemoryCache":Z
    move v2, p2

    .local v2, "isFirstResource":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v4

    move-object v3, v4

    .line 45
    .local v3, "transition":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<Landroid/graphics/drawable/Drawable;>;"
    new-instance v4, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;-><init>(Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    return-object v0
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
