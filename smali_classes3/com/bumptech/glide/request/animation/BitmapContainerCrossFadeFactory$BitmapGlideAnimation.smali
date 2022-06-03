.class Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapGlideAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

.field private final transition:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>.BitmapGlideAnimation;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "transition":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<Landroid/graphics/drawable/Drawable;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->this$0:Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->transition:Lcom/bumptech/glide/request/animation/GlideAnimation;

    .line 63
    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>.BitmapGlideAnimation;"
    move-object v1, p1

    .local v1, "current":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "adapter":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    move-object v5, v2

    invoke-interface {v5}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v5

    .line 68
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->this$0:Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v4, v5

    .line 69
    .local v4, "currentBitmap":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->transition:Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-object v6, v4

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;, "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>.BitmapGlideAnimation;"
    return v0
.end method
