.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final MAX_SIZE_MULTIPLE:I = 0x8

.field private static final RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap",
            "<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 46
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 172
    return-void
.end method

.method static synthetic access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    move v0, p0

    .local v0, "x0":I
    move-object v1, p1

    .local v1, "x1":Landroid/graphics/Bitmap$Config;
    move v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":I
    return-object v0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
    .locals 9

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "size":Ljava/lang/Integer;
    move-object v2, p2

    .local v2, "config":Landroid/graphics/Bitmap$Config;
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    move-object v3, v5

    .line 107
    .local v3, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 108
    .local v4, "current":Ljava/lang/Integer;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 109
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object v5, v3

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method private findBestKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 14

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move/from16 v2, p2

    .local v2, "size":I
    move-object/from16 v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v11, v1

    move-object v4, v11

    .line 80
    .local v4, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v11, v3

    invoke-static {v11}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v11

    move-object v5, v11

    .local v5, "arr$":[Landroid/graphics/Bitmap$Config;
    move-object v11, v5

    array-length v11, v11

    move v6, v11

    .local v6, "len$":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i$":I
    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_1

    move-object v11, v5

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 81
    .local v8, "possibleConfig":Landroid/graphics/Bitmap$Config;
    move-object v11, v0

    move-object v12, v8

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v11

    move-object v9, v11

    .line 82
    .local v9, "sizesForPossibleConfig":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v11, v9

    move v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    move-object v10, v11

    .line 83
    .local v10, "possibleSize":Ljava/lang/Integer;
    move-object v11, v10

    if-eqz v11, :cond_3

    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v2

    const/16 v13, 0x8

    mul-int/lit8 v12, v12, 0x8

    if-gt v11, v12, :cond_3

    .line 84
    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v2

    if-ne v11, v12, :cond_0

    move-object v11, v8

    if-nez v11, :cond_2

    move-object v11, v3

    if-eqz v11, :cond_1

    .line 86
    :cond_0
    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 87
    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v13, v8

    invoke-virtual {v11, v12, v13}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v11

    move-object v4, v11

    .line 92
    .end local v8    # "possibleConfig":Landroid/graphics/Bitmap$Config;
    .end local v9    # "sizesForPossibleConfig":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "possibleSize":Ljava/lang/Integer;
    :cond_1
    move-object v11, v4

    move-object v0, v11

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0

    .line 84
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    .restart local v8    # "possibleConfig":Landroid/graphics/Bitmap$Config;
    .restart local v9    # "sizesForPossibleConfig":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10    # "possibleSize":Ljava/lang/Integer;
    :cond_2
    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    .line 80
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    move v0, p0

    .local v0, "size":I
    move-object v1, p1

    .local v1, "config":Landroid/graphics/Bitmap$Config;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "size":I
    return-object v0
.end method

.method private static getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "requested":Landroid/graphics/Bitmap$Config;
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap$Config;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "requested":Landroid/graphics/Bitmap$Config;
    :goto_0
    return-object v0

    .line 227
    .restart local v0    # "requested":Landroid/graphics/Bitmap$Config;
    :pswitch_0
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0

    .line 231
    :pswitch_2
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0

    .line 233
    :pswitch_3
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "config":Landroid/graphics/Bitmap$Config;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/NavigableMap;

    move-object v2, v3

    .line 117
    .local v2, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 118
    new-instance v3, Ljava/util/TreeMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v3

    .line 119
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v8

    move v4, v8

    .line 65
    .local v4, "size":I
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move v9, v4

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v8

    move-object v5, v8

    .line 66
    .local v5, "targetKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v8, v0

    move-object v9, v5

    move v10, v4

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->findBestKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v8

    move-object v6, v8

    .line 68
    .local v6, "bestKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    move-object v7, v8

    .line 69
    .local v7, "result":Landroid/graphics/Bitmap;
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 71
    move-object v8, v0

    move-object v9, v7

    invoke-static {v9}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 72
    move-object v8, v7

    move v9, v1

    move v10, v2

    move-object v11, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object v11, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    :goto_0
    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 75
    :cond_0
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0

    .line 72
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return v0
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v5

    move v4, v5

    .line 133
    .local v4, "size":I
    move v5, v4

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v3

    move v2, v3

    .line 127
    .local v2, "size":I
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v6, v1

    invoke-static {v6}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v6

    move v2, v6

    .line 53
    .local v2, "size":I
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v6

    move-object v3, v6

    .line 55
    .local v3, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 57
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v6

    move-object v4, v6

    .line 58
    .local v4, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v6, v4

    move-object v7, v3

    invoke-static {v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v5, v6

    .line 59
    .local v5, "current":Ljava/lang/Integer;
    move-object v6, v4

    move-object v7, v3

    invoke-static {v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v5

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    return-void

    .line 59
    :cond_0
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    .line 98
    .local v1, "removed":Landroid/graphics/Bitmap;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v3

    move v2, v3

    .line 100
    .local v2, "removedSize":I
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 102
    .end local v2    # "removedSize":I
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SizeConfigStrategy{groupedMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sortedSizes=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v4

    .line 147
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 148
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    goto :goto_0

    .line 150
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string/jumbo v7, ""

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, ")}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
    return-object v0
.end method
