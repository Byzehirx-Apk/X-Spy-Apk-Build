.class Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultAnimationFactory"
.end annotation


# instance fields
.field private final duration:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;->duration:I

    .line 85
    return-void
.end method


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v3

    .line 90
    .local v2, "animation":Landroid/view/animation/AlphaAnimation;
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;->duration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    return-object v1
.end method
