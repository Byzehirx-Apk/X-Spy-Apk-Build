.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 14
    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    move v1, p1

    .local v1, "isFromMemoryCache":Z
    move v2, p2

    .local v2, "isFirstResource":Z
    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v3

    move-object v0, v3

    .line 32
    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    if-nez v3, :cond_2

    .line 29
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    .line 32
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    move-object v0, v3

    goto :goto_0
.end method
