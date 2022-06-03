.class public final Lcom/bumptech/glide/request/target/PreloadTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<TZ;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(II)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 27
    return-void
.end method

.method public static obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/bumptech/glide/request/target/PreloadTarget",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 22
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    new-instance v2, Lcom/bumptech/glide/request/target/PreloadTarget;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/request/target/PreloadTarget;-><init>(II)V

    move-object v0, v2

    .end local v0    # "width":I
    return-object v0
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;, "TZ;"
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    move-object v3, v0

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 32
    return-void
.end method
