.class public Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/NoAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAnimationFactory"
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    move v1, p1

    .local v1, "isFromMemoryCache":Z
    move v2, p2

    .local v2, "isFirstResource":Z
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->access$000()Lcom/bumptech/glide/request/animation/NoAnimation;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    return-object v0
.end method
