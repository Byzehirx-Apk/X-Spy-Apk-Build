.class public Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;,
        Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
    }
.end annotation

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
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.field private glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "animationId":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 7

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    .line 19
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 27
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
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    move v1, p1

    .local v1, "isFromMemoryCache":Z
    move v2, p2

    .local v2, "isFirstResource":Z
    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v3

    move-object v0, v3

    .line 48
    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    if-nez v3, :cond_2

    .line 45
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/ViewAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/animation/ViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    .line 48
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-object v0, v3

    goto :goto_0
.end method
