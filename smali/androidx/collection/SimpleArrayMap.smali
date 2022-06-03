.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 237
    move-object v1, v0

    sget-object v2, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v2, v1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 238
    move-object v1, v0

    sget-object v2, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, v1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 240
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 247
    move v2, v1

    if-nez v2, :cond_0

    .line 248
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 249
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 253
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 254
    return-void

    .line 251
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 261
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 262
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 264
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 15

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move/from16 v1, p1

    .local v1, "size":I
    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 166
    const-class v6, Landroidx/collection/ArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 167
    :try_start_0
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 168
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 169
    .local v3, "array":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 170
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 171
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 172
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 173
    sget v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 176
    move-object v6, v2

    monitor-exit v6

    .line 197
    .end local v3    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :goto_1
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 196
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 197
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    throw v6

    .line 179
    :cond_2
    move v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 180
    const-class v6, Landroidx/collection/ArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 181
    :try_start_2
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 182
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 183
    .restart local v3    # "array":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 184
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 185
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 186
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 187
    sget v6, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 190
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 192
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_3
    move-object v6, v2

    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    throw v6
.end method

.method private static binarySearchHashes([III)I
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "hashes":[I
    move v1, p1

    .local v1, "N":I
    move v2, p2

    .local v2, "hash":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .end local v0    # "hashes":[I
    return v0

    .line 78
    .restart local v0    # "hashes":[I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 80
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "hashes":[I
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;
    move v2, p2

    .local v2, "size":I
    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 202
    const-class v7, Landroidx/collection/ArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 203
    :try_start_0
    sget v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 204
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 205
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 206
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 207
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 209
    :cond_0
    move-object v7, v1

    sput-object v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 210
    sget v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 214
    .end local v4    # "i":I
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 214
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 215
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 216
    const-class v7, Landroidx/collection/ArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 217
    :try_start_1
    sget v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 218
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 219
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 220
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .restart local v4    # "i":I
    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 221
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 220
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 223
    :cond_4
    move-object v7, v1

    sput-object v7, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 224
    sget v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 228
    .end local v4    # "i":I
    :cond_5
    move-object v7, v3

    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    throw v7
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v4, :cond_0

    .line 271
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v1, v4

    .line 272
    .local v1, "ohashes":[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v2, v4

    .line 273
    .local v2, "oarray":[Ljava/lang/Object;
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v4

    .line 274
    .local v3, "osize":I
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v5, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 275
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v5, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 276
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 277
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 279
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    .end local v3    # "osize":I
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v4, :cond_1

    .line 280
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 282
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 12

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "minimumCapacity":I
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v2, v5

    .line 290
    .local v2, "osize":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 291
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v3, v5

    .line 292
    .local v3, "ohashes":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v4, v5

    .line 293
    .local v4, "oarray":[Ljava/lang/Object;
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 294
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v5, :cond_0

    .line 295
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_0
    move-object v5, v3

    move-object v6, v4

    move v7, v2

    invoke-static {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 300
    .end local v3    # "ohashes":[I
    .end local v4    # "oarray":[Ljava/lang/Object;
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v2

    if-eq v5, v6, :cond_2

    .line 301
    new-instance v5, Ljava/util/ConcurrentModificationException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 303
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 595
    const/4 v7, 0x1

    move v0, v7

    .line 648
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :goto_0
    return v0

    .line 597
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroidx/collection/SimpleArrayMap;

    if-eqz v7, :cond_6

    .line 598
    move-object v7, v1

    check-cast v7, Landroidx/collection/SimpleArrayMap;

    move-object v2, v7

    .line 599
    .local v2, "map":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<**>;"
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 600
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 604
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_1
    move v7, v3

    move-object v8, v0

    :try_start_0
    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_5

    .line 605
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 606
    .local v4, "key":Ljava/lang/Object;, "TK;"
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 607
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 608
    .local v6, "theirs":Ljava/lang/Object;
    move-object v7, v5

    if-nez v7, :cond_3

    .line 609
    move-object v7, v6

    if-nez v7, :cond_2

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 610
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 612
    :cond_3
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_4

    .line 613
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 604
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 620
    .line 621
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 616
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 617
    .local v3, "ignored":Ljava/lang/NullPointerException;
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 618
    .local v3, "i":I
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 619
    .local v3, "ignored":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 622
    .end local v2    # "map":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<**>;"
    .end local v3    # "ignored":Ljava/lang/ClassCastException;
    :cond_6
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Map;

    if-eqz v7, :cond_c

    .line 623
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    move-object v2, v7

    .line 624
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 625
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 629
    :cond_7
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_2
    move v7, v3

    move-object v8, v0

    :try_start_1
    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_b

    .line 630
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 631
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 632
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 633
    .restart local v6    # "theirs":Ljava/lang/Object;
    move-object v7, v5

    if-nez v7, :cond_9

    .line 634
    move-object v7, v6

    if-nez v7, :cond_8

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 635
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 637
    :cond_9
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    if-nez v7, :cond_a

    .line 638
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 629
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 645
    .line 646
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_b
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 641
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 642
    .local v3, "ignored":Ljava/lang/NullPointerException;
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 643
    .local v3, "i":I
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 644
    .local v3, "ignored":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 648
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "ignored":Ljava/lang/ClassCastException;
    :cond_c
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 364
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v1, v8

    .line 657
    .local v1, "hashes":[I
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v2, v8

    .line 658
    .local v2, "array":[Ljava/lang/Object;
    const/4 v8, 0x0

    move v3, v8

    .line 659
    .local v3, "result":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    const/4 v8, 0x1

    move v5, v8

    .local v5, "v":I
    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v8

    .local v6, "s":I
    :goto_0
    move v8, v4

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 660
    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    move-object v7, v8

    .line 661
    .local v7, "value":Ljava/lang/Object;
    move v8, v3

    move-object v9, v1

    move v10, v4

    aget v9, v9, v10

    move-object v10, v7

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_1
    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 659
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 661
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_1

    .line 663
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move v8, v3

    move v0, v8

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move v2, p2

    .local v2, "hash":I
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v7

    .line 91
    .local v3, "N":I
    move v7, v3

    if-nez v7, :cond_0

    .line 92
    const/4 v7, -0x1

    move v0, v7

    .line 122
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :goto_0
    return v0

    .line 95
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v3

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v7

    move v4, v7

    .line 98
    .local v4, "index":I
    move v7, v4

    if-gez v7, :cond_1

    .line 99
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 103
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 109
    :cond_2
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    .local v5, "end":I
    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 110
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 109
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    :cond_4
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    if-ltz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 115
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 114
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 122
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v1, v5

    .line 129
    .local v1, "N":I
    move v5, v1

    if-nez v5, :cond_0

    .line 130
    const/4 v5, -0x1

    move v0, v5

    .line 160
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :goto_0
    return v0

    .line 133
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v5

    move v2, v5

    .line 136
    .local v2, "index":I
    move v5, v2

    if-gez v5, :cond_1

    .line 137
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 141
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 142
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 147
    :cond_2
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .local v3, "end":I
    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 148
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 147
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_4
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    if-ltz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 153
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v4

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 152
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 160
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v2, v5

    .line 327
    .local v2, "N":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v3, v5

    .line 328
    .local v3, "array":[Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_2

    .line 329
    const/4 v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 330
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 331
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    .line 341
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :goto_1
    return v0

    .line 329
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 341
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 335
    .end local v4    # "i":I
    :cond_2
    const/4 v5, 0x1

    move v4, v5

    .restart local v4    # "i":I
    :goto_2
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 336
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_1

    .line 335
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 415
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v9

    .line 418
    .local v3, "osize":I
    move-object v9, v1

    if-nez v9, :cond_0

    .line 419
    const/4 v9, 0x0

    move v4, v9

    .line 420
    .local v4, "hash":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v9

    move v5, v9

    .line 425
    .local v5, "index":I
    :goto_0
    move v9, v5

    if-ltz v9, :cond_1

    .line 426
    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 427
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 428
    .local v6, "old":Ljava/lang/Object;, "TV;"
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    move-object v11, v2

    aput-object v11, v9, v10

    .line 429
    move-object v9, v6

    move-object v0, v9

    .line 473
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    .end local v6    # "old":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v0

    .line 422
    .end local v4    # "hash":I
    .end local v5    # "index":I
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    move v4, v9

    .line 423
    .restart local v4    # "hash":I
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-virtual {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v9

    move v5, v9

    .restart local v5    # "index":I
    goto :goto_0

    .line 432
    :cond_1
    move v9, v5

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 433
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v10, v10

    if-lt v9, v10, :cond_6

    .line 434
    move v9, v3

    const/16 v10, 0x8

    if-lt v9, v10, :cond_2

    move v9, v3

    move v10, v3

    const/4 v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    :goto_2
    move v6, v9

    .line 439
    .local v6, "n":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v7, v9

    .line 440
    .local v7, "ohashes":[I
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v8, v9

    .line 441
    .local v8, "oarray":[Ljava/lang/Object;
    move-object v9, v0

    move v10, v6

    invoke-direct {v9, v10}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 443
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v9, v10, :cond_4

    .line 444
    new-instance v9, Ljava/util/ConcurrentModificationException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 434
    .end local v6    # "n":I
    .end local v7    # "ohashes":[I
    .end local v8    # "oarray":[Ljava/lang/Object;
    :cond_2
    move v9, v3

    const/4 v10, 0x4

    if-lt v9, v10, :cond_3

    const/16 v9, 0x8

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    goto :goto_2

    .line 447
    .restart local v6    # "n":I
    .restart local v7    # "ohashes":[I
    .restart local v8    # "oarray":[Ljava/lang/Object;
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v9, v9

    if-lez v9, :cond_5

    .line 449
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v12, 0x0

    move-object v13, v7

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    move-object v9, v8

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v13, v8

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    :cond_5
    move-object v9, v7

    move-object v10, v8

    move v11, v3

    invoke-static {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 456
    .end local v6    # "n":I
    .end local v7    # "ohashes":[I
    .end local v8    # "oarray":[Ljava/lang/Object;
    :cond_6
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_7

    .line 459
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v3

    move v14, v5

    sub-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v14, v5

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    :cond_7
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v9, v10, :cond_8

    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v10, v10

    if-lt v9, v10, :cond_9

    .line 465
    :cond_8
    new-instance v9, Ljava/util/ConcurrentModificationException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 469
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v10, v5

    move v11, v4

    aput v11, v9, v10

    .line 470
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    .line 471
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    .line 472
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 473
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public putAll(Landroidx/collection/SimpleArrayMap;)V
    .locals 10
    .param p1    # Landroidx/collection/SimpleArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "array":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<+TK;+TV;>;"
    move-object v4, v1

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v2, v4

    .line 482
    .local v2, "N":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    .line 483
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v4, :cond_1

    .line 484
    move v4, v2

    if-lez v4, :cond_0

    .line 485
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 494
    :cond_0
    return-void

    .line 490
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 491
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 505
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 506
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 509
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move/from16 v1, p1

    .local v1, "index":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v2, v8

    .line 519
    .local v2, "old":Ljava/lang/Object;
    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v8

    .line 521
    .local v3, "osize":I
    move v8, v3

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    .line 524
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v3

    invoke-static {v8, v9, v10}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 525
    move-object v8, v0

    sget-object v9, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v9, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 526
    move-object v8, v0

    sget-object v9, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v9, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 527
    const/4 v8, 0x0

    move v4, v8

    .line 570
    .local v4, "nsize":I
    :goto_0
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v8, v9, :cond_7

    .line 571
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 529
    .end local v4    # "nsize":I
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 530
    .restart local v4    # "nsize":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    const/16 v9, 0x8

    if-le v8, v9, :cond_5

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v9, v9

    const/4 v10, 0x3

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    .line 534
    move v8, v3

    const/16 v9, 0x8

    if-le v8, v9, :cond_1

    move v8, v3

    move v9, v3

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    move v5, v8

    .line 538
    .local v5, "n":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v6, v8

    .line 539
    .local v6, "ohashes":[I
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v7, v8

    .line 540
    .local v7, "oarray":[Ljava/lang/Object;
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 542
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v8, v9, :cond_2

    .line 543
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 534
    .end local v5    # "n":I
    .end local v6    # "ohashes":[I
    .end local v7    # "oarray":[Ljava/lang/Object;
    :cond_1
    const/16 v8, 0x8

    goto :goto_1

    .line 546
    .restart local v5    # "n":I
    .restart local v6    # "ohashes":[I
    .restart local v7    # "oarray":[Ljava/lang/Object;
    :cond_2
    move v8, v1

    if-lez v8, :cond_3

    .line 548
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v11, 0x0

    move v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v11, 0x0

    move v12, v1

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    :cond_3
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 554
    move-object v8, v6

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v11, v1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    :cond_4
    goto/16 :goto_0

    .line 559
    .end local v5    # "n":I
    .end local v6    # "ohashes":[I
    .end local v7    # "oarray":[Ljava/lang/Object;
    :cond_5
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_6

    .line 562
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v11, v1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 567
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    goto/16 :goto_0

    .line 573
    :cond_7
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 574
    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 393
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 394
    .local v3, "old":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 395
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    const-string/jumbo v5, "{}"

    move-object v0, v5

    .line 700
    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    .local v1, "buffer":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 679
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .restart local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 680
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "i":I
    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v5, v6, :cond_4

    .line 682
    move v5, v2

    if-lez v5, :cond_1

    .line 683
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 685
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 686
    .local v3, "key":Ljava/lang/Object;
    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 687
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 691
    :goto_2
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 692
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 693
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_3

    .line 694
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 689
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 696
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 699
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<TK;TV;>;"
    return-object v0
.end method
