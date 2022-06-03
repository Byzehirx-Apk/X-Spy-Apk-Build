.class public Lcom/bumptech/glide/request/animation/ViewAnimation;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimation;, "Lcom/bumptech/glide/request/animation/ViewAnimation<TR;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 22
    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimation;, "Lcom/bumptech/glide/request/animation/ViewAnimation<TR;>;"
    move-object v1, p1

    .local v1, "current":Ljava/lang/Object;, "TR;"
    move-object v2, p2

    .local v2, "adapter":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    move-object v5, v2

    invoke-interface {v5}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 37
    .local v3, "view":Landroid/view/View;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 38
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 39
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-interface {v5}, Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;->build()Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 40
    .local v4, "animation":Landroid/view/animation/Animation;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    .end local v4    # "animation":Landroid/view/animation/Animation;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewAnimation;, "Lcom/bumptech/glide/request/animation/ViewAnimation<TR;>;"
    return v0
.end method
