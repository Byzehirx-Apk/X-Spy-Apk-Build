.class final Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 285
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 287
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 288
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    new-instance v4, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>(Lcom/bumptech/glide/ListPreloader$1;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-object v3, v4

    .line 294
    .local v3, "result":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v4

    .line 295
    move-object v4, v3

    move v5, v1

    invoke-static {v4, v5}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    move-result v4

    .line 296
    move-object v4, v3

    move v5, v2

    invoke-static {v4, v5}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    move-result v4

    .line 297
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
    return-object v0
.end method
