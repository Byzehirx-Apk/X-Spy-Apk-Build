.class Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceAnimationFactory"
.end annotation


# instance fields
.field private final animationId:I

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "animationId":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->context:Landroid/content/Context;

    .line 70
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->animationId:I

    .line 71
    return-void
.end method


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->context:Landroid/content/Context;

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->animationId:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
    return-object v0
.end method
