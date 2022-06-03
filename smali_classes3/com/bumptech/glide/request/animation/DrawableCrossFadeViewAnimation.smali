.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
.super Ljava/lang/Object;
.source "DrawableCrossFadeViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final duration:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    move-object v1, p1

    .local v1, "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    .line 26
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    move-object v1, p1

    .local v1, "current":Landroid/graphics/drawable/Drawable;, "TT;"
    move-object v2, p2

    .local v2, "adapter":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    move-object v5, v2

    invoke-interface {v5}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 45
    .local v3, "previous":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 46
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-direct {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v4, v5

    .line 47
    .local v4, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v5, 0x1

    move v0, v5

    .line 53
    .end local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    .end local v4    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return v0

    .line 52
    .restart local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v5

    .line 53
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    return v0
.end method
