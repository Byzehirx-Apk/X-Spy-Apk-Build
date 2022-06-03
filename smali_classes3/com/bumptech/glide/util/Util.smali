.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/Util$1;
    }
.end annotation


# static fields
.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_1_CHARS:[C

.field private static final SHA_256_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    .line 22
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    .line 24
    const/16 v0, 0x28

    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/Util;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static assertBackgroundThread()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "YOu must call this method on a background thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method public static assertMainThread()V
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "You must call this method on the main thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, p1

    .local v1, "hexChars":[C
    const/4 v4, 0x0

    move v3, v4

    .local v3, "j":I
    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 53
    move-object v4, v0

    move v5, v3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v2, v4

    .line 54
    .local v2, "v":I
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    move v7, v2

    const/4 v8, 0x4

    ushr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 55
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    move v7, v2

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    move-object v0, v4

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    move v0, p0

    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayDeque;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v0, v1

    .end local v0    # "size":I
    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .locals 5

    .prologue
    .line 94
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    move-object v2, p2

    .local v2, "config":Landroid/graphics/Bitmap$Config;
    move v3, v0

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v2

    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v4

    mul-int/2addr v3, v4

    move v0, v3

    .end local v0    # "width":I
    return v0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 81
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v0

    .line 82
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "config":Landroid/graphics/Bitmap$Config;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 100
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v2

    .line 104
    :cond_0
    sget-object v2, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 114
    const/4 v2, 0x4

    move v1, v2

    .line 116
    .local v1, "bytesPerPixel":I
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    return v0

    .line 106
    .end local v1    # "bytesPerPixel":I
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    :pswitch_0
    const/4 v2, 0x1

    move v1, v2

    .line 107
    .restart local v1    # "bytesPerPixel":I
    goto :goto_0

    .line 110
    .end local v1    # "bytesPerPixel":I
    :pswitch_1
    const/4 v2, 0x2

    move v1, v2

    .line 111
    .restart local v1    # "bytesPerPixel":I
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    move v0, v1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    return v0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "other":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 179
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 180
    .local v3, "item":Ljava/lang/Object;, "TT;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 181
    goto :goto_0

    .line 182
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "other":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-object v0
.end method

.method public static isOnBackgroundThread()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidDimension(I)Z
    .locals 3

    .prologue
    .line 127
    move v0, p0

    .local v0, "dimen":I
    move v1, v0

    if-gtz v1, :cond_0

    move v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "dimen":I
    return v0

    .restart local v0    # "dimen":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidDimensions(II)Z
    .locals 3

    .prologue
    .line 123
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    move v2, v0

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "width":I
    return v0

    .restart local v0    # "width":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sha1BytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "bytes":[B
    sget-object v3, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 44
    move-object v3, v0

    :try_start_0
    sget-object v4, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "bytes":[B
    return-object v0

    .line 45
    .restart local v0    # "bytes":[B
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "bytes":[B
    sget-object v3, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 35
    move-object v3, v0

    :try_start_0
    sget-object v4, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "bytes":[B
    return-object v0

    .line 36
    .restart local v0    # "bytes":[B
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
