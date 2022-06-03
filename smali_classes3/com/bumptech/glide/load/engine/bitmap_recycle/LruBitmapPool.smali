.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "LruBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:I

.field private maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "maxSize":I
    move-object v2, v0

    move v3, v1

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v4

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method constructor <init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "maxSize":I
    move-object v2, p2

    .local v2, "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    move-object v3, p3

    .local v3, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    .line 40
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    .line 41
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    .line 42
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 43
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "maxSize":I
    move-object v2, p2

    .local v2, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    move-object v3, v0

    move v4, v1

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 64
    return-void
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 201
    :cond_0
    return-void
.end method

.method private dumpUnchecked()V
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    const-string/jumbo v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", misses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", puts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", evictions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", currentSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nStrategy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 211
    return-void
.end method

.method private evict()V
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 110
    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Ljava/util/HashSet;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 225
    .local v0, "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    move-object v1, v0

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 227
    move-object v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    return-object v0
.end method

.method private static getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .locals 4

    .prologue
    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 216
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;-><init>()V

    move-object v0, v1

    .line 220
    .local v0, "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :goto_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    return-object v0

    .line 218
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;-><init>()V

    move-object v0, v1

    .restart local v0    # "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    goto :goto_0
.end method

.method private declared-synchronized trimToSize(I)V
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "size":I
    move-object v7, p0

    monitor-enter v7

    :goto_0
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    move v4, v1

    if-le v3, v4, :cond_3

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .line 177
    .local v2, "removed":Landroid/graphics/Bitmap;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 178
    const-string/jumbo v3, "LruBitmapPool"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const-string/jumbo v3, "LruBitmapPool"

    const-string/jumbo v4, "Size mismatch, resetting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 180
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 182
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .line 195
    .end local v2    # "removed":Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit v7

    return-void

    .line 186
    .restart local v2    # "removed":Landroid/graphics/Bitmap;
    :cond_1
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 187
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 188
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    .line 190
    const-string/jumbo v3, "LruBitmapPool"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const-string/jumbo v3, "LruBitmapPool"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Evicting bitmap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 193
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    goto/16 :goto_0

    .line 195
    .end local v2    # "removed":Landroid/graphics/Bitmap;
    :cond_3
    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    throw v0
.end method


# virtual methods
.method public clearMemory()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string/jumbo v1, "LruBitmapPool"

    const-string/jumbo v2, "clearMemory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 157
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 158
    return-void
.end method

.method public declared-synchronized get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v9, p0

    monitor-enter v9

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    :try_start_0
    invoke-virtual {v5, v6, v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 115
    .local v4, "result":Landroid/graphics/Bitmap;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 119
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    monitor-exit v9

    return-object v0

    .line 114
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    throw v0
.end method

.method public declared-synchronized getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object/from16 v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v11, p0

    monitor-enter v11

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move v6, v1

    move v7, v2

    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v3

    :goto_0
    invoke-interface {v5, v6, v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 131
    .local v4, "result":Landroid/graphics/Bitmap;
    move-object v5, v4

    if-nez v5, :cond_4

    .line 132
    const-string/jumbo v5, "LruBitmapPool"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const-string/jumbo v5, "LruBitmapPool"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 135
    :cond_0
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    .line 144
    :cond_1
    :goto_1
    const-string/jumbo v5, "LruBitmapPool"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    const-string/jumbo v5, "LruBitmapPool"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Get bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 147
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    monitor-exit v11

    return-object v0

    .line 130
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_3
    :try_start_1
    sget-object v8, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_0

    .line 137
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :cond_4
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    .line 138
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v8, v4

    invoke-interface {v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 139
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    move-object v6, v4

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 140
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_1

    .line 141
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    throw v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    return v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, p0

    monitor-enter v7

    move-object v3, v1

    if-nez v3, :cond_0

    .line 80
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Bitmap must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    throw v0

    .line 82
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_0
    move-object v3, v1

    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    if-gt v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    :cond_1
    const-string/jumbo v3, "LruBitmapPool"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const-string/jumbo v3, "LruBitmapPool"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", is mutable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", is allowed config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 89
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    .line 105
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :goto_0
    monitor-exit v7

    return v0

    .line 92
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_3
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    move v2, v3

    .line 93
    .local v2, "size":I
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    .line 96
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    .line 97
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 99
    const-string/jumbo v3, "LruBitmapPool"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    const-string/jumbo v3, "LruBitmapPool"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Put bitmap in pool="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 102
    :cond_4
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    .line 104
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    int-to-float v3, v3

    move v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    .line 74
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v5

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    throw v0
.end method

.method public trimMemory(I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    move v1, p1

    .local v1, "level":I
    const-string/jumbo v2, "LruBitmapPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string/jumbo v2, "LruBitmapPool"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trimMemory, level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 166
    :cond_0
    move v2, v1

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_2

    .line 167
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->clearMemory()V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    move v2, v1

    const/16 v3, 0x28

    if-lt v2, v3, :cond_1

    .line 169
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    goto :goto_0
.end method
