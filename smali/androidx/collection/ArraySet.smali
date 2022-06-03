.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mCollections:Landroidx/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/collection/ArraySet;->INT:[I

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 244
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 251
    move v2, v1

    if-nez v2, :cond_0

    .line 252
    move-object v2, v0

    sget-object v3, Landroidx/collection/ArraySet;->INT:[I

    iput-object v3, v2, Landroidx/collection/ArraySet;->mHashes:[I

    .line 253
    move-object v2, v0

    sget-object v3, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 257
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/ArraySet;->mSize:I

    .line 258
    return-void

    .line 255
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 4
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "set":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 265
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 268
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 275
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 276
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 278
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 15

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move/from16 v1, p1

    .local v1, "size":I
    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 164
    const-class v6, Landroidx/collection/ArraySet;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 165
    :try_start_0
    sget-object v6, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 166
    sget-object v6, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 167
    .local v3, "array":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 168
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 169
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/ArraySet;->mHashes:[I

    .line 170
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

    .line 171
    sget v6, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 176
    move-object v6, v2

    monitor-exit v6

    .line 199
    .end local v3    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    :goto_1
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/collection/ArraySet;->mHashes:[I

    .line 198
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 199
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
    const-class v6, Landroidx/collection/ArraySet;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 181
    :try_start_2
    sget-object v6, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 182
    sget-object v6, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 183
    .restart local v3    # "array":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 184
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 185
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/ArraySet;->mHashes:[I

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
    sget v6, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 192
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 194
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

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 203
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

    .line 204
    const-class v7, Landroidx/collection/ArraySet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 205
    :try_start_0
    sget v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 206
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 207
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 208
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 209
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 208
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 211
    :cond_0
    move-object v7, v1

    sput-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 212
    sget v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 218
    .end local v4    # "i":I
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 236
    :cond_2
    :goto_1
    return-void

    .line 218
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 219
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 220
    const-class v7, Landroidx/collection/ArraySet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 221
    :try_start_1
    sget v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 222
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 223
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 224
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .restart local v4    # "i":I
    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 225
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 224
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 227
    :cond_4
    move-object v7, v1

    sput-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 228
    sget v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 234
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

.method private getCollection()Landroidx/collection/MapCollections;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    if-nez v1, :cond_0

    .line 667
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArraySet$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/collection/ArraySet$1;-><init>(Landroidx/collection/ArraySet;)V

    iput-object v2, v1, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    .line 714
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move v2, p2

    .local v2, "hash":I
    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    move v3, v7

    .line 89
    .local v3, "N":I
    move v7, v3

    if-nez v7, :cond_0

    .line 90
    const/4 v7, -0x1

    move v0, v7

    .line 120
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_0
    return v0

    .line 93
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v3

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v4, v7

    .line 96
    .local v4, "index":I
    move v7, v4

    if-gez v7, :cond_1

    .line 97
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 101
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 107
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

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 108
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 107
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
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

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 113
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 112
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 120
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private indexOfNull()I
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v1, v5

    .line 127
    .local v1, "N":I
    move v5, v1

    if-nez v5, :cond_0

    .line 128
    const/4 v5, -0x1

    move v0, v5

    .line 158
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_0
    return v0

    .line 131
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v5

    move v2, v5

    .line 134
    .local v2, "index":I
    move v5, v2

    if-gez v5, :cond_1

    .line 135
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 139
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 140
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 145
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

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 146
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v3

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 145
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
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

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 151
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 150
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 158
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TE;"
    move-object v7, v1

    if-nez v7, :cond_0

    .line 363
    const/4 v7, 0x0

    move v2, v7

    .line 364
    .local v2, "hash":I
    move-object v7, v0

    invoke-direct {v7}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v7

    move v3, v7

    .line 369
    .local v3, "index":I
    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    .line 370
    const/4 v7, 0x0

    move v0, v7

    .line 405
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_1
    return v0

    .line 366
    .end local v2    # "hash":I
    .end local v3    # "index":I
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    move v2, v7

    .line 367
    .restart local v2    # "hash":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v7

    move v3, v7

    .restart local v3    # "index":I
    goto :goto_0

    .line 373
    :cond_1
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 374
    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 375
    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_5

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    const/4 v9, 0x1

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    :goto_2
    move v4, v7

    .line 380
    .local v4, "n":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v5, v7

    .line 381
    .local v5, "ohashes":[I
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v6, v7

    .line 382
    .local v6, "oarray":[Ljava/lang/Object;
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 384
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_2

    .line 386
    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v10, 0x0

    move-object v11, v5

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v11, v6

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_2
    move-object v7, v5

    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v7, v8, v9}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 393
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_3
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    if-ge v7, v8, :cond_4

    .line 398
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mHashes:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/ArraySet;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/ArraySet;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v3

    move v9, v2

    aput v9, v7, v8

    .line 403
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v1

    aput-object v9, v7, v8

    .line 404
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/ArraySet;->mSize:I

    .line 405
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_1

    .line 375
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/4 v8, 0x4

    if-lt v7, v8, :cond_6

    const/16 v7, 0x8

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x4

    goto/16 :goto_2
.end method

.method public addAll(Landroidx/collection/ArraySet;)V
    .locals 9
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    move-object v4, v1

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    move v2, v4

    .line 443
    .local v2, "N":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 444
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-nez v4, :cond_1

    .line 445
    move v4, v2

    if-lez v4, :cond_0

    .line 446
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/collection/ArraySet;->mSize:I

    .line 455
    :cond_0
    return-void

    .line 451
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 452
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 753
    const/4 v5, 0x0

    move v2, v5

    .line 754
    .local v2, "added":Z
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 755
    .local v4, "value":Ljava/lang/Object;, "TE;"
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 756
    goto :goto_0

    .line 757
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    move v2, v4

    .line 416
    .local v2, "index":I
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 417
    .local v3, "hash":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 418
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Array is full"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    .end local v3    # "hash":I
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    .line 420
    .restart local v3    # "hash":I
    :cond_1
    move v4, v2

    if-lez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move v5, v3

    if-le v4, v5, :cond_2

    .line 429
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 430
    .line 435
    :goto_1
    return-void

    .line 432
    :cond_2
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/collection/ArraySet;->mSize:I

    .line 433
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 434
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    .line 435
    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v1, :cond_0

    .line 286
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v2, v3}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 287
    move-object v1, v0

    sget-object v2, Landroidx/collection/ArraySet;->INT:[I

    iput-object v2, v1, Landroidx/collection/ArraySet;->mHashes:[I

    .line 288
    move-object v1, v0

    sget-object v2, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v2, v1, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 289
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/collection/ArraySet;->mSize:I

    .line 291
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 738
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    const/4 v3, 0x0

    move v0, v3

    .line 743
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 9

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move v1, p1

    .local v1, "minimumCapacity":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v4, v4

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 299
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v2, v4

    .line 300
    .local v2, "ohashes":[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v3, v4

    .line 301
    .local v3, "oarray":[Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 302
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-lez v4, :cond_0

    .line 303
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :cond_0
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 308
    .end local v2    # "ohashes":[I
    .end local v3    # "oarray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 592
    const/4 v5, 0x1

    move v0, v5

    .line 614
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_0
    return v0

    .line 594
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 595
    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    move-object v2, v5

    .line 596
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/ArraySet;->size()I

    move-result v5

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 597
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 601
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    if-ge v5, v6, :cond_3

    .line 602
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 603
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 604
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 601
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    .line 612
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 607
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 608
    .local v3, "ignored":Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 609
    .local v3, "i":I
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 610
    .local v3, "ignored":Ljava/lang/ClassCastException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 614
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v3    # "ignored":Ljava/lang/ClassCastException;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v1, v5

    .line 623
    .local v1, "hashes":[I
    const/4 v5, 0x0

    move v2, v5

    .line 624
    .local v2, "result":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v4, v5

    .local v4, "s":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 625
    move v5, v2

    move-object v6, v1

    move v7, v3

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v2, v5

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 466
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 467
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 468
    const/4 v3, 0x1

    move v0, v3

    .line 470
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Landroidx/collection/ArraySet;)Z
    .locals 8
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    move-object v5, v1

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v2, v5

    .line 542
    .local v2, "N":I
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v3, v5

    .line 543
    .local v3, "originalSize":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 544
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 543
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    :cond_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v5, 0x0

    move v2, v5

    .line 768
    .local v2, "removed":Z
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 769
    .local v4, "value":Ljava/lang/Object;
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 770
    goto :goto_0

    .line 771
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v1

    aget-object v6, v6, v7

    move-object v2, v6

    .line 480
    .local v2, "old":Ljava/lang/Object;
    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 483
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v6, v7, v8}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 484
    move-object v6, v0

    sget-object v7, Landroidx/collection/ArraySet;->INT:[I

    iput-object v7, v6, Landroidx/collection/ArraySet;->mHashes:[I

    .line 485
    move-object v6, v0

    sget-object v7, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v7, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 486
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/collection/ArraySet;->mSize:I

    .line 526
    :goto_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0

    .line 488
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v7, v7

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_4

    .line 492
    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    :goto_1
    move v3, v6

    .line 496
    .local v3, "n":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v4, v6

    .line 497
    .local v4, "ohashes":[I
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v5, v6

    .line 498
    .local v5, "oarray":[Ljava/lang/Object;
    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 500
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/collection/ArraySet;->mSize:I

    .line 501
    move v6, v1

    if-lez v6, :cond_1

    .line 503
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    :cond_1
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    if-ge v6, v7, :cond_2

    .line 511
    move-object v6, v4

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/collection/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    move-object v6, v5

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/collection/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    :cond_2
    goto :goto_0

    .line 492
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x8

    goto :goto_1

    .line 515
    :cond_4
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/collection/ArraySet;->mSize:I

    .line 516
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    if-ge v6, v7, :cond_5

    .line 520
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/collection/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/collection/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto/16 :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    move v2, v4

    .line 783
    .local v2, "removed":Z
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 784
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 786
    const/4 v4, 0x1

    move v2, v4

    .line 783
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 789
    :cond_1
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArraySet;->mSize:I

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    .line 561
    .local v1, "result":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-ge v3, v4, :cond_0

    .line 569
    move-object v3, v1

    .line 570
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 571
    .local v2, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object v3, v2

    move-object v1, v3

    .line 573
    .end local v2    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-le v3, v4, :cond_1

    .line 575
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 577
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    const-string/jumbo v4, "{}"

    move-object v0, v4

    .line 657
    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local v1, "buffer":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 643
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .restart local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    const/16 v7, 0xe

    mul-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 644
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    move-object v4, v1

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 645
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    if-ge v4, v5, :cond_3

    .line 646
    move v4, v2

    if-lez v4, :cond_1

    .line 647
    move-object v4, v1

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 649
    :cond_1
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 650
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_2

    .line 651
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 645
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "(this Set)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 656
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    move-object v4, v1

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 657
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    return-object v0
.end method
