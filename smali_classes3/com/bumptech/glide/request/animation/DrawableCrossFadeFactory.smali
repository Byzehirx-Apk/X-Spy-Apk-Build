.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final duration:I

.field private firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v1, v0

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "defaultAnimationId":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/content/Context;I)V

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "defaultAnimation":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;"
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    .line 47
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    .line 48
    return-void
.end method

.method private getFirstResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v2, :cond_0

    .line 63
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v2

    move-object v1, v2

    .line 65
    .local v1, "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 67
    .end local v1    # "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    return-object v0
.end method

.method private getSecondResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v2, :cond_0

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v2

    move-object v1, v2

    .line 74
    .local v1, "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 76
    .end local v1    # "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    return-object v0
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    move v1, p1

    .local v1, "isFromMemoryCache":Z
    move v2, p2

    .local v2, "isFirstResource":Z
    move v3, v1

    if-eqz v3, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v3

    move-object v0, v3

    .line 57
    .end local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    .line 55
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->getFirstResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 57
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->getSecondResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
