.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final VALUE_COUNT:I = 0x1

.field private static wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final maxSize:I

.field private final safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

.field private final writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v1, p1

    .local v1, "directory":Ljava/io/File;
    move v2, p2

    .local v2, "maxSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 52
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 53
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    .line 54
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 55
    return-void
.end method

.method public static declared-synchronized get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "directory":Ljava/io/File;
    move v1, p1

    .local v1, "maxSize":I
    const-class v6, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    monitor-enter v6

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;I)V

    sput-object v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 48
    :cond_0
    sget-object v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "directory":Ljava/io/File;
    monitor-exit v6

    return-object v0

    .line 45
    .restart local v0    # "directory":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "directory":Ljava/io/File;
    throw v0
.end method

.method private declared-synchronized getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v8, p0

    monitor-enter v8

    move-object v2, v1

    :try_start_0
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    if-nez v2, :cond_0

    .line 59
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    int-to-long v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 61
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    monitor-exit v8

    return-object v1

    .line 58
    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v8

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    throw v1
.end method

.method private declared-synchronized resetDiskCache()V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v3

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    .line 130
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->resetDiskCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 131
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 132
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const-string/jumbo v3, "Unable to clear disk cache"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    throw v0
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 118
    .local v2, "safeKey":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 123
    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 120
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const-string/jumbo v5, "Unable to delete from disk cache"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 71
    .local v2, "safeKey":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v3, v5

    .line 76
    .local v3, "result":Ljava/io/File;
    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object v5

    move-object v4, v5

    .line 77
    .local v4, "value":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 78
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 84
    .line 85
    .end local v4    # "value":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    :cond_0
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    return-object v0

    .line 80
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 81
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v5, "DiskLruCacheWrapper"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string/jumbo v5, "DiskLruCacheWrapper"

    const-string/jumbo v6, "Unable to get from disk cache"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "writer":Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 91
    .local v3, "safeKey":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->acquire(Lcom/bumptech/glide/load/Key;)V

    .line 93
    move-object v8, v0

    :try_start_0
    invoke-direct {v8}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    move-object v4, v8

    .line 95
    .local v4, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 97
    move-object v8, v4

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v8

    move-object v5, v8

    .line 98
    .local v5, "file":Ljava/io/File;
    move-object v8, v2

    move-object v9, v5

    invoke-interface {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_0
    move-object v8, v4

    :try_start_2
    invoke-virtual {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 110
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    .line 111
    .line 112
    .end local v4    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :goto_0
    return-void

    .line 102
    .restart local v4    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v4

    :try_start_3
    invoke-virtual {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    move-object v8, v6

    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .end local v4    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 106
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v8, "DiskLruCacheWrapper"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    const-string/jumbo v8, "DiskLruCacheWrapper"

    const-string/jumbo v9, "Unable to put to disk cache"

    move-object v10, v4

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    .line 110
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    .line 111
    goto :goto_0

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    move-object v8, v7

    throw v8
.end method
