.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
        "<TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->setView(Landroid/view/View;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "adapterPosition":I
    move v3, p3

    .local v3, "itemPosition":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v4, :cond_0

    .line 46
    const/4 v4, 0x0

    move-object v0, v4

    .line 48
    .end local v0    # "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public onSizeReady(II)V
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    iput-object v4, v3, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 56
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    if-eqz v2, :cond_1

    .line 70
    .line 73
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v3, v2, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 73
    goto :goto_0
.end method
