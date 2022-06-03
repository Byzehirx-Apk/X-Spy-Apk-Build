.class public Lcom/bumptech/glide/request/animation/NoAnimation;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
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


# static fields
.field private static final NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/NoAnimation",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lcom/bumptech/glide/request/animation/NoAnimation;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/request/animation/NoAnimation;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    .line 11
    new-instance v0, Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/NoAnimation;, "Lcom/bumptech/glide/request/animation/NoAnimation<TR;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$000()Lcom/bumptech/glide/request/animation/NoAnimation;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    return-object v0
.end method

.method public static get()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    return-object v0
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/NoAnimation;, "Lcom/bumptech/glide/request/animation/NoAnimation<TR;>;"
    move-object v1, p1

    .local v1, "current":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "adapter":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/NoAnimation;, "Lcom/bumptech/glide/request/animation/NoAnimation<TR;>;"
    return v0
.end method
