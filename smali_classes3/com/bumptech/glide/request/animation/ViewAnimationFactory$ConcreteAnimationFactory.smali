.class Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
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
    name = "ConcreteAnimationFactory"
.end annotation


# instance fields
.field private final animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Landroid/view/animation/Animation;

    .line 56
    return-void
.end method


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Landroid/view/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
    return-object v0
.end method
