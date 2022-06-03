.class public Lcom/bumptech/glide/util/FixedPreloadSizeProvider;
.super Ljava/lang/Object;
.source "FixedPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final size:[I


# direct methods
.method public constructor <init>(II)V
    .locals 9

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/FixedPreloadSizeProvider;, "Lcom/bumptech/glide/util/FixedPreloadSizeProvider<TT;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 23
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

    iput-object v4, v3, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    .line 24
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
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/FixedPreloadSizeProvider;, "Lcom/bumptech/glide/util/FixedPreloadSizeProvider<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "adapterPosition":I
    move v3, p3

    .local v3, "itemPosition":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/util/FixedPreloadSizeProvider;, "Lcom/bumptech/glide/util/FixedPreloadSizeProvider<TT;>;"
    return-object v0
.end method
