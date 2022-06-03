.class public Lcom/bumptech/glide/load/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xfa


# instance fields
.field private final cache:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TA;TB;>;"
    move-object v1, v0

    const/16 v2, 0xfa

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TA;TB;>;"
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/model/ModelCache$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/model/ModelCache$1;-><init>(Lcom/bumptech/glide/load/model/ModelCache;I)V

    iput-object v3, v2, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    .line 32
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TA;TB;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object v6

    move-object v4, v6

    .line 45
    .local v4, "key":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 46
    .local v5, "result":Ljava/lang/Object;, "TB;"
    move-object v6, v4

    invoke-virtual {v6}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->release()V

    .line 47
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TA;TB;>;"
    return-object v0
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TA;TB;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, p4

    .local v4, "value":Ljava/lang/Object;, "TB;"
    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object v6

    move-object v5, v6

    .line 60
    .local v5, "key":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 61
    return-void
.end method
