.class Lcom/bumptech/glide/ListPreloader$PreloadTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private photoHeight:I

.field private photoWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/ListPreloader$1;)V
    .locals 3

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/ListPreloader$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    return v0
.end method

.method static synthetic access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    return v0
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 5

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 314
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Ljava/lang/Object;>;"
    return-void
.end method
