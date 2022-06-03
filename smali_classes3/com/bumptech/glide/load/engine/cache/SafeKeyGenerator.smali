.class Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/util/LruCache;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 20
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 21
    .local v2, "safeKey":Ljava/lang/String;
    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    move-object v6, v2

    if-nez v6, :cond_0

    .line 24
    :try_start_1
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    move-object v3, v6

    .line 25
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    move-object v6, v1

    move-object v7, v3

    invoke-interface {v6, v7}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 26
    move-object v6, v3

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v2, v6

    .line 31
    .line 32
    .end local v3    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 33
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 34
    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    return-object v0

    .line 21
    .end local v2    # "safeKey":Ljava/lang/String;
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v4

    throw v6

    .line 27
    .restart local v2    # "safeKey":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 28
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 31
    goto :goto_0

    .line 29
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 30
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v5

    throw v6
.end method
