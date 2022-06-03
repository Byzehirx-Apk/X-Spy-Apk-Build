.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
.super Ljava/lang/Object;
.source "ViewPropertyAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
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
.field private final animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 25
    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"
    move-object v1, p1

    .local v1, "current":Ljava/lang/Object;, "TR;"
    move-object v2, p2

    .local v2, "adapter":Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    move-object v4, v2

    invoke-interface {v4}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 39
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 40
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    move-object v5, v2

    invoke-interface {v5}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;->animate(Landroid/view/View;)V

    .line 42
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;, "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"
    return v0
.end method
