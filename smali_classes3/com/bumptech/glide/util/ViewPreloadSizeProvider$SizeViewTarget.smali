.class final Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;
.source "ViewPreloadSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizeViewTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ViewTarget",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "callback":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 79
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .param p2, "glideAnimation"    # Lcom/bumptech/glide/request/animation/GlideAnimation;

    .prologue
    .line 85
    return-void
.end method
